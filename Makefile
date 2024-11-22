dev-run:
	. _sample_mappings_and_confs/prodOnDev.bash; \
	. _sample_mappings_and_confs/setup-env-var.bash; \
	ipython lume-impact-live-demo-dev.py -- -t "s3df" --debug "False"
dev-run-debug:
	. _sample_mappings_and_confs/prodOnDev.bash; \
	. _sample_mappings_and_confs/setup-env-var.bash; \
	ipython lume-impact-live-demo-dev.py -- -t "s3df" --debug "True"

docker-build:
	podman build --tag lume-impact-live-demo -f ./Dockerfile
	

