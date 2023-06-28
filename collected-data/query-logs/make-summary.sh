bash get-query.sh | \
while read line
do
  echo $line | jq .
done > summary.find-trace.txt
