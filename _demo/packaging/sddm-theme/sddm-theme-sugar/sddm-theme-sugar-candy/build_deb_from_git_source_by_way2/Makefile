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
	@echo '	$$ make install'
	@echo
	@echo '	$$ make deb-info'
	@echo
	@echo '	$$ make deb-list'
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


install:
	./install.sh
.PHONY: install


fcitx5-install:
	./fcitx5-install.sh
.PHONY: fcitx5-install


fcitx5-config:
	./fcitx5-config.sh
.PHONY: fcitx5-config


use-fcitx5:
	./use-fcitx5.sh
.PHONY: use-fcitx5


clean:
	./clean.sh
.PHONY: clean


deb-info:
	./deb-info.sh
.PHONY: deb-info


deb-list:
	./deb-list.sh
.PHONY: deb-list


remove:
	./remove.sh
.PHONY: remove
