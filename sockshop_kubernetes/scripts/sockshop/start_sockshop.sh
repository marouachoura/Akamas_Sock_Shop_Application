#! /bin/bash
echo "Starting"
kubectl apply -f /opt/sockshop_kubernetes/microservices-demo/deploy/kubernetes/sockshop_orders/tuned-microservices.yaml
exit 0
