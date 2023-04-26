# This is a set of outdated but working functions to parse data
# Custom functions were created to build metadata off of 
# sample ID names. 

# There are a few  functions 
# 1. Not in
# 2. make_MA_metadata - build metadata from sample ID Names 
# 3. matround - for better rounding 
# 3. scale_reads - scaling the data
# 4. make_MA2_metadata - build metadata from combined replicates.

#----------------------------------------------------------------
# 1. Function for "not in" a vector
'%!in%' <- function(x,y)!('%in%'(x,y))


make_MA_source <- function(dataframe){ 
  # Create new columnes based on information in the sample name
  dataframe$source <- substr(dataframe$source, 1,5)
}


# 2. make_MA_metadata, which wil build metadata from sample names. 

## This function adds the categorical metadata to a dataframe based on the sample name
# IMPORTANT!!!  The dataframe MUST have column named "names"

make_MA_metadata <- function(dataframe){ 
  # Create new columnes based on information in the sample name
  dataframe$source <- substr(dataframe$names, 13,16)
  
  
  
  # Create new columnes based on information in the sample name
 
 
  
  
  # Return the data
  return(dataframe)
  
}





# 
### scale_reads function
#################################################################################### 2
# Function to scale reads 
# Modified from code written by Michelle Berry, available at http://deneflab.github.io/MicrobeMiseq/ 
# Scales reads by 
# 1) taking proportions
# 2) multiplying by a given library size of n
# 3) rounding 
# Default for n is the minimum sample size in your library
# Default for round is floor

# 3. matround for better rounding 
matround <- function(x){trunc(x+0.5)}


# 4. scale reads function 
scale_reads <- function(physeq, n = min(sample_sums(physeq)), round = "round") {
  
  # transform counts to n
  physeq.scale <- transform_sample_counts(physeq, function(x) {(n * x/sum(x))})
  
  # Pick the rounding functions
  if (round == "floor"){
    otu_table(physeq.scale) <- floor(otu_table(physeq.scale))
  } else if (round == "round"){
    otu_table(physeq.scale) <- round(otu_table(physeq.scale))
  } else if (round == "matround"){
    otu_table(physeq.scale) <- matround(otu_table(physeq.scale))
  }
  
  # Prune taxa and return new phyloseq object
  physeq.scale <- prune_taxa(taxa_sums(physeq.scale) > 0, physeq.scale)
  return(physeq.scale)
}



######
#####
######

# 5. making metadata from replicates. 

make_MA2_metadata <- function(dataframe){ 
  
  # Create new columnes based on information in the sample name
  dataframe$source <- substr(dataframe$names, 13,16)
  
  # Return the data
  return(dataframe)
  
}
