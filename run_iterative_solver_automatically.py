# This file is to run iterative_solver for several .sk filesautomatically

# TODO: now we only consider the case where the group size is 1
#       we will improve the functionality later

import subprocess
import sys

def main(argv):
    """Main program."""
    if len(argv) != 8 :
        print("Usage: python3 " + argv[0] + " <chipmunk program filename> <total num of files> <stateful alu file> <stateless alu file> " +
              "<number of pipeline stages> " +
              "<number of stateless/stateful ALUs per stage> " +
              "<input bits>")
        sys.exit(1)
    chipmunk_file_name = str(argv[1])
    total_num_of_files = int(argv[2])
    stateful_alu_file = str(argv[3])
    stateless_alu_file = str(argv[4])
    num_pipeline_stages = str(argv[5])
    num_alus_per_stage = str(argv[6])
    input_bits = str(argv[7])
    Sum = 0
    # Run total_num_of_files mutators of chipmunk_file_name
    for i in range(total_num_of_files):
        chipmunk_file = "/tmp/" + chipmunk_file_name + "_equivalent_" + str(i+1) + ".c"
        content_in_cmd_line = "python3 compile_with_chipmunk.py " + \
                              chipmunk_file + " " +\
                              str(total_num_of_files) + " " + \
                              stateful_alu_file + " " + \
                              stateless_alu_file + " " + \
                              num_pipeline_stages + " " + \
                              num_alus_per_stage + " " + \
                              input_bits

        print(content_in_cmd_line)
        (ret_code, output) = subprocess.getstatusoutput(content_in_cmd_line)
        if (ret_code == 0):
            print("Success")
            Sum += 1
    print("The successful compilation rate for " + chipmunk_file_name +
      " mutators by iterative_solver is " + str(Sum/total_num_of_files))

if __name__ == "__main__":
    main(sys.argv)
