#!/bin/bash

echo "Tearing down Kafka/ZK"
kubectl delete -f kafka.yaml
kubectl delete pvc -l app=kafka
kubectl delete -f zookeeper.yaml
kubectl delete pvc -l app=czk
kubectl delete -f kafdrop.yaml

echo "Removing jar in configmap"
kubectl delete configmap jmx-prometheus-javaagent-jar 
kubectl delete -f kafkaclient.yaml
