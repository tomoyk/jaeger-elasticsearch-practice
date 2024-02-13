#!/bin/bash

declare input_file_list=$(ls query.*)

for input_file in $input_file_list
do

output_file=$(echo $input_file | gsed 's/query./summary./g')

ggrep -oP "source\[.+, id\[" $input_file \
| gsed 's/source\[\(.*\)\], id\[/\1/g' \
| while read line
do
    echo $line | jq .
done \
> $output_file

done
