# Kafka Cluster setup on Kubernetes

Run start_cluster.sh which will setup 3-node Zookeeper and 4-node Kafka Brokers.

To uninstall the Kafka cluster run stop_cluster.sh

## Prerequisite
The Kafka brokers expects the storage volume (PVC) to be provisioned out of Portworx using the storageclass (sc-kafka-rf2.yaml).
If you want to provision the PVC out of different storage option, modify kafka.yaml file.

## Add-ons
The setup script also creates a Kafka Client to do any operations on Kafka topics as well as a Kafka web UI, [KafDrop](https://github.com/obsidiandynamics/kafdrop),  for browsing topics and consumer groups.



