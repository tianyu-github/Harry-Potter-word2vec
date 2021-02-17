#!/bin/sh
#SBATCH --partition=general                   # Name of partition
#SBATCH --ntasks=20                           # Request 48 CPU cores
#SBATCH --nodes=1
#SBATCH --time=01:00:00                  # Job should run for up to 2 hours (for example)
#SBATCH --mail-type=END                      # Event(s) that triggers email notification (BEGIN,END,FAIL,ALL)
#SBATCH --mail-user=<tianyu.wang@uconn.edu>    # Destination email address


cd /home/tiw15008/cleanfiles/harrypotter/

module load gcc/5.4.0-alt
module load python/2.7.6

#python cleanOneFile4github.py /home/tiw15008/cleanfiles/harrypotter/newCorpfic/2009.txt /home/tiw15008/cleanfiles/harrypotter/harrypotterfic/2009_clean.txt
#python cleanOneFile4github.py /home/tiw15008/cleanfiles/harrypotter/newCorpfic/2010.txt /home/tiw15008/cleanfiles/harrypotter/harrypotterfic/2010_clean.txt
#python cleanOneFile4github.py /home/tiw15008/cleanfiles/harrypotter/newCorpfic/2011.txt /home/tiw15008/cleanfiles/harrypotter/harrypotterfic/2011_clean.txt
#python cleanOneFile4github.py /home/tiw15008/cleanfiles/harrypotter/newCorpfic/2012.txt /home/tiw15008/cleanfiles/harrypotter/harrypotterfic/2012_clean.txt
#python cleanOneFile4github.py /home/tiw15008/cleanfiles/harrypotter/newCorpfic/2013.txt /home/tiw15008/cleanfiles/harrypotter/harrypotterfic/2013_clean.txt
#python cleanOneFile4github.py /home/tiw15008/cleanfiles/harrypotter/newCorpfic/2014.txt /home/tiw15008/cleanfiles/harrypotter/harrypotterfic/2014_clean.txt
#python cleanOneFile4github.py /home/tiw15008/cleanfiles/harrypotter/newCorpfic/2015.txt /home/tiw15008/cleanfiles/harrypotter/harrypotterfic/2015_clean.txt
#python cleanOneFile4github.py /home/tiw15008/cleanfiles/harrypotter/newCorpfic/2016.txt /home/tiw15008/cleanfiles/harrypotter/harrypotterfic/2016_clean.txt
#python cleanOneFile4github.py /home/tiw15008/cleanfiles/harrypotter/newCorpfic/2017.txt /home/tiw15008/cleanfiles/harrypotter/harrypotterfic/2017_clean.txt
python cleanOneFile4github.py /home/tiw15008/cleanfiles/harrypotter/newCorpfic/ficallnew.txt /home/tiw15008/cleanfiles/harrypotter/harrypotterfic/ficallnew_clean.txt

