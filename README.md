# scale-ci-grafana

## Deploy Grafana on OpenShift Cluster

```
$ git clone https://github.com/akrzos/scale-ci-grafana.git
$ cd scale-ci-grafana
$ ./deploy.sh
```

## Install Dashboards

For RHEL ensure that `python-virtualenv` is pre-installed.

```
$ git clone https://github.com/akrzos/scale-ci-grafana.git
$ virtualenv .venv; . .venv/bin/activate; pip install -r requirements.txt
$ # Configure your /etc/grafyaml/grafyaml.conf
$ grafana-dashboards update dashboards/
```
