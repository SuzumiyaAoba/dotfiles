.PHONY: all link unlink

all: link

link: link_emacs link_zsh link_tig link_dot_config link_tmux

unlink: unlink_emacs unlink_zsh unlink_tig unlink_dot_config unlink_tmux

#
# Emacs
#

.PHONY: link_emacs unlink_emacs
link_emacs:
	@ echo Staring link .emacs.d
	@ ln -sfnv $(PWD)/.emacs.d/init.el       $(HOME)/.emacs.d/init.el
	@ ln -sfnv $(PWD)/.emacs.d/early-init.el $(HOME)/.emacs.d/early-init.el

unlink_emacs:
	@ echo Starting unlink .emacs.d
	@ rm -rfv $(HOME)/.emacs.d/init.el
	@ rm -rfv $(HOME)/.emacs.d/early-init.el

#
# zsh
#

.PHONY: link_zsh unlink_zsh
link_zsh:
	@ echo Starting link zsh
	@ ln -sfnv $(PWD)/.zshrc $(HOME)/.zshrc
	@ ln -sfnv $(PWD)/.zsh   $(HOME)/.zsh

unlink_zsh:
	@ echo Starting unlink zsh
	@ rm -rfv $(HOME)/.zshrc
	@ rm -rfv $(HOME)/.zsh

#
# tmux
#
.PHONY: link_tmux unlink_tmux
link_tmux:
	@ echo Starting link tmux
	@ ln -sfnv $(PWD)/.tmux.conf $(PWD)/.tmux.conf

unlink_tmux:
	@ echo Starting unlink tmux
	@ rm -rfv $(HOME)/.tmux.conf

#
# tig
#

.PHONY: link_tig unlink_tig
link_tig:
	@ echo Starting link tig
	@ ln -sfnv $(PWD)/.tigrc $(HOME)/.tigrc

unlink_tig:
	@ echo Starting unlink tig
	@ rm -rfv $(HOME)/.tigrc

#
# .config
#

.PHONY: link_dot_config unlink_dot_config
link_dot_config:
	@ echo Starting link .config
	@ ln -sfnv $(PWD)/.config/alacritty     $(HOME)/.config/alacritty
	@ ln -sfnv $(PWD)/.config/kitty         $(HOME)/.config/kitty
	@ ln -sfnv $(PWD)/.config/git           $(HOME)/.config/git
	@ ln -sfnv $(PWD)/.config/nvim          $(HOME)/.config/nvim
	@ ln -sfnv $(PWD)/.config/starship.toml $(HOME)/.config/starship.toml

unlink_dot_config:
	@ echo Starting unlink .config
	@ rm -rfv $(HOME)/.config/alacritty
	@ rm -rfv $(HOME)/.config/kitty
	@ rm -rfv $(HOME)/.config/git
	@ rm -rfv $(HOME)/.config/nvim
	@ rm -rfv $(HOME)/.config/starship.toml

