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
	@echo '	$$ make app'
	@echo

.PHONY: help


prepare:
	sudo pacman -Sy --needed php
.PHONY: prepare


app:
	php ubuntu-adjust-ctrl.sh > ../../ubuntu-adjust-ctrl
	chmod 755 ../../ubuntu-adjust-ctrl
.PHONY: app
