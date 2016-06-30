#############################################################
#
#        Makefile for PDS project at BUT FIT 2014
#                   Fridolin Pokorny
#                fridex.devel@gmail.com
#
#############################################################

CXX=g++
LDFLAGS=-lm
CXXFLAGS=-std=gnu++0x -O3 -Wall -DNDEBUG

SRCS=main.cpp gif2bmp.cpp gif.cpp
HDRS=gif2bmp.h gif.h common.h
AUX=Makefile

PACKNAME=project.zip

all: clean gif2bmp

.PHONY: clean pack

gif2bmp: ${SRCS}
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $^ -o $@

pack:
	#make -C DOC/
	#mv DOC/Documentation.pdf .
	zip -R $(PACKNAME) $(SRCS) $(HDRS) ./$(AUX) Documentation.pdf

clean:
	@rm -f *.o gif2bmp $(PACKNAME) Documentation.pdf

