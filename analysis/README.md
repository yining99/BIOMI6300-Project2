# Analysis Folder

## About this folder:

In this folder, you will find all the RMarkdown files I created for the whole biodiversity analysis pipeline, from raw reads filtering and trimming, to unnecessary taxa removal and eventual biodiversity analysis.

### 📃`DADA2 Workflow.Rmd`:

**Main package used for this workflow: 📦`DADA2`**

-   calculating and plotting the quality of sequences before and after trimming

-   training error model

-   inferring ASVs (Amplicon Sequence Variants) to filtered reads

-   merging pairs using forward and reverse reads

-   generating count tables

-   removing chimeras/bimeras

-   tracking sequences

-   assigning taxonomy to merged amplicons

### 📃`Phyloseq_Prepocessing.Rmd`:

**Main package used for this workflow: 📦`Phyloseq`**

-   removing unnecessary taxa, including Mitochondria and Chloroplast ASVs (no control/mock community in the samples)
-   evaluating sequence depth
-   removing samples with too few reads

### 📃`Biodiversity Analysis`:

**Main package used for this workflow: 📦`iNEXT`**

-   plotting completeness curve indicating sample coverage based on samples
-   plotting observed species richness in two source groups (dairy group and meat group)
