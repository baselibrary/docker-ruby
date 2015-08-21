NAME = quay.io/baselibrary/ruby
REPO = git@github.com:baselibrary/docker-ruby.git
TAGS = 1.8 1.9 2.0 2.1 2.2

all: build

build: $(TAGS)

release: $(TAGS)
	docker push ${NAME}

sync-branches:
	git fetch $(REPO) master
	@$(foreach tag, $(TAGS), git branch -f $(tag) FETCH_HEAD;)
	@$(foreach tag, $(TAGS), git push $(REPO) $(tag);)
	@$(foreach tag, $(TAGS), git branch -D $(tag);)

.PHONY: $(TAGS)
$(TAGS):
	docker build -t $(NAME):$@ $@
