#!/bin/bash

if [ -z $1 ]; then
  echo Invald options
  echo Usage: COMMAND output-file-name
  exit 1
fi

sudo tail -f /var/log/elasticsearch/elasticsearch_index_search_slowlog.log -n 1 \
    | grep -v kibana > "q-${1}.log"

