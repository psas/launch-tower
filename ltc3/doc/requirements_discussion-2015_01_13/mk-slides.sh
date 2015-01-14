#!/bin/sh

source=$1
stylesheet="$PWD/custom.css"

asciidoc --attribute stylesheet=$stylesheet $source
