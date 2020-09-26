import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
%matplotlib inline
import seaborn as sns


tips = sns.load_dataset('tips') #loading dataset
tips.info()

tips.head()

#Distplot
sns.distplot(tips['total_bill'], kde = False) #plot "TIPS" using "TOTAL_BILL" as index.

#Jointplot
sns.jointplot(x='total_bill', y='tip', data=tips, kind='reg')

#Pairplot
sns.pairplot(tips, hue='sex')  #Pairplot takes all numeric variables, and "uses Jointplot" in it.

#rugplot and kdeplot
sns.rugplot(tips['total_bill'])
sns.kdeplot(tips['total_bill'])

