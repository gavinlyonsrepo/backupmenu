
PREFIX ?= /usr

.PHONY: all install uninstall help

all: help

install:
	@echo 'Installing backupmenu...'
	@echo 'Making directories...'
	@mkdir -vp $(PREFIX)/bin
	@mkdir -vp $(PREFIX)/lib/backupmenu/modules
	@mkdir -vp $(PREFIX)/share/doc/backupmenu

	@echo 'Installing script...'
	@cp -vp main/backupmenu $(PREFIX)/bin
	@chmod 755 $(PREFIX)/bin/backupmenu

	@echo 'Installing modules...'
	@cp -vp modules/* $(PREFIX)/lib/backupmenu/modules

	@echo 'Installing Readme...'
	@cp -vp README.md $(PREFIX)/share/doc/backupmenu

	@echo 'Installing Desktop entry...'
	@cp -vp desktop/backupmenu.desktop $(PREFIX)/share/applications
	@cp -vp desktop/backupmenuicon.png $(PREFIX)/share/pixmaps

	@echo 'DONE!'

uninstall:
	@echo 'Uninstalling backupmenu...'

	@rm -vf $(PREFIX)/bin/backupmenu
	@rm -vrf $(PREFIX)/lib/backupmenu
	@rm -vf $(PREFIX)/share/doc/backupmenu/README.md
	@rm -vf $(PREFIX)/share/applications/backupmenu.desktop
	@rm -vf $(PREFIX)/share/pixmaps/backupmenuicon.png

	@echo 'DONE!'

help:
	@echo ''
	@echo 'backupmenu - Makefile targets:'
	@echo ''
	@echo '  make             Show this info (same as make help)'
	@echo '  make install     Install backupmenu to PREFIX (default: /usr)'
	@echo '                   Override with: make install PREFIX=/usr/local'
	@echo '  make uninstall   Remove all installed backupmenu files'
	@echo ''
	@echo '  May need sudo for install/uninstall depending on PREFIX.'
