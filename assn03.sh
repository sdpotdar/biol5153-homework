assn03.sh

echo '#assn03-1'
for (( c=808; c<=8008; c++ ))
do
echo "TR- $c"
done

echo '#assn03-2'
alias trestles='sdpotdar@trestles.uark.edu'
alias pinnacle='sdpotdar@pinnacle.uark.edu'
alias l='ls -lt'

echo '#assn03-3'
cd Desktop/gene_trees
grep -c *.fasta | wc -l
#assn03-3
#15084

echo '#assn03-4'
grep -c *.tre | wc -l
#assn03-4
#14639

echo '#assn03-5'
grep -c *.sched | wc -l
#assn03-5
#15261

echo '#assn03-6'
#! bin/bash
for lack in *.fasta
do
if [[ -e ${lack%.fasta}_raxml.tre ]]; 
then
continue
else
echo 'lack tre file'
fi
done

echo '#assn03-7'
grep 'Program return code: 0' *.sched | uniq | wc -l
grep 'Program return code: *' *.sched | uniq | grep -v '0' | wc -l

