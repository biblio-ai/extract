# Biblio.ai OAI harvesting/extract app


## List of OAI proividers to harvest from

[[provider_oai_list.txt]]

## List of OAI proividers server info - sets, formats etc..

[[provider_oai_server_info.md]]

## OAI harvest script

We use [Metha](https://github.com/miku/metha) to do automated harvests of the full OAI of providers to XML

[[do_extract.sh]]

## of OAI proividers server info - sets, formats etc..

`metha-ls`

[[provider_xml.md]]


## Scrcript

We use [Metha](https://github.com/miku/metha) to do automated harvests of the full OAI of providers to XML

[[get_provider_info.sh]]

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
