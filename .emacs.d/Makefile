DIST := ${HOME}/.emacs.d
FILES := init.el early-init.el

.PHONY: all link unlink

all: link

link:
	@echo Link .emacs.d
	@for file in $(FILES); do \
		ln -sfnv $(PWD)/$$file $(DIST)/$$file; \
	done

unlink:
	@echo Unlink .emacs.d
	@for file in $(FILES); do \
		rm -fv $(DIST)/$$file; \
	done
