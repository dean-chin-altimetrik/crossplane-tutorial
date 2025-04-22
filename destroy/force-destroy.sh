#!/bin/bash

echo "[INFO] Here are all the managed resoruces"
kubectl get managed

#  First clear resources  where both synced and ready equals false
for item in $(kubectl get managed --no-headers | grep -v "True" | awk '{print $1}'); do
    type=$(echo "$item" | cut -d/ -f1)
    name=$(echo "$item" | cut -d/ -f2)
    echo "[INFO] Patching finalizer that is not Synced and Not Ready for $item..."
    kubectl patch $type $name -p '{"metadata":{"finalizers":[]}}' --type=merge
done

sleep 5

#  Clear remaining managed resources
for item in $(kubectl get managed --no-headers | awk '{print $1}'); do
    type=$(echo "$item" | cut -d/ -f1)
    name=$(echo "$item" | cut -d/ -f2)
    echo "[INFO] Patching finalizer for emaining item $item..."
    kubectl patch $type $name -p '{"metadata":{"finalizers":[]}}' --type=merge
done

# kubectl get managed -o jsonpath='{range .items[*]}{.metadata.name}{"\t"}{.status.conditions[*].type}{"\t"}{.status.conditions[*].status}{"\n"}{end}'
# kubectl get managed -o jsonpath='{range .items[*]}{.metadata.name}{.status.conditions}{end}'