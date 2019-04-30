# scale-ci-grafana

For RHEL ensure that `python-virtualenv` is pre-installed.

## Deploy Grafana on OpenShift Cluster with Dashboards

```
$ git clone https://github.com/akrzos/scale-ci-grafana.git
$ cd scale-ci-grafana
$ virtualenv .venv; . .venv/bin/activate; pip install -r requirements.txt
$ ./deploy.sh "$grafana_password"
```

Replace `$grafana_password` with a desired grafana password.

## Redeploy Dashboards after deploying Grafana

If you edit the yaml in this repo and want to update the dashboards repeat below instructions.

```
$ cd scale-ci-grafana
$ . .venv/bin/activate
$ grafana-dashboard --config-file .grafyaml_config update dashboards/
```

## Install Dashboards

If you just want to upload dashboards without deploying Grafana, follow below instructions

```
$ git clone https://github.com/akrzos/scale-ci-grafana.git
$ cd scale-ci-grafana
$ virtualenv .venv; . .venv/bin/activate; pip install -r requirements.txt
$ # Configure your /etc/grafyaml/grafyaml.conf
$ grafana-dashboards update dashboards/
```
