import stat
import fileinput
import os
import time
import random
import sys, traceback
import subprocess
from subprocess import Popen, PIPE
import cPickle
import string 
import re 

# import nltk
# from nltk.corpus import stopwords
# from nltk.probability import FreqDist
# from nltk import word_tokenize

from func2cleanASentence4github import * 

def submitJobs (fileInName , fileOutName):

	''' read in a file '''
	f = open(fileInName, 'r') 	#'/home/tiw15008/cleanfiles/harrypotter/newCorpfic/ficallnew.txt'
	textInFile = f.read() ## whole file
	f.close()
	''' clean this file '''
	textInFile = cleanSentencesInFile (textInFile,1,1) # remove long words, split into single sentences 
	f = open(fileOutName,"w") # "/home/tiw15008/cleanfiles/harrypotter/harrypotterfic/ficallnew_clean.txt"
	f.write(textInFile)
	f.close()


### -------------------------------------------------------
	
if len(sys.argv)<2:
	print("Usage: \n")
	sys.exit(1)
else:
	submitJobs ( sys.argv[1], sys.argv[2] ) 
	
	

