#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Feb 15 15:15:25 2019

@author: tianyu
"""

import os
import numpy as np
import pandas as pd
import gensim

#-------------------------------------------------------------------------------------------
#set the path
os.chdir("/Users/tianyu/Google Drive/gene2vec/word2vec2compareGenes-master/harrypotter/w2v_models/")
#set the book 
book_num = '2016'
# set the target word
target = 'ron' 
# set how many similar words you are looking for the target word
num = 100  
# set the word that you want to see the 300-dimension vectors
target_word4vector = 'harry'  

#-------------------------------------------------------------------------------------------
model = gensim.models.Word2Vec.load('w2v042419_'+book_num) # load the model

#transform word vectors to dictionary
words_dict = dict({})
for idx, key in enumerate(model.wv.vocab):
    words_dict[key] = model.wv[key]

#-------------------------------------------------------------------------------------------
# generate the similar words around the target word
# In this example, we are generating the most 100 similar words for 'ron'
#'ron' and 100 are already set in the begining, the 19th line and 21st line in this code, no need to change the following code
# It will be saved in a .csv file, e.g. 'words4ron_book1.csv'
similar_words = pd.DataFrame(model.wv.most_similar(positive = target, topn = num),columns=['neighbour','similarity']) 
similar_words.to_csv('words4'+target+'_book'+book_num+'.csv', header = True)


#-------------------------------------------------------------------------------------------

#If you do not have interest in the 300 dimension array vectors, you do not need to run:
#display word vector 
print(words_dict[target_word4vector])
# save to a .txt file, e.g. vectors for 'harry' will be saved in a file named 'harry4vector.txt'. 
#'harry' is already set in the begining, the 23rd line in this code, no need to change the following code
np.savetxt(target_word4vector+'4vector.txt', words_dict[target_word4vector])   