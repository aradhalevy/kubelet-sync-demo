# kubelet-sync-demo

testing to see how best to make the kubelet sync faster with configMaps

to config your cluster to sync kubeletes faster run `make build_cluster`

to run the demo run `make run`, and after that  `for i in {1..100}; do printf "seconds from starting: $i, value: " ; k exec -it -f demo-depo.yaml  -- cat etc/foo/VAR_FOR_TESTING; printf "\n"; sleep 1; done`

now you can change your configMap and see it happen in about 2 seconds

