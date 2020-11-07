#!/bin/bash

plugins="kubectl kind kustomize helm stern"

for p in $plugins
do
  if echo $(asdf plugin-list) | grep -q "$p"; then
    asdf plugin-update $p
  else
    asdf plugin-add $p
  fi
done

asdf install
