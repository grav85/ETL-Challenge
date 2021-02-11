ETL Challenge: ETL Team 1 
(S. Feinsilver, P. Berry, L. Ruiz, J. Graeve)

Introduction: ETL Consultants are trying to create a database for NFL teams where they can view a players combine performance to their actual draft position. The idea is that teams would be able to use historical data on past players to determine the ideal draft position of future players. We plan on looking at 5 years worth of combine results and draft results in order to build our database.

We were interested in the following information:

- NFL Draft Combine results (40 yd dash, vertical jump, bench press, broad jump, 3-cone   drill, and shuttle drill) for years 2016 - 2020.

- NFL Draft results (round, pick no. year)

- Player Information (name, height, weight, college attended, conference played in)

We obtained this information from the following websites:

https://www.pro-football-reference.com/draft/2020-combine.htm
https://www.pro-football-reference.com/draft/2019-combine.htm
https://www.pro-football-reference.com/draft/2018-combine.htm
https://www.pro-football-reference.com/draft/2017-combine.htm
https://www.pro-football-reference.com/draft/2016-combine.htm
https://en.wikipedia.org/wiki/2020_NFL_Draft
https://en.wikipedia.org/wiki/2019_NFL_Draft
https://en.wikipedia.org/wiki/2018_NFL_Draft
https://en.wikipedia.org/wiki/2017_NFL_Draft
https://en.wikipedia.org/wiki/2016_NFL_Draft

Transformation: In order to transform the data, we performed the following:
1.) Used Pandas functions in Jupyter Notebook to load tables from the websites
 

2.) Removed columns from the tables not pertaining to our database and renamed columns so both databases matched.
 

3.) Reviewed the files and appended tables from across years 2016 to 2020 for the draft and combine to create two seperate tables. 
 

4.) Reconciled issue between the draft data and combine data. There were instances of players attending the combine but not getting drafted. In the other case, there were players who were drafted but didn't participate in the combine. We seperated the list of names from each and combined them and then dropped the duplicates to get one combined players list. 
 

6.) Ended with loading three seperate tables into our database; players, combine, and draft. 

 



