cat <<EOF > prometheus.yml
global:
  scrape_interval: 15s

scrape_configs:
- job_name: node
  static_configs:
  - targets: ['linux_machine_IP_address:9100']
EOF

FROM prom/prometheus
ADD prometheus.yml /etc/prometheus/

docker build -t my-prometheus .
docker run -p 9090:9090 my-prometheus
