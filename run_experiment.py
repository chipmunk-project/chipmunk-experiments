import sys
import re
import subprocess

def main(argv):
    """Main program."""
    relative_address = "~/chipmunk_experiments/domino_programs/"
    program_list = ["avq.c", "blue_decrease.c","blue_increase.c", "codel.c","conga.c","dns_ttl_change.c","flowlets.c","flowlets_intuitive.c","ftp_monitoring.c",
                    "hash_pipe_first_stage.c","hash_pipe_second_stage.c","heavy_hitters.c","hula_forwarding.c","hula_probe.c","hull.c","learn_filter.c","many_ip_domains.c",
                    "marple_new_flow.c","marple_tcp_nmo.c","rcp.c","red.c","sampling.c","sampling_revised.c","snap_heavy_hitter.c","spam-detection.c","stateful_fw.c","stfq.c",
                    "superspreader.c","trTCM.c","trTCM_sat_core.c","trTCM_unsat_core.c"]
    if len(argv) != 8 :
        print("Usage: python3 " + argv[0] + " <group size> <alu file> <number of pipeline stages> " +
              "<number of stateless/stateful ALUs per stage> " +
              "<sketch_name (w/o file extension)> <parallel/serial> " +
              "<cex_mode/hole_elimination_mode>")
        exit(1)
    for i in range(len(program_list)):
      # program_file means the original domino program
      program_file = relative_address + program_list[i]
      group_size = str(argv[1])
      alu_file = str(argv[2])
      num_pipeline_stages = str(argv[3])
      num_alus_per_stage = str(argv[4])
      sketch_name = str(argv[5])
      parallel_or_serial = str(argv[6])
      mode = str(argv[7])

      # Run compile_with_chipmunk.py
      (ret_code,output) = subprocess.getstatusoutput("python3 compile_with_chipmunk.py " + program_file + " " + group_size + " " + alu_file + " " + num_pipeline_stages + " " + num_alus_per_stage + " " + sketch_name + " " + parallel_or_serial + " " + mode)
      print(output)

if __name__ == "__main__":
    main(sys.argv)
