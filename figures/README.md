# Figures Folder

## About this folder:

In this folder, you will find all the graphs/plots generated throughout the whole pipeline. The whole pipeline is divided into THREE general steps as described in the README.md in the parent folder. Each folder represents different general steps and has all the plots generated in the corresponding step.

### 📂`DADA2 Workflow`:

-   Quality plots of reads before and after DADA2.filterAndTrim
-   Error plots generated after learning errors using filtered reads
-   Merged amplicon track plot, form which you can see the changes of each sample's reads as the workflow proceeds (Note: please refer to "NEW_QualPlot" for quality plots of the reads used for this whole analysis pipeline)

### 📂`Phyloseq_PreProcessing`:

-   Density plots of total sequences for each smaples of both dairy group and meat group
-   Histogram that represents the number of samples of each identified sequences

### 📂`Biodiversity Analysis`:

-   Completeness curve that shows the completeness of each sample
-   Rarefaction curve that indicate how species diversity would change as the #s of sequences increase
- Boxplots of observed species richness across source groups (meat and dairy)
