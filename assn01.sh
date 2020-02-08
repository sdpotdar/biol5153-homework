##Assignment1_SP

echo assn01-1
find Desktop/watermelon_files/watermelon_nt -name "nad*"

echo assn01-2
ps aux
cat /proc/meminfo | grep MemTotal
cat /proc/meminfo | grep MemFree
cat /proc/meminfo | grep MemAvailable

####Comments
#What command did I use to show what processess are running on my machine: $ ps aux
#What percent of CPU is being used by that command: 0.0
#Total memory output: MemTotal:       16212480 kB
#Total memory free: MemFree:          332520 kB
#Total memory available: MemAvailable:    9027456 kB 

echo assn01-3
grep misc_feature watermelon.gff | less -S |sort -k7gr > IR_regions.gff
less -S IR_regions.gff

echo assn01-4
grep -cv IR IR_regions.gff; grep -c IR IR_regions.gff

echo assn01-5
#Genes that lack EcoRI site
grep -v "ATT" *.fasta > lack_ecori.fasta
#Genes that have BamHI site
grep -o "GGATTC" lack_ecori.fasta
#Comments
#All genes that lack EcoRI sites have BamHI sites.

echo assn01-6
awk 'NR==500,NR==1000{print}' shaver_etal.csv

echo assn01-7
sort -k2,2 -r -k3,2 fruit.txt | column -t



