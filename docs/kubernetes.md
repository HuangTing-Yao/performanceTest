# Build kubernetes with extra settings
Before you add worker into cluster, you can edit setting to increase max number of pod in worker node.

## Change podCIDR range of node via kube-controller-manager
1. modify `/etc/kubernetes/manifest/kube-controller-manager.yaml`
2. Add `--node-cidr-mask-size={node-mask-length}` in `spec.containers.command` and it will accept this setting automatically.

## Change max and allocatable number of pod in node via kubelet
1. modify kubelet start arg `--max-Pods=300`, you append this arg after `ExecStart` in `/etc/systemd/system/kubelet.service.d/10-kubeadm.conf`
2. `systemctl daemon-reload`
3. `systemctl restart kubelet`

# simple docs for k8s, need to detail it 
