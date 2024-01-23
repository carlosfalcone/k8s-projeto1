echo "Criando as imagens..."
docker build -t carlosfalcone/projeto-backend:2.0 backend/.
docker build -t carlosfalcone/projeto-database:2.0 database/.

echo "Realizando o push das imagens..."
docker push carlosfalcone/projeto-backend:2.0
docker push carlosfalcone/projeto-database:2.0

echo "Criando serviços no cluster kubernetes..."
kubectl apply -f ./services.yml

echo "Realizando os deployments..."
kubectl apply -f ./deployment.yml