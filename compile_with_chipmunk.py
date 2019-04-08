# domino.c --- (canonocalizer) ---> canonicalizer_file.c --- (grouper)
#  ---> a_group_of_domino_files.cc --- (domino_to_chipmunk) ---> .sk files

import sys
import re
import subprocess


def main(argv):
    """Main program."""
    if len(argv) != 9 :
        print("Usage: python3 " + argv[0] + " <program file> <group size> <alu file> <number of pipeline stages> " +
              "<number of stateless/stateful ALUs per stage> " +
              "<sketch_name (w/o file extension)> <parallel/serial> " +
              "<cex_mode/hole_elimination_mode>")
        exit(1)
    # program_file means the original domino program
    program_file = str(argv[1])
    group_size = str(argv[2])
    alu_file = str(argv[3])
    num_pipeline_stages = str(argv[4])
    num_alus_per_stage = str(argv[5])
    sketch_name = str(argv[6])
    parallel_or_serial = str(argv[7])
    mode = str(argv[8])

    # Run canonicalizer
    (ret_code,
     output) = subprocess.getstatusoutput("canonicalizer " + program_file)
    # Output canonicalizer file to /tmp/file_name.cc
    canonicalizer_file = "/tmp/" + program_file[program_file.rfind('/') + 1:]
    with open(canonicalizer_file, 'w') as file:
        file.write(output)
    # Run grouper to generate files with different group strategies output to /tmp folder
    # the name of group_files is /tmp/<file_name>_equivalent_(/d).c
    (ret_code,
     output) = subprocess.getstatusoutput("grouper " + canonicalizer_file +
                                          " " + group_size)
    # Output restore the total number of group files
    # the name of group_files is /tmp/<file_name>_equivalent_(/d).sk
    total_num_of_grouped_files = int(output)
    for i in range(total_num_of_grouped_files):
        group_file = "/tmp/" + program_file[program_file.rfind(
            '/') + 1:program_file.rfind('.')] + "_equivalent_" + str(i) + ".c"
        (ret_code, output) = subprocess.getstatusoutput("domino_to_chipmunk " +
                                                        group_file)
        chipmunk_file = group_file[:group_file.rfind('.')] + ".sk"
        with open(chipmunk_file, 'w') as file:
            file.write(output)
    
    # Run iterative solver for grouped files
    for i in range(total_num_of_grouped_files):
        sketch_file_name = "/tmp/" + program_file[program_file.rfind(
            '/') + 1:program_file.rfind('.')] + "_equivalent_" + str(i) + ".sk"
        # Print the current situation
        print("Current compilation file is " + sketch_file_name)
        # Get the string to run in terminal
        str_to_run_in_terminal = "iterative_solver " + sketch_file_name + " " + alu_file + " " + num_pipeline_stages + " " + num_alus_per_stage + " " + sketch_name + " " + parallel_or_serial + " " + mode
        print(str_to_run_in_terminal)
        (ret_code, _) = subprocess.getstatusoutput(str_to_run_in_terminal)
        if (ret_code == 0):
          print("Compilation succeeds for Program: " + program_file[program_file.rfind('/') + 1:] + ", with alu: " + alu_file + ", with grid size: " + num_pipeline_stages + " * " + num_alus_per_stage)
          sys.exit(0)

    print("Compilation fails for Program: " + program_file[program_file.rfind('/') + 1:] + ", with alu: " + alu_file + ", with grid size: " + num_pipeline_stages + " * " + num_alus_per_stage)

if __name__ == "__main__":
    main(sys.argv)
