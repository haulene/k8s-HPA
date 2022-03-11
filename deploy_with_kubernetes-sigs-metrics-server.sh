# microk8s disable traefik
microk8s enable ingress
cd k8s/kubernetes-sigs-metrics-server
microk8s kubectl delete ingress k8s-hpa-app-ingress
microk8s kubectl delete service k8s-hpa-app-service
microk8s kubectl delete deployment k8s-hpa-app-deployment
microk8s kubectl apply -f deployment.yaml
microk8s kubectl apply -f metric-server-deployment.yaml
microk8s kubectl apply -f hpa-deployment.yaml
