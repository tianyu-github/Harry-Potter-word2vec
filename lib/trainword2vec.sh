#!/bin/sh
#SBATCH --partition=general                   # Name of partition
#SBATCH --ntasks=18                         # Request 48 CPU cores
#SBATCH --nodes=1
#SBATCH --time=01:00:00
#SBATCH --mail-type=END                      # Event(s) that triggers email notification (BEGIN,END,FAIL,ALL)
#SBATCH --mail-user=<tianyu.wang@uconn.edu>    # Destination email address


cd /home/tiw15008/cleanfiles/harrypotter/


module load python/3.5.2

#python trainWord2VecModel4github.py /home/tiw15008/cleanfiles/files2train1/ /home/tiw15008/cleanfiles/fasttextmodel/ fasttext092918 0 none 100 300 18

#python trainWord2VecModel4github.py /home/tiw15008/cleanfiles/files2train/ /home/tiw15008/cleanfiles/fasttextmodel/ fasttext092919 0 none 100 300 18
python trainWord2VecModel4github.py /home/tiw15008/cleanfiles/harrypotter/HPcleanbook1 /home/tiw15008/cleanfiles/harrypotter/ w2v03252020_ficallnew 0 none 3 300 18
#python trainWord2VecModel4github.py /home/tiw15008/cleanfiles/harrypotter/HPcleanbook2 /home/tiw15008/cleanfiles/harrypotter/ w2v042419_2010 0 none 3 300 18
#python trainWord2VecModel4github.py /home/tiw15008/cleanfiles/harrypotter/HPcleanbook3 /home/tiw15008/cleanfiles/harrypotter/ w2v042419_2011 0 none 3 300 18
#python trainWord2VecModel4github.py /home/tiw15008/cleanfiles/harrypotter/HPcleanbook4 /home/tiw15008/cleanfiles/harrypotter/ w2v042419_2012 0 none 3 300 18
#/home/tiw15008/cleanfiles/bigram.data 100 300 18


#python modeltest.py
