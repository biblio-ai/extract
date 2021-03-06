# Biblio.ai OAI harvesting/extract app

The OAI data harvesting and extraction tool for Biblio.ai, which allows for the automated harvesting of the full XML (to local XML files) records of an OAI provider

The currently harvested OAI providers are State Library of Victoria (Rosetta/Images) and Swinburne Commons - from Swinburne University of Technology

The purpose of Biblio.ai is to automate the enrichment of a libraries digital collections (photos, scanned documents, audio, etc) using AI tools - focused around enabling accessibility and discoverablility of digital items.

The harvesting of OAI records is the first step in the automated process:

Harvest OAI (we are here) -> Load into database -> Enrich records with AI -> Publish enriched records 

## List of OAI proividers to harvest from

[provider_oai_list.txt](provider_oai_list.txt)

If you have a suggestion for an OAI server we should harvest from (our focus is on images, audio and scanned documents) please post and issue - or do a pull request and I'll add it to the list 

Providers in this list get auto harvested each day and oai auto uploaded into this git repository

## List of OAI proividers server info - sets, formats etc..

[provider_oai_server_info.md](provider_oai_server_info.md)

## OAI harvest script

We use [Metha](https://github.com/miku/metha) to do automated harvests of the full OAI of providers to XML

[do_extract.sh](do_extract.sh)

This script reads the [provider_oai_list.txt](provider_oai_list.txt) file and does automated git pull and gitp ush to this repository to keep it in sync

## XML folder in oai_extracts

List of folders in `oai_extracts` and which OAI provider it corresponds to

[provider_xml.md](provider_xml.md)

## Scripts

`metha-ls` to get list of XML folders for each OAI provider
[get_provider_xml.sh](get_provider_xml.sh)

## Notes

Sync SLV OAI

```
METHA_DIR=~/biblio.ai.extract/oai_extracts metha-sync https://rosetta.slv.vic.gov.au/oaiprovider/request
METHA_DIR=~/biblio.ai.extract/oai_extracts metha-sync https://commons.swinburne.edu.au/oai
```

```
METHA_DIR=~/biblio.ai.extract/oai_extracts metha-ls
I29haV9kYyNodHRwczovL2NvbW1vbnMuc3d...          oai_dc  https://commons.swinburne.edu.au/oai
I29haV9kYyNodHRwczovL3Jvc2V0dGEuc2x...          oai_dc  https://rosetta.slv.vic.gov.au/oaiprovider/request
```
