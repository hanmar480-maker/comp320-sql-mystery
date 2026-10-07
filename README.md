# Introduction

A crime has taken place and the detective needs your help. The detective gave 
you the crime scene report, but you somehow lost it. You vaguely remember that 
the crime was a ​murder​ that occurred sometime on ​Jan.15, 2018​ and that it took 
place in SQL City. Start by retrieving the corresponding crime scene report from 
the police department’s database.

Use the following command to download the sqlite database:

```
wget https://github.com/NUKnightLab/sql-mysteries/raw/master/sql-murder-mystery.db
```

# 1.sql

Use the `crime_scene_report` table to retrieve the description of the 
crime as reported in the introduction

# 2.sql

Write a query to retrieve the person id from the 2 witnesses

# 3.sql

Retrieve the interviews transcripts from the 2 witnesses, you can simply include the person id from the previous question in your query.

# 4.sql

Based on the interviews from 3.sql, find out all id's from gym members using 
`get_fit_now_check_in` and `get_fit_now_members` that
matches the description.

# 5.sql

Based on the 2nd interviews from 3.sql, find out all person ids with 
the matching licence plate.  You will need to understand the relationship
between `person` and `drivers_licence` table.

# 6.sql

Write one single query that combines the results of 4.sql and 5.sql to retrieve the name
of the murderer.  The result should be one name.  For the 
purpose of this exercise, simply use the person id that appears 
in both 4.sql and 5.sql in your query.

If you insert the name of the murder into the `solution` table, you can 
see if you got it correct!  

To insert into the solution table, use the following sql command:

```
INSERT INTO solution VALUES (1, 'name of murderer');
SELECT value FROM solution;
```

# 7.sql

This is something you will find out after you have solved question 6 and inserted the name of the murderer into the solution table.

# NOTE

you may noticed that for the sql-mystery assignment, there are 7 questions but 9 tests.  The tricky part is question 6 and 7.

For both those questions, you need to provide a query that retrieves the murderer.  If you provide a query without using the `in` operator and without using subqueries, you will not get full marks.  For example say if the murder is John Smith for question 6, you can simply put the following into 6.sql

```
select 'John Smith'
```

But that would only get you to pass 1 out of 2 tests for question 6, since you didn't use subquery with the `in` operator.

# Hand-in

Test your solution by executing the following command on the bash terminal:

```shell
$ pytest
```

When you are satisified, execute the following commands to submit:

```shell
$ git add -A
$ git commit -m 'submit'
$ git push
```
