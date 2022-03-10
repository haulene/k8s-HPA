mvn clean package -Dmaven.test.skip=true
docker build -t haulene/k8s-hpa .
docker save haulene/k8s-hpa > k8s-hpa.tar
multipass transfer k8s-hpa.tar microk8s-vm:/tmp/k8s-hpa.tar
microk8s ctr image import /tmp/k8s-hpa.tar
