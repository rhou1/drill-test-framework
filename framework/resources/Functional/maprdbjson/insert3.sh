cd framework/resources/Functional/maprdbjson
kubectl cp insert3 dataplatform/admincli-0:/tmp
kubectl exec -i admincli-0 -n dataplatform -- /bin/bash /tmp/insert3
