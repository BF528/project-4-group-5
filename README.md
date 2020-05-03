# Project Description

A brief description of what this repository is for and what it contains

# Contributors

Data Curator: Salam AlAbdullatif

Programmer: Evie Wan

Analyst: Mary T. Yohannes

Biologist: Eetu Eklund

# Repository Contents
indexing.sh: bash script which creates the salmon indexing directory required to run alevin

all_salmon.qsub.sh: qsub script which runs salmon alevin on all three runs from the sample

genes.R: R script which takes the UMI reads per barcode and outputs a whitelist based on mean read counts


programmer.rmd: reads UMI counts matrix, filters low-quality cells, clusters cells and identifies subtypes


analyst.rmd: identifies marker genes and labels cell subtypes, visualizes clusters and marker genes, identifies novel marker genes
