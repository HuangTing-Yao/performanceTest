kubectl delete hollow-node-stat.yaml
kubectl get nodes --no-headers=true | awk '/hollow-node/{print $1}' | xargs kubectl delete node