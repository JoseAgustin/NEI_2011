#	Top-level Makefile for convert  conversion program

#	Macros, these should be generic for all machines

.IGNORE:
MAKE    =       make -i -f Makefile
CD      =       cd
LN	=	ln -s
RM	=	/bin/rm -f 
RM_LIST =	*.log
#	Targets for supported architectures

default:
	( $(CD) source   ; $(MAKE)  );
	( $(RM) convert.exe ; $(LN) source/convert.exe . ) ;
pgi:
	( $(CD) source   ; $(MAKE) pgi );
	( $(RM) convert.exe ; $(LN) source/convert.exe . ) ;

code:
	( $(CD) source   ; $(MAKE) code "FC= ifort" );
clean:
	( $(CD) source   ; $(MAKE) clean  );
	$(RM) $(RM_LIST)

