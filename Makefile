SOURCES := $(shell find source -name '*.jinja')

.DEFAULT_GOAL := generated-plugin
all: generated-plugin

generated-plugin: $(SOURCES)
	copier . generated-plugin

test: generated-plugin
	@cd generated-plugin && npm i && npm run asbuild && npm test
.PHONY: test

clean:
	rm -rf generated-plugin
.PHONY: clean
