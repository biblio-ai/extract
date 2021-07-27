#!/bin/bash

#Set your Metha extracts directory
oai_dir="~/.cache/metha"

git pull

while IFS="" read -r p || [ -n "$p" ]
do
  printf '%s\n' "$p"
  METHA_DIR=$oar_dir metha-sync $p
done < provider_oai_list.txt

git commit -am 'Auto commit'
git push
