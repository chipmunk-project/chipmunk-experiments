domino_program=${1?Input domino_program}
alu=${2?Input alu}
pipeline_len=${3?Input pipeline_len}
pipeline_width=${4?Input pipeline_width}

domino_to_chipmunk $domino_program > /tmp/tmp.sk

Output_result=$(chipmunk /tmp/tmp.sk $pipeline_len $pipeline_width codegen sample1)

if [[ $Output_result == *"Sketch succeeded"* ]]; then
  echo "yes"
else
  echo "no"
fi
