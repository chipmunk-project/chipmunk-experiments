start=$SECONDS
domino_program=${1?Input domino_program}
alu=${2?Input alu}
pipeline_len=${3?Input pipeline_len}
pipeline_width=${4?Input pipeline_width}
chipmunk_folder=${5?Input chipmunk_folder}

domino_to_chipmunk $domino_program > /tmp/tmp.sk

cd $chipmunk_folder
Output_result=$(python3 chipmunk.py /tmp/tmp.sk $alu $pipeline_len $pipeline_width codegen sample1)

echo -e "\n\nCompilation result:"
if [[ $Output_result == *"Sketch succeeded"* ]]; then
  echo "yes; output:"
  echo -e $Output_result
else
  echo "no; output:"
  echo -e $Output_result
fi

end=$SECONDS
echo "duration: $((end-start)) seconds."
