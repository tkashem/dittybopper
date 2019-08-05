#!/bin/bash
oc label namespace rook-ceph "openshift.io/cluster-monitoring=true"
oc policy add-role-to-user view system:serviceaccount:openshift-monitoring:prometheus-k8s -n rook-ceph
oc apply -f ./enable-ceph-monitoring.yaml
