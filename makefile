
PREFIX ?= /usr

all:
	@echo Run \'make install\' to install backupmenu.

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
	@cp -vp README.md  $(PREFIX)/share/doc/backupmenu
	
	@echo 'Installing Desktop entry...'
	@cp -vp	desktop/backupmenu.desktop $(PREFIX)/share/applications
	@cp -vp	desktop/backupmenuicon.png $(PREFIX)/share/pixmaps

	@echo 'DONE!'

uninstall:
	@echo 'Uninstalling backupmenu...'
	
	rm -vf $(PREFIX)/bin/backupmenu
	rm -vf $(PREFIX)/lib/backupmenu/modules/*Module
	rm -vf $(PREFIX)/share/doc/backupmenu/README.md
	rm -vf $(PREFIX)/share/applications/backupmenu.desktop
	rm -vf $(PREFIX)/share/pixmaps/backupmenuicon.png
	
	@echo 'DONE!'



