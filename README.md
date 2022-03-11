# k8s-HPA
Spring Boot + Kubernetes — Scalability with Horizontal Pod Autoscaler 
# k8s-HPA
# ENV for mac
<pre>
Install microk8s  
brew install ubuntu/microk8s/microk8s  
    microk8s install --cpu=4 # default cpu is 2  
Build app and deploy  
    sh build.sh  
    sh deploy.sh  
Load test:  
    hey -c 20 -z 300s http://192.168.64.4/sayHello  

View hpa and pod info  
    microk8s kubectl get hpa  
    microk8s kubectl top pod  
    microk8s kubectl get pods  
</pre>