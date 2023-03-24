interact -c 4 --mem 50G
cd /scratch/cfc85413/PUFAS/data
ml R/4.2.1-foss-2020b

library("reshape2")

## READ THE TABLE INTO THE.
for_tab<-read.table('/scratch/cfc85413/PUFAS/data/forward.table.tsv',  header=TRUE, sep= "\t")
exposure<-for_tab[,c(1,2,11)]
df<-acast(exposure,outcome_name~exposure_name)


