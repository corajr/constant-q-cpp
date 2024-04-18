
ARCHFLAGS	?= -mmacosx-version-min=10.7 -arch arm64 -stdlib=libc++

CFLAGS 		:= $(ARCHFLAGS) -Wall -O3 -ftree-vectorize -I/opt/homebrew/include
CXXFLAGS  	:= $(CFLAGS)

LDFLAGS		:= $(ARCHFLAGS) -L/opt/homebrew/lib
PLUGIN_LDFLAGS	  := -dynamiclib -exported_symbols_list vamp/vamp-plugin.list

VAMPSDK_DIR := ../vamp-plugin-sdk

PLUGIN_EXT := .dylib

include Makefile.inc

