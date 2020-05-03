# Project Description

A single cell RNA sequencing project which aims to replicate some of the analysis in Baron et al, 2016 publication. The project analyzes the data of a type 1 diabetes human female and identifies some of cell subtypes by clustering with Seurat.  

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
