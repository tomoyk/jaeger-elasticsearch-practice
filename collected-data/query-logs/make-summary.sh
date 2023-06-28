#!/bin/bash

ggrep -oP "source\[.+, id\[" find-traces \
| gsed 's/source\[\(.*\)\], id\[/\1/g' \
| while read line
do
  echo $line | jq .
done \
> summary.find-trace.txt
