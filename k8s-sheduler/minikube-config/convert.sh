KUBE_APISERVER="https://192.168.49.2:8443"
CLUSTER_NAME=minikube
CONTEXT_NAME=minikube

# 设置ca.crt
kubectl config set-cluster ${CLUSTER_NAME} \
    --certificate-authority=/home/lin/.minikube/ca.crt \
    --embed-certs=true \
    --server=${KUBE_APISERVER} \
    --kubeconfig=bootstrap.kubeconfig

# 设置minikube certificate和key
kubectl config set-credentials minikube \
    --client-certificate=/home/lin/.minikube/profiles/minikube/client.crt \
    --client-key=/home/lin/.minikube/profiles/minikube/client.key \
    --embed-certs=true \
    --kubeconfig=bootstrap.kubeconfig

# 设置context
kubectl config set-context ${CONTEXT_NAME} \
    --cluster=${CLUSTER_NAME} \
    --user="minikube" \
    --kubeconfig=bootstrap.kubeconfig

# 使用context
kubectl config use-context ${CONTEXT_NAME} --kubeconfig=bootstrap.kubeconfig
# kubectl config current-context