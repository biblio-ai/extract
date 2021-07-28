#!/bin/bash

#Set your Metha extracts directory
oai_dir="~/.cache/metha"

printf 'Git pull \n'
git pull

printf 'Metha-sync \n'
while IFS="" read -r p || [ -n "$p" ]
do
  printf '%s\n' "$p"
  METHA_DIR=$oar_dir metha-sync $p
done < provider_oai_list.txt

printf 'Run provider scripts \n'
./get_provider_info.sh
./get_provider_xml.sh

printf 'Git commit and push \n'
git add oai_extracts/*
git commit -am 'Auto commit'
git push
