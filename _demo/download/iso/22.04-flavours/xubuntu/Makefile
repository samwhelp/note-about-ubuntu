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
	@echo '	$$ make download'
	@echo
	@echo '	$$ make mount'
	@echo
	@echo '	$$ make unmount'
	@echo
	@echo '	$$ make initrd-extract'
	@echo
	@echo '	$$ make clean'
	@echo
.PHONY: help




download:
	./download.sh
.PHONY: download


mount:
	./mount.sh
.PHONY: mount


unmount:
	./unmount.sh
.PHONY: unmount


initrd-extract:
	./initrd-extract.sh
.PHONY: initrd-extract


clean:
	./clean.sh
.PHONY: clean
