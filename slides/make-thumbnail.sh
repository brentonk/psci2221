#!/bin/bash

# Extract first two characters
STEM=`echo $1 | cut -c1-2`

# Look up the page of the PDF to use as a thumbnail
PAGE=`grep "^$STEM:" thumbnails.yml | cut -c5-`

# Convert the relevant page to tiff
OUT=`echo $1 | sed 's/pdf$/tiff/'`
convert $1[$PAGE] $OUT
