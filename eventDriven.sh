#!/bin/bash

find . -type f -not -wholename "./.git/*" -exec dos2unix -q {} +
