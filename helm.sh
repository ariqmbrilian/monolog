helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

kubectl create ns loki
helm upgrade -n loki --install loki grafana/loki

helm upgrade -n loki --install loki grafana/loki-stack  --set grafana.enabled=true,prometheus.enabled=true,prometheus.alertmanager.persistentVolume.enabled=false,prometheus.server.persistentVolume.enabled=false
kubectl get secret -n loki loki-grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
kubectl port-forward -n loki service/loki-grafana 3000:80
