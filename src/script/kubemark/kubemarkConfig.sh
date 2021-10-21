kubectl create ns kubemark
kubectl create configmap node-configmap -n kubemark --from-literal=content.type="test-cluster"
kubectl create secret generic kubeconfig --type=Opaque --namespace=kubemark --from-file=kubelet.kubeconfig=$HOME/.kube/config --from-file=kubeproxy.kubeconfig=$HOME/.kube/config
