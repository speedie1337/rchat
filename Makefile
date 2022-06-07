SHELL = /bin/sh

INSTALL_DIR =/usr/bin
NAME = rchat

help:
	@echo "make install     Install ${NAME}."
	@echo "make uninstall   Uninstall ${NAME}."

install:
	cp ${NAME} ${INSTALL_DIR}
	chmod +x ${INSTALL_DIR}/${NAME}

uninstall:
	rm -r ~/.config/${NAME}
	rm ${INSTALL_DIR}/${NAME}

