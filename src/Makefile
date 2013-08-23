#Makefile for GeneSeqer/SplicePredictor
#Last update: October 8, 2008.

BINDIR     = ../bin
INSTALLDIR = /usr/local/bin


what:
	clear;
	@echo ""
	@echo "GeneSeqer/SplicePredictor make. Version 4.1 (October 8, 2008)."
	@echo ""
	@echo "Usage: make system-type"
	@echo "       make install"
	@echo "       make clean"
	@echo ""
	@echo "Known system types: aix, hp_ux, linux, sgi, sun-os, win"
	@echo ""
	@echo "Default install directory:"
	@echo "  $(INSTALLDIR)"
	@echo ""
	@exit 1;

prep:	../bin
	@- mkdir ../bin

aix:	prep
	@make -f makefile.aix

hp_ux:	prep
	@make -f makefile.hpx

linux:	prep
	@make -f makefile.lnx

sgi:	prep
	@make -f makefile.sgi

sun-os:	prep
	@make -f makefile.sun

win:	prep
	@make -f makefile.win


install:	prep
	cp $(BINDIR)/* $(INSTALLDIR)/

clean:
	\rm -f *.o

allclean:
	\rm -f *.o ../bin/*
