#!/bin/bash

kubectl logs -l name=front-end -c istio-proxy -n sock-shop -f
# kubectl logs -l name=catalogue -c istio-proxy -n sock-shop #| grep Blackbox
