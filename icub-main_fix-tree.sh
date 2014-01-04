#!/bin/bash

find . -type f -not -wholename "./.git/*" -and -not \( -name *.sln -or -name *.vcxproj \) -exec dos2unix -q {} +
if [ -d main ]; then
    cp -alf main/* .
    rm -Rf main
fi

if [ -f src/core/robotInterface/extern/tinyxml/tinyxml/tinyxml.sln ]; then
  cp $RC_RULESETDIR/icub-main.gitattributes .gitattributes
  find . -type f -name *.sln -or -name *.vcxproj -exec unix2dos -q {} +
fi
