# k8s-HPA
Spring Boot + Kubernetes — Scalability with Horizontal Pod Autoscaler 
Refs:
    https://medium.com/digital-software-architecture/spring-boot-kubernetes-scalability-with-horizontal-pod-autoscaler-hpa-faced00b52bf
    https://piotrminkowski.com/2020/11/05/spring-boot-autoscaling-on-kubernetes
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

Build app
    sh build.sh
Use kubernetes-sigs-metrics-server
    sh deploy_with_kubernetes-sigs-metrics-server.sh
Use Prometheus
    
Load test:  
    hey -c 20 -z 300s http://192.168.64.5/sayHello 

View hpa and pod info  
    microk8s kubectl get hpa  
    microk8s kubectl top pod  
    microk8s kubectl get pods  
</pre>