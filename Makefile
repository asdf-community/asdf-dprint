SH_SRCFILES = $(shell git ls-files "bin/*")
SHFMT_BASE_FLAGS = -s -i 2 -ci

format:
	shfmt -w $(SHFMT_BASE_FLAGS) $(SH_SRCFILES)
.PHONY: fmt

format-check:
	shfmt -d $(SHFMT_BASE_FLAGS) $(SH_SRCFILES)
.PHONY: fmt-check

lint:
	shellcheck $(SH_SRCFILES)
.PHONY: lint

test:
	bats test
.PHONY: test
