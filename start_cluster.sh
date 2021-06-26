#!/bin/bash

echo "Starting up ZK/Kafka "
kubectl apply -f zookeeper.yaml
kubectl rollout status statefulset.apps/czk

echo "Uploading jar for jmx-prometheus"
kubectl create configmap --from-file=jmx_prometheus_javaagent-0.13.0.jar jmx-prometheus-javaagent-jar 

sleep 5
kubectl apply -f kafka.yaml
kubectl rollout status statefulset.apps/kafka
kubectl apply -f kafdrop.yaml
kubectl apply -f kafkaclient.yaml
