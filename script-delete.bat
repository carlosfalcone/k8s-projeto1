echo "Deletando os servicos..."
kubectl delete service mysql-connection
kubectl delete service php-service
kubectl get services


echo "Deletando o deployment..."
kubectl delete deploy mysql
kubectl delete deploy php
kubectl get deploy
kubectl get pods
