
OPTS := -Xswiftc "-target" -Xswiftc "x86_64-apple-macosx10.15"

build: build-lib build-app

.PHONY: build

install: install-lib install-app

.PHONY: install

install-lib:
	@cd lib && swift package update
.PHONY: install-lib

build-lib:
	@cd lib && swift build $(OPTS)
.PHONY: build-lib

install-app:
	@cd app && swift package update
.PHONY: install-app

build-app:
	@cd app && swift build $(OPTS)
	@cd app && swift run $(OPTS)
.PHONY: build-app
