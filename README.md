# R_Assignment_real -Edits- Prita

Most of the code works when I run without error. It was helpful to have notes and stackflow reference links. I was just wondering if downloading such big files caused memory issues. 
It might not be related but was just curious. I used the direct link from the githib to work with the files in R. Did you download the files?

I am trying to run the distribution plot to see if I how the graph looks with my edited files. 

I used tidy, pivot to clean the data as suggested by Dr. Lavrov, then use if else to select homozygous and heterozygous. Let me know if it runs with your code or
if you have questions. I used the merged file (fang + SNP) to make the graphs. 

# tidy_fang <- fang %>% select(-JG_OTU) %>% 
  pivot_longer( -Sample_ID:-Group, names_to = "SNP_ID", values_to = "Sequence")

# tidy_fang <- tidy_fang %>% 
  mutate(new_sequence = ifelse(Sequence %in% c("A/A","T/T","C/C","G/G"), "Homozygous", 
  ifelse(Sequence == "?/?", "Missing","Heterozygous")))
  
  For the last part, may be you can plot something that you want to check or explore with the data?May be check number of GC per chromosome? 
  
  


