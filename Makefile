NAME     = baselibrary/ruby
REPO     = git@github.com:baselibrary/docker-ruby.git
<<<<<<< HEAD
LOCAL    = 10.29.10.249:5001
=======
REGISTRY = thoughtworks.ga
>>>>>>> 54e9799fe3dd299fb666d73da05e91fba6035303
VERSIONS = $(foreach df,$(wildcard */Dockerfile),$(df:%/Dockerfile=%))

all: build 

build: $(VERSIONS)
	@for version in $(VERSIONS); do \
	docker build --rm --tag=$(NAME):$$version $$version; \
	done

push: $(VERSIONS)
	@for version in $(VERSIONS); do \
	docker tag -f ${NAME}:$$version ${REGISTRY}/${NAME}:$$version; \
	docker push ${REGISTRY}/${NAME}:$$version; \
	docker rmi -f ${REGISTRY}/${NAME}:$$version; \
	done

clean: $(VERSIONS)
	@for version in $(VERSIONS); do \
	docker rmi -f ${NAME}:$$version; \
	docker rmi -f ${REGISTRY}/${NAME}:$$version; \
	done

update:
	docker run --rm -v $$(pwd):/work -w /work buildpack-deps ./update.sh
