default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make download'
	@echo
	@echo '	$$ make build'
	@echo
	@echo '	$$ make deb-info'
	@echo
	@echo '	$$ make deb-list'
	@echo
	@echo '	$$ make install'
	@echo
	@echo '	$$ make remove'
	@echo
	@echo '	$$ make clean'
	@echo
.PHONY: help




prepare:
	./prepare.sh
.PHONY: prepare


download:
	./download.sh
.PHONY: download


build:
	./build.sh
.PHONY: build


deb-info:
	./deb-info.sh
.PHONY: deb-info


deb-list:
	./deb-list.sh
.PHONY: deb-list


install:
	./install.sh
.PHONY: install


remove:
	./remove.sh
.PHONY: remove


clean:
	./clean.sh
.PHONY: clean