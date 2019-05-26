#!/bin/bash

dependencies="texlive texlive-latex-extra"

echo "Installing dependencies: $dependencies"
if [ $(id -u) = 0 ]; then
  apt update -qq
  apt install -y $dependencies
else
  sudo apt update -qq
  sudo apt install -y $dependencies
fi
