kubectl delete -f spark-app.yml

docker build -t spark-app:latest .

kubectl apply -f spark-app.yml