

build_cluster:
	kind create cluster --config=demo-cluster.yaml

delete_cluster:
	kind delete cluster

run: 
	kubectl apply -f demo-config.yaml
	kubectl apply -f demo-depo.yaml
	kubectl wait --for=condition=ready pod -l app=demo


#to print, first make run than in your command line:	for i in {1..100}; do printf "seconds from starting: $i, value: " ; k exec -it -f demo-depo.yaml  -- cat etc/foo/VAR_FOR_TESTING; printf "\n"; sleep 1; done

