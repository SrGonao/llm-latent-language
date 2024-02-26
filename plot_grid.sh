#!/bin/bash

for type in 'logit' 'tuned' 'tuned-chinese' 'tuned-chinese-en'
do
  for size in '7b' '13b'
  do
    for input in 'zh' 'fr' 'de' 'ru' 'en' 
    do 
       for output in 'zh' 'fr' 'de' 'ru' 'en'
       do 
           echo "size: $size, input: $input, output: $output, type: $type"
           papermill Translation.ipynb visuals/executed_notebooks/Translation_${type}_${size}_${input}_${output}.ipynb -p model_size $size -p target_lang $output -p input_lang $input -p type $type
       done 
    done 
  done 

  for size in  '7b' '13b'
  do
   for output in 'zh' 'fr' 'de' 'ru' 'en'
   do 
       echo "size: $size, output: $output"
       papermill Cloze.ipynb visuals/executed_notebooks/Cloze_${type}_${size}_${output}.ipynb -p model_size $size -p target_lang $output -p type $type
   done
  done
done
