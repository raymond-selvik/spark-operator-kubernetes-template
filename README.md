# Spark Kubernetes Template
Template for deploying a spark application by using Kubernetes Spark Operator.

## Installing Spark Operator
In order to use this template, the Spark Operator needs to be installed on your cluster. The simplest way is to install it through Helm. 

```
$ helm repo add spark-operator https://googlecloudplatform.github.io/spark-on-k8s-operator

$ helm install <operator-name> spark-operator/spark-operator --namespace spark-operator --create-namespace --set sparkJobNamespace=default --set serviceAccounts.spark.name=spark
```

## Build and Deploy
To build and deploy the example application. Run build.sh.

## Check Status and Logs
To check status run:
```
kubectl describe sparkapplication <app-name>
```

To read logs, run:
```
kubectl logs <app-name>-driver
```


