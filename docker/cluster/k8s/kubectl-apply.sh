#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)";

kubectl-apply() {
    kubectl apply -f "$SCRIPT_DIR/mysql-pv.yml";
    kubectl apply -f "$SCRIPT_DIR/mysql-deployment.yml";
}

kubectl-checkup() {
    kubectl describe deployment mysql
    kubectl get pods
}