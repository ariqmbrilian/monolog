cpu usage
```
sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_irate{namespace='myproject'}) by (pod)
```
memory usage
```
sum(container_memory_working_set_bytes{container!="", namespace='myproject'}) by (pod)
```
filesystem usage
```
topk(25, sort_desc(sum(pod:container_fs_usage_bytes:sum{container="",pod!="",namespace='myproject'}) BY (pod, namespace)))
```
receive bandwidth
```
sum(irate(container_network_receive_bytes_total{namespace='myproject'}[2h])) by (pod)
```
transmit bandwidth
```
sum(irate(container_network_transmit_bytes_total{namespace='myproject'}[2h])) by (pod)
```
rate of received packet
```
sum(irate(container_network_receive_packets_total{namespace='myproject'}[2h])) by (pod)
```
rate of transmitted packet
```
sum(irate(container_network_receive_packets_total{namespace='myproject'}[2h])) by (pod)
```
rate of received packet dropped
```
sum(irate(container_network_receive_packets_dropped_total{namespace='myproject'}[2h])) by (pod)
```
rate of transmitted packets dropped
```
sum(irate(container_network_transmit_packets_dropped_total{namespace='myproject'}[2h])) by (pod)
```

###################################################3
OpenShift

pod memory usage
```
sum(container_memory_working_set_bytes{container!="", namespace='nsalab-dev'}) by (pod)
```
receive bandwidth
```
sum(irate(container_network_receive_bytes_total{namespace='kube-system'}[2h])) by (pod)
```
transmit bandwidth
```
sum(irate(container_network_transmit_bytes_total{namespace='kube-system'}[2h])) by (pod)
```
rate of received packets dropped
```
sum(irate(container_network_receive_packets_dropped_total{namespace='kube-system'}[2h])) by (pod)
```
rate of transmitted packets dropped
```
sum(irate(container_network_transmit_packets_dropped_total{namespace='kube-system'}[2h])) by (pod)
```
rate of transmitted packtes
```
sum(irate(container_network_transmit_packets_total{namespace='kube-system'}[2h])) by (pod)
```
rate of received packtes
```
sum(irate(container_network_receive_packets_total{namespace='nsalab-dev'}[2h])) by (pod)
```

```
sum(
  rate(container_cpu_usage_seconds_total{container!~"POD|",namespace="web"}[1m])
) by (pod)
```
