# This file is to run iterative_solver for several .sk filesautomatically

# TODO: now we only consider the case where the group size is 1
#       we will improve the functionality later

import subprocess
import sys
import time

def main(argv):
    """Main program."""
    if len(argv) != 10 :
        print("Usage: python3 " + argv[0] + " <domino program filename> <total num of files> <group size> <stateful alu file> " +
              "<stateless alu file> " +
              "<number of pipeline stages> " +
              "<number of stateless/stateful ALUs per stage> " +
              "<input bits> " +
              "<bit_size_for_constant_set>")
        sys.exit(1)
    domino_file_name = str(argv[1])
    total_num_of_files = int(argv[2])
    group_size = str(argv[3])
    stateful_alu_file = str(argv[4])
    stateless_alu_file = str(argv[5])
    num_pipeline_stages = str(argv[6])
    num_alus_per_stage = str(argv[7])
    input_bits = str(argv[8])
    bit_size_for_constant_set = str(argv[9])
    Sum = 0
    # Run total_num_of_files mutators of domino_file_name
    for i in range(total_num_of_files):
        domino_file = "/tmp/" + domino_file_name + "_equivalent_" + str(i+1) + ".c"
        content_in_cmd_line = "python3 compile_with_chipmunk_with_synthesized_allocation.py " + \
                              domino_file + " " +\
                              group_size + " " + \
                              stateful_alu_file + " " + \
                              stateless_alu_file + " " + \
                              num_pipeline_stages + " " + \
                              num_alus_per_stage + " " + \
                              input_bits + " " + \
                              bit_size_for_constant_set

        print(content_in_cmd_line)
        start_time = time.time()
        (ret_code, output) = subprocess.getstatusoutput(content_in_cmd_line)
        end_time = time.time()
        print("time used for this compilation is " + str(end_time - start_time))
        if (ret_code == 0):
            print("Success")
            Sum += 1
        # Kill all the zombie processes for 5 times
        # TODO: figure out the best way to kill all the zombie processes
        for j in range(5):
            (ret_code, output) = subprocess.getstatusoutput("killall cegis")

    print("The successful compilation rate for " + domino_file_name +
      " mutators by iterative_solver is " + str(Sum/total_num_of_files))

if __name__ == "__main__":
    main(sys.argv)
