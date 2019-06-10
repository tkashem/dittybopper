# Dittybopper

## Getting Started / Prerequisistes

Right now Dittybopper has a few FIXMEs that need to be addressed before it will be more portable across
k8s/OpenShift environments. It should generally work out-of-the-box with OpenShift 4. Other environments
will likely have a prerequisite to first stand up a Prometheus pod, and the Dittybopper scripts and 
templates will need adjustment accordingly. The default dashboard included at 
[dashboards/dittybopper.json](dashboards/dittybopper.json) is also currently designed for an OpenShift 
4 deployment with converged rook-ceph storage on the master nodes.

## Deploy Grafana on OpenShift Cluster with Dashboards

```
$ git clone https://github.com/dustinblack/dittybopper.git
$ cd dittybopper
$ ./deploy.sh [-c <kubectl_cmd>] [-n <namespace>] [-p <grafana_pwd>]
```

See `./deploy.sh -h` for help.

Simply running `./deploy.sh` with no flags will assume OpenShift, the _dittybopper_ namespace, and _admin_ for the password.

## Import Dashboard

This will import a dashboard (json) into an existing Dittybopper Grafana deployment.

```
$ ./deploy.sh -i <path_to_dashboard_json_file>
```

## Delete Grafana Deployment

```
$ ./deploy.sh -d
```
