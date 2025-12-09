helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm search repo prometheus-community | head -n 20
helm show values prometheus-community/kube-prometheus-stack > prometheus-stack-values.yaml
helm install <release-name> <chart> [flags]

helm search repo prometheus-community --versions > chart-versions.log
helm install prom prometheus-community/kube-prometheus-stack \
  --version 80.0.0  \
  -n monitoring \
  --create-namespace \
  -f values.yaml
