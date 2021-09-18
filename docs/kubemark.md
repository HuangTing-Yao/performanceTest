# Build Kubemark in existing Kubernetes cluster

## Build kubemark images
1. clone Kubernetes source code and checkout to 1.20.10
2. build kubemark binary with `KUBE_BUILD_PLATFORMS=linux/amd64 make kubemark GOFLAGS=-v GOGCFLAGS="-N -l"`
3. cp _output/bin/kubemark to cluster/images/kubemark
4. build kubemark images in cluster/images/kubemark with `IMAGE_TAG=v1.20.10 make build`

## Create hollow node pods
1. `kubectl create ns kubemark`
2. create configmap `kubectl create configmap node-configmap -n kubemark --from-literal=content.type="test-cluster"`
3. create secrets `kubectl create secret generic kubeconfig --type=Opaque --namespace=kubemark --from-file=kubelet.kubeconfig={kubeconfig_file_path} --from-file=kubeproxy.kubeconfig={kubeconfig_file_path}`
4. `kubectl apply -f hollow-node-sts.yaml`


# simple docs need to detail it