
default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Ex:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make install'
	@echo
	@echo '	$$ make package-install'
	@echo
	@echo '	$$ make asset-install'
	@echo
	@echo '	$$ make config-install'
	@echo


.PHONY: help


install:
	@./helper/bin/install.sh
.PHONY: install


package-install:
	@./helper/bin/package-install.sh
.PHONY: package-install

asset-install:
	@./helper/bin/asset-install.sh
.PHONY: asset-install

config-install:
	@./helper/bin/config-install.sh
.PHONY: config-install
