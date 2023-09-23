.PHONY: all link unlink

all: link

link: link_emacs link_zsh

unlink: unlink_emacs unlink_zsh

#
# Emacs
#

PATHES := init.el early-init.el
DIR    := .emacs.d

.PHONY: link_emacs unlink_emacs
link_emacs:
	@ echo Staring link .emacs.d
	@ for path in $(PATHES); do \
		ln -sfnv $(PWD)/$(DIR)/$$path $(HOME)/$(DIR)/$$path; \
	done

unlink_emacs:
	@ echo Starting unlink .emacs.d
	@ for path in $(PATHES); do \
		rm -fv $(HOME)/$(DIR)/$$path; \
	done

#
# zsh
#

PATHES := .zshrc .zsh
DIR    := .

.PHONY: link_zsh unlink_zsh
link_zsh:
	@echo Starting link zsh
	@ for path in $(PATHES); do \
		ln -sfnv $(PWD)/$(DIR)/$$path $(HOME)/$(DIR)/$$path; \
	done

unlink_emacs:
	@ echo Starting unlink zsh
	@ for path in $(PATHES); do \
		rm -fv $(HOME)/$(DIR)/$$path; \
	done

#
# tig
#

PATHES := .tigrc
DIR    := .

.PHONY: link_tig unlink_tig
link_tig:
	@echo Starting link tig
	@ for path in $(PATHES); do \
		ln -sfnv $(PWD)/$(DIR)/$$path $(HOME)/$(DIR)/$$path; \
	done

unlink_tig:
	@ echo Starting unlink tig
	@ for path in $(PATHES); do \
		rm -fv $(HOME)/$(DIR)/$$path; \
	done
