#!/bin/bash

#Set your Metha extracts directory
oai_dir="~/.cache/metha"

while IFS="" read -r p || [ -n "$p" ]
do
  printf '%s\n' "$p"
  METHA_DIR=$oar_dir metha-sync $p
done < oai_provider_list.txt
