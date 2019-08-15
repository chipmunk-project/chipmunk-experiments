# chipmunk_experiment
test domino program with chipmunk

1. First install chipmunk (https://github.com/chipmunk-project/chipmunk).
2. Then install the master branch of the domino-compiler(https://github.com/chipmunk-project/domino-compiler)
3. Then run mutator on benchmarks to generate 10 semantically equivalent programs
   (e.g. mutator ~/chipmunk_experiments/domino_experiment_programs/rcp.c) 
4. Then run iterative_solver on all generated mutators
   (e.g. time python3 run_iterative_solver_automatically.py rcp 10 example_alus/pred_raw.stateful_alu stateless_alus/stateless_alu.j2 4 4 10)
#TODO: add run_domino_automatically.py to domino-examples repo
5. Then run domino on all generated mutators in domino-examples folder
   (e.g. python3 run_domino_automatically.py rcp banzai_atoms/pred_raw.sk 10)

# Note: August 15, 2019: The python script has been changed. So the above command lines need to be updated accordingly.
