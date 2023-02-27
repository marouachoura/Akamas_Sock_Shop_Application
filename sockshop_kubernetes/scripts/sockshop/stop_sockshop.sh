#! /bin/bash
echo "Stopping"
kubectl delete -f /opt/sockshop_kubernetes/microservices-demo/deploy/kubernetes/sockshop_orders/tuned-microservices.yaml
exit 0
