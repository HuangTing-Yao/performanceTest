#build yunikorn(yunikorn k8shim,core)
#make build

#install yunikorn
#command Ref:https://yunikorn.apache.org/docs/
#Parameter Ref:https://github.com/apache/incubator-yunikorn-release/tree/master/helm-charts/yunikorn
helm repo add yunikorn  https://apache.github.io/incubator-yunikorn-release
helm repo update
kubectl create namespace yunikorn
helm install yunikorn yunikorn/yunikorn --namespace yunikorn \
       	--set embedAdmissionController=false \
	--set resources.requests.cpu=1000m \
	--set resources.requests.memory=2G \
	--set resources.limits.cpu=5 \
	--set resource.limits.memory=4G

#remove yunikorn
#helm uninstall yunikorn --namespace yunikorn
