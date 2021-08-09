#!/bin/bash

#Set your Metha extracts directory
oai_dir="~/.cache/metha"
output_file="provider_xml.md"

NOW=$(date +"%Y-%m-%d")
printf "OAI extract date: $NOW" > $output_file
printf '\n' >>$output_file
printf '\n' >>$output_file
printf '```' >>$output_file
printf '\n' >>$output_file
METHA_DIR=$oai_dir metha-ls >> $output_file
printf '```' >>$output_file
