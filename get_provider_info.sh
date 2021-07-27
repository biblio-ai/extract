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
  printf '\n' >>$output_file
  printf '\n' >>$output_file
  printf 'OAI Provider: '>> $output_file
  printf '%s\n' "$p" >> $output_file
  printf '\n' >>$output_file
  printf '```' >>$output_file
  printf '\n' >>$output_file
  METHA_DIR=$oar_dir metha-id $p | jq . >> $output_file
  printf '```' >>$output_file
done < $provider_list
