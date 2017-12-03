.PHONY: all install-tools validate

install-tools:
	hack/install-tools.sh

validate: install-tools

