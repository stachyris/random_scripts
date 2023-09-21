bioawk -c fastx '{print ">" $name ORS length($seq)}' /Users/vinaykl/EBB/ref/ncbi_dataset/data/GCA_009812075.1/GCA_009812075.1_Ss_LA_1.0_genomic.fna | paste - - > length_of_each_scaffold_of_Ss_ref.txt
