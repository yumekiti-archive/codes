#!/bin/sh

# Visual Studio Code :: Package list
pkglist=(
  abusaidm.html-snippets
  mhutchie.git-graph
)

for var in ${pkglist[@]}
do
  code --install-extension $var
done