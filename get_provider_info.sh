#!/bin/bash

#Set your Metha extracts directory
oai_dir="~/.cache/metha"
output_file="provider_oai_server_info.md"
provider_list="provider_oai_list.txt"

NOW=$(date +"%Y-%m-%d")
printf "OAI extract date: $NOW" > $output_file
printf '\n' >>$output_file
while IFS="" read -r p || [ -n "$p" ]
do
  printf '%s\n' "$p"
  oai_code=`echo $p | cut -d" " -f 1`
  oai_url=`echo $p | cut -d" " -f 2`
  oai_set=`echo $p | cut -d" " -f 3`
  if [[ $oai_code == "NAME" ]] ; then
    continue
  fi
  printf '\n' >>$output_file
  printf '\n' >>$output_file
  printf 'OAI Provider: '>> $output_file
  printf '%s\n' "$p" >> $output_file
  printf '\n' >>$output_file
  printf '```' >>$output_file
  printf '\n' >>$output_file
  METHA_DIR=$oar_dir metha-id $oai_url | jq . >> $output_file
  printf '```' >>$output_file
done < $provider_list
