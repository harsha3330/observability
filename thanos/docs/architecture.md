1. For Highly Available Promtheus
2. Long Term Data storage using object store
3. Mainly for handling distrubuted prometheus cluster data backup, querying and historical data

Components : 

1. SideCar: connects to Prometheus and reads its data for query and/or upload it to cloud storage
2. Store Gateway: exposes the content of a cloud storage bucket
3. Compactor: compact and downsample data stored in remote storage
4. Ruler: evaluates recording and alerting rules against data in Thanos for exposition and/or upload
5. Query Gateway: implements Prometheus’ v1 API to aggregate data from the underlying components (Aggregates all the prometheus servers to get the data)