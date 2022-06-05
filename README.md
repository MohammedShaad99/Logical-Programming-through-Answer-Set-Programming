# Logical-Programming-through-Answer-Set-Programming
# Discription of the problem
Consider the following situation:<br>
A university library needs to cancel its subscription to a number of journals
to meet a proposed budget cut. There are n candidate journals j1, . . . , jn under
consideration. To decide which journals to cancel, the following information will
be used. For each journal ji
, 1 ≤ i ≤ n, we have the following.
• The citation counts coi
in the subject area and the citation counts cri
in
related areas refer to the average number of times per year that articles
appearing in ji are referenced in the appropriate scientific literature.
• The university rating ri of ji
is an average score between 1 and 5 given by
the faculty of the university as an indication of the importance of journal ji
,
in which the higher the score, the more important the journal is.
• The usage data ui of ji
is the average number of times hard copies of ji
have been borrowed or online copies of ji have been accessed per quarter.
• The subscription cost sci.<br>
Your task is to write a logic program for helping the university library with this process.
Using the information above, the program should determine which journals to cancel, and
the following constraints need to be satisfied.<br>
• Citation count in subject: The average of the citation count in subject, per canceled
journal, must be smaller or equal than m.
• Citation count in related area: The average of the citation count in related area, per
canceled journal, must be smaller or equal than k.
• Faculty ratings: The average of the faculty rating, per canceled journal, must be
smaller or equal than 3.
• Journal usage: The total usage rate per quarter, of all the journals canceled from this
list, must be smaller or equal than p.
• Maximize the total subscription cost of journals canceled.
# Task 1:
1. Write a logic program in ASP (problem encoding.lp) which finds all solutions to the
problem, given n, m, k, p, coi
, cri
, ri
, ui
, sci
for all 1 ≤ i ≤ n. Document your code so
the following is clear.
(a) How it should be used.
(b) What the approach to solving the problem is. In particular, you need to explain
what each rule achieves and how the rule achieves it.
Include your name and student id in the comments.
2. Write three problem instances (problem instancei.lp, for all i ∈ {1, 2, 3}) to test your
program. Document your code so it is clear what the instance is modeling.
# Task 2:
Write a short report on how logic programming relates to the problem:
1. Provide, an analysis of the design and functionality of your program
in terms of the Guess-and-Test modeling methodology.
2. Provide, two arguments for and two arguments against using logic
programming to solve the problem.

