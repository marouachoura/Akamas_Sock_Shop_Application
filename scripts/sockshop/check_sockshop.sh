#! /bin/bash

set -ea

declare -a services=(carts catalogue front-end orders payment shipping user queue-master rabbitmq)

for service in "${services[@]}"; do
  echo "Describe service $service"
  kubectl describe pod "$service" -n sock-shop --kubeconfig /root/.kube/config | grep -Pzo '.*Events(.*\n)*'
  echo "Checking rollout status for service $service"
  kubectl rollout status --timeout=6m -n sock-shop deployment "$service" --kubeconfig /root/.kube/config
done



#echo "Checking"
#exit 0
