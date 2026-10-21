################################################################################
# Variables
################################################################################

SHELL := /bin/bash

# Optional flag passed to stow (e.g. -v, -n, etc.)
FLAG ?=

# All subdirectories (excluding . and .git), resolved at parse time
CONF_DIRS := $(shell find . -maxdepth 1 -type d -not -name "." -not -name ".git")

################################################################################
# Recipes
################################################################################

##==============================================================================
.PHONY: all
all: stow

##==============================================================================
.PHONY: all
stow: ## Run stow
	@mkdir -p $$HOME/.config
	@mkdir -p $$HOME/.local/bin
	@for dir in $(CONF_DIRS); do \
		name=$${dir#./}; \
		stow $(FLAG) -t ~/ $$name; \
	done

##==============================================================================
# https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.ONESHELL:
.SILENT:
.PHONY: help
help:  ## Auto-generated help menu
	grep -P '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
	sort                                               | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

