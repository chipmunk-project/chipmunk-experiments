# domino.c --- (canonocalizer) ---> canonicalizer_file.c --- (grouper)
#  ---> a_group_of_domino_files.cc --- (domino_to_chipmunk) ---> .sk files
#  ---> run iterative_solver on each .sk file

import sys
import re
import subprocess


def main(argv):
    """Main program."""
    if len(argv) != 8 :
        print("Usage: python3 " + argv[0] + " <domino program file> <group size> <stateful alu file> <stateless alu file> " +
              "<number of pipeline stages> " +
              "<number of stateless/stateful ALUs per stage> " +
              "<input bits>")
        exit(1)
    # program_file means the original domino program
    program_file = str(argv[1])
    group_size = str(argv[2])
    stateful_alu_file = str(argv[3])
    stateless_alu_file = str(argv[4])
    num_pipeline_stages = str(argv[5])
    num_alus_per_stage = str(argv[6])
    input_bits = str(argv[7])

    # Run canonicalizer
    (ret_code,
     output) = subprocess.getstatusoutput("canonicalizer " + program_file)
    # Output canonicalizer file to /tmp/file_name_canonicalizer.c
    canonicalizer_file ="/tmp/" + program_file[program_file.rfind('/') + 1 : program_file.rfind('.')] + "_canonicalizer.c"
    with open(canonicalizer_file, 'w') as file:
        file.write(output)
    # Run grouper to generate files with different group strategies output to /tmp folder
    # the name of group_files is /tmp/<file_name>_equivalent_(/d).c
    (ret_code,
     output) = subprocess.getstatusoutput("grouper " + canonicalizer_file +
                                          " " + group_size)
    print(output)
    # Output restore the total number of group files
    # the name of group_files is /tmp/<file_name>_canonicalizer_equivalent_(/d).sk
    total_num_of_grouped_files = int(output)
    for i in range(total_num_of_grouped_files):
        group_file = "/tmp/" + canonicalizer_file[canonicalizer_file.rfind(
            '/') + 1:canonicalizer_file.rfind('.')] + "_equivalent_" + str(i) + ".c"
        (ret_code, output) = subprocess.getstatusoutput("domino_to_chipmunk " +
                                                        group_file)
        chipmunk_file = group_file[:group_file.rfind('.')] + ".sk"
        with open(chipmunk_file, 'w') as file:
            file.write(output)
    # Run iterative solver for grouped files
    for i in range(total_num_of_grouped_files):
        sketch_file_name = "/tmp/" + canonicalizer_file[canonicalizer_file.rfind(
            '/') + 1:canonicalizer_file.rfind('.')] + "_equivalent_" + str(i) +".sk"
        # Print the current situation
        print("Current compilation file is " + sketch_file_name)
        # Get the string to run in terminal
        str_to_run_in_terminal = "iterative_solver " + sketch_file_name + " " + stateful_alu_file + " " + stateless_alu_file + " " + \
                                 num_pipeline_stages + " " + num_alus_per_stage + " " + input_bits + " --parallel-sketch --synthesized-allocation"
        (ret_code, output) = subprocess.getstatusoutput(str_to_run_in_terminal)
        iterative_solver_output_file_name = '/tmp/' + \
					    sketch_file_name[sketch_file_name.rfind('/') + 1:sketch_file_name.rfind('.')] + '_' + \
                                            'with_stateful_alu' + '_' + \
                                            stateful_alu_file[stateful_alu_file.rfind('/') + 1:stateful_alu_file.rfind('.')] + '_' + \
                                            'with_stateless_alu' + '_' + \
                                            stateless_alu_file[stateless_alu_file.rfind('/') + 1:stateless_alu_file.rfind('.')] + \
                                            '_' + num_pipeline_stages + '_' + num_alus_per_stage + '_with_synthesized_allocation' + \
                                            '.output'
        with open(iterative_solver_output_file_name, 'w') as file:
            file.write(output)
        # It will return 0 if one of the grouped files get successful compilation
        if (ret_code == 0):
          print("Compilation succeeds for Program: " + program_file[program_file.rfind('/') + 1:] + ", with stateful alu: " + stateful_alu_file + "and stateless alu: " + stateless_alu_file + ", with grid size: " + num_pipeline_stages + " * " + num_alus_per_stage)
          sys.exit(0)

    print("Compilation fails for Program: " + program_file[program_file.rfind('/') + 1:] + ", with alu: " + stateful_alu_file + "and stateless alu: " + stateless_alu_file + ", with grid size: " + num_pipeline_stages + " * " + num_alus_per_stage)
    sys.exit(1)

if __name__ == "__main__":
    main(sys.argv)
