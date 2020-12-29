SOURCES := $(shell find source -name '*.jinja')

.DEFAULT_GOAL := generated-plugin
all: generated-plugin

generated-plugin: $(SOURCES)
	copier . generated-plugin

clean:
	rm -rf generated-plugin
.PHONY: clean
