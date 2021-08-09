#!/bin/bash

#Set your Metha extracts directory
oai_dir="~/.cache/metha"

printf 'Git pull \n'
git pull

printf 'Metha-sync \n'
while IFS="" read -r p || [ -n "$p" ]
do
  printf '%s\n' "$p"
  oai_code=`echo $p | cut -d" " -f 1`
  oai_url=`echo $p | cut -d" " -f 2`
  oai_set=`echo $p | cut -d" " -f 3`
  printf $oai_set_url
  if [[ $oai_code == "NAME" ]] ; then
    printf 'Ignore header line \n'
    continue
  fi
  printf 'Metha-sync \n'
  if [[ ! -z "$oai_set" ]] ; then
    printf 'Metha-sync Set:\n'
    printf $oai_set
    METHA_DIR=$oai_dir metha-sync -set $oai_set $oai_url
  else
    printf 'Metha-sync All:\n'
    METHA_DIR=$oai_dir metha-sync $oai_url 
  fi
  #printf 'Metha-cat \n'
  #METHA_DIR=$oar_dir metha-cat $p 
done < provider_oai_list.txt

printf 'Run provider info scripts \n'
./get_provider_info.sh
printf 'Run provider xml scripts \n'
./get_provider_xml.sh

printf 'Git commit and push \n'
git add oai_extracts/*
git commit -am 'Auto commit'
git push
