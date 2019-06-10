#!/bin/bash
grafana_host="http://dittybopper-dittybopper.apps.ostest.test.metalkube.org"
#grafana_cred="admin:narf"
#grafana_datasource="Cluster Prometheus"
grafana_datasource="Cluster Prometheus"
api_key="eyJrIjoicUhOaDRtcjVFNVFWNER1cUYwNmRjNWg0UHBtRUc1OTgiLCJuIjoiZ3JhZnlhbWwiLCJpZCI6MX0="

#j=$(curl -s -k -u "${grafana_cred}" ${grafana_host}/api/gnet/dashboards/10326 | jq .json)
j=$(curl -s -k -H "Authorization: Bearer $api_key" ${grafana_host}/api/gnet/dashboards/10326 | jq .json)

curl -s -k -XPOST -H "Authorization: Bearer $api_key" -H "Content-Type: application/json" -d "{
    \"dashboard\": $j,
    \"overwrite\": true,
    \"__inputs\": [{
        \"name\": \"DS_CLUSTER_PROMETHEUS\",
        \"label\": \"${grafana_datasource}\",
        \"description\": \"\",
        \"type\": \"datasource\",
        \"pluginId\": \"prometheus\",
        \"pluginName\": \"Prometheus\"}]
  }" $grafana_host/api/dashboards/db

