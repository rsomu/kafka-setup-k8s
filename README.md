Kafka Cluster setup on Kubernetes

Run start_cluster.sh which will setup 3-node Zookeeper and 4-node Kafka Brokers.
The script will also setup a Kafka Client to do any operations on Kafka topics.
Included [KafDrop](https://github.com/obsidiandynamics/kafdrop), a Kafka web UI for browsing topics and consumer groups.


To uninstall the Kafka cluster run stop_cluster.sh
