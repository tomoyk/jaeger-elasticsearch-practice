#!/bin/bash

CURRENT=$(date '+%Y%m%d-%H%M%S')
AFTER_10M=$(date '+%Y%m%d-%H%M%S' -d "10 minute")
echo "Chaos start ${CURRENT}"
sed "s/test30/test${CURRENT}/g" job.yaml | kubectl apply -f -
echo "Chaos end ${AFTER_10M}"
