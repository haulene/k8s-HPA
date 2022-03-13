minikube addons enable ingress
cd k8s/prometheus
kubectl delete ingress k8s-hpa-app-ingress
kubectl delete service k8s-hpa-app-service
kubectl delete deployment k8s-hpa-app-deployment
kubectl apply -f deployment.yaml
kubectl apply -f metric-server-deployment.yaml
kubectl apply -f hpa-deployment.yaml