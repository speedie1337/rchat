SHELL = /bin/sh
VER = 1.4
INSTALL_DIR =/usr/bin
NAME = rchat

help:
	@echo "make install     Install ${NAME}."
	@echo "make uninstall   Uninstall ${NAME}."
	@echo "make dist        Create ${NAME} ${VER} tar.gz."

install:
	cp ${NAME} ${INSTALL_DIR}
	chmod +x ${INSTALL_DIR}/${NAME}

uninstall:
	rm -r ~/.config/${NAME}
	rm ${INSTALL_DIR}/${NAME}

dist:
	mkdir -p ${NAME}-${VER}
	cp ${NAME} Makefile ${NAME}-${VER}
	tar -cf ${NAME}-${VER}.tar ${NAME}-${VER}
	gzip ${NAME}-${VER}.tar
	rm -r ${NAME}-${VER}
