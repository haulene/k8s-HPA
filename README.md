# k8s-HPA
Spring Boot + Kubernetes — Scalability with Horizontal Pod Autoscaler 
Refs:
    https://medium.com/digital-software-architecture/spring-boot-kubernetes-scalability-with-horizontal-pod-autoscaler-hpa-faced00b52bf
    https://piotrminkowski.com/2020/11/05/spring-boot-autoscaling-on-kubernetes
    https://blog.marcnuri.com/prometheus-grafana-setup-minikube
    https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack
# k8s-HPA
# ENV for mac
<pre>
Install docker

<!-- Install microk8s  
    brew install ubuntu/microk8s/microk8s  
        microk8s install --cpu=4 # default cpu is 2   -->
Install minikube
    brew install kubectl && brew install --cask virtualbox && brew install minikube
    minikube start --driver=hyperkit
    minikube config set driver hyperkit
Install prometheus
    helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
    helm repo add stable https://charts.helm.sh/stable
    helm repo update
    helm install prometheus prometheus-community/prometheus
    kubectl expose service prometheus-server --type=NodePort --target-port=9090 --name=prometheus-server-np
    minikube service prometheus-server-np
    minikube service list
Install Grafana
    helm repo add grafana https://grafana.github.io/helm-charts
    helm install grafana stable/grafana
    kubectl expose service grafana --type=NodePort --target-port=3000 --name=grafana-np
    minikube service grafana-np
    minikube service list
    kubectl get secret --namespace default grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo

OR install pro-stack (TODO)
   
    helm install prometheus prometheus-community/kube-prometheus-stack
    kubectl port-forward deployment/prometheus-grafana 3000

    username: admin
    password: prom-operator

Build app
    sh build.sh
Use kubernetes-sigs-metrics-server
    sh deploy_with_kubernetes-sigs-metrics-server.sh
Use Prometheus
    TODO
    
Load test:  
    hey -c 20 -z 300s http://192.168.64.5/sayHello 

View hpa and pod info  
    microk8s kubectl get hpa  
    microk8s kubectl top pod  
    microk8s kubectl get pods  
</pre>