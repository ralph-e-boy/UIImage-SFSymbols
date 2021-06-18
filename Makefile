#!/usr/bin/env make

all: 
	bin/sfsymbols-uiimage.sh > Sources/UIImage-SFSymbols/UIImage+SFSymbols.swift

xcode: 
	swift package generate-xcodeproj

