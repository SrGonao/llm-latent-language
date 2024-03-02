#!/bin/bash

for type in 'logit' 'tuned' 
do
  for size in '12b'
  do
    for input in  'fr' 'de' 'ru' 'en' 
    do 
       for output in  'fr' 'de' 'ru' 'en'
       do 
           echo "size: $size, input: $input, output: $output, type: $type"
           papermill Translation_pythia.ipynb visuals/executed_notebooks/pythia_Translation_${type}_${size}_${input}_${output}.ipynb -p model_size $size -p target_lang $output -p input_lang $input -p type $type
       done 
    done 
  done 

  for size in  '12b'
  do
   for output in  'fr' 'de' 'ru' 'en'
   do 
       echo "size: $size, output: $output"
       papermill Cloze_pythia.ipynb visuals/executed_notebooks/pythia_Cloze_${type}_${size}_${output}.ipynb -p model_size $size -p target_lang $output -p type $type
   done
  done
done
