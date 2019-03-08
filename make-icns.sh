#!/bin/bash
# franciscoigor@gmail.com

ICONFILE=$1
ICONNAME=$2

if [ "$ICONFILE" == "" ]; then
    echo "Usage: $0 path/to/image/png [icon-name]"
    exit 1
fi
if [ "$ICONNAME" == "" ]; then
    ICONNAME=app
fi

# install imagemagick 
brew install imagemagick

# prepare files
rm $ICONNAME.icns

# creating iconset for default sizes
mkdir -p $ICONNAME.iconset
convert -resize 16x16 $ICONFILE $ICONNAME.iconset/icon_16x16.png
convert -resize 32x32 $ICONFILE $ICONNAME.iconset/icon_16x16@2x.png
convert -resize 32x32 $ICONFILE $ICONNAME.iconset/icon_32x32.png
convert -resize 64x64 $ICONFILE $ICONNAME.iconset/icon_32x32@2x.png
convert -resize 128x128 $ICONFILE $ICONNAME.iconset/icon_128x128.png
convert -resize 256x256 $ICONFILE $ICONNAME.iconset/icon_128x128@2x.png
convert -resize 256x256 $ICONFILE $ICONNAME.iconset/icon_256x256.png
convert -resize 512x512 $ICONFILE $ICONNAME.iconset/icon_256x256@2x.png
convert -resize 512x512 $ICONFILE $ICONNAME.iconset/icon_512x512.png
convert -resize 1024x1024 $ICONFILE $ICONNAME.iconset/icon_512x512@2x.png

# create icns file from iconset
iconutil -c icns $ICONNAME.iconset

# delete iconset folder
rm -rf $ICONNAME.iconset/
