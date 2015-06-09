MACSpvalue=1e-7
FDR=30
INPUTcontrol=WCE_WT_d3_Th0_234

 BEDFILES=H3K4me3_LT_HSC.bed
 macs14 -t $BEDFILES -n macsoutput -f BED -p ${MACSpvalue} -w --single-profile
 Macs2Bedgraph macsoutput_peaks.xls > macsoutput.bedgraph
 #gunzip macsoutput_MACS_wiggle/treat/macsoutput_treat_afterfiting_all.wig.gz
 wigToBigWig macsoutput_MACS_wiggle/treat/macsoutput_treat_afterfiting_all.wig.gz /bin/mm10.chrom.sizes macsoutput_treat_afterfiting_all.bw