1. Pull Based Monitoring system over http 
2. Time Series Database (so data needs to be this format)
3. Service Discovery (dns / kubernetes api)
4. Alertmanager (slack , hooks etc)
5. QueryData using custom apps (grafana,webui,promelens)


Data Model: 
1. TSDB ( numeric values change over time) example: metric{labels=""} t1 v1 (name , key-value, timestamp, number)
2. Each target need to expose its data that prometheus understand on a http endpoint
3. alerting on promql


Serive Discovery:
1. It needs to know which target it needs to pull
2. Can Add static targets
3. Supports DNS, Kubernetes, COnsul