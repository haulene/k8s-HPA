microk8s enable traefik
cd k8s
microk8s kubectl delete ingress k8s-hpa-app-ingress
microk8s kubectl delete service k8s-hpa-app-service
microk8s kubectl delete deployment k8s-hpa-app-deployment
microk8s kubectl delete deployment k8s-hpa-app
microk8s kubectl apply -f deployment.yaml
microk8s kubectl apply -f hpa-deployment.yaml