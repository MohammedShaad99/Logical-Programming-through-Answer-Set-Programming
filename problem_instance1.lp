%-----------------------------------------------------------------------------------------------------------------------------------------------
% Name:-Mohammed Shaad Mehboob Matcheswala
% Student id:-21065797
%-----------------------------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------How to run the code----------------------------------------------------------------------
%clingo problem_encoding.lp problem_instance1.lp
%                     OR
%clingo problem_encoding.lp problem_instance1.lp -c m=15 -c k=50 -c p=275
%here the values of m, k and p could be provided through command line.
%-----------------------------------------------------------------------------------------------------------------------------------------------
#const n=5.
journal(1..n).%for taking N number of journals.
#const cr1 = 25. #const cr2 = 120. #const cr3 = 115. #const cr4 = 49. #const cr5= 30.%citation counts in related areas refer for all the five journals.
#const co1 = 10. #const co2 = 14. #const co3=6. #const co4 = 10. #const co5=13.% citation count in the in the subject are for all the five journals.
#const r1 = 1. #const r2 = 1. #const r3=5. #const r4=2. #const r5=2. %rating of the journals.
#const u1 = 150. #const u2 = 1110. #const u3=500.#const u4=212. #const u5=270. %total usage of the journals.
#const c1 = 20. #const c2 = 15. #const c3=35. #const c4=25. #const c5=27. % subscription cost
#const m=15.%The average of the citation count in subject, per canceled  journal, must be smaller or equal than m.
#const k=50.%he average of the citation count in related area, per canceled journal, must be smaller or equal than k.
#const p=275.%The total usage rate per quarter, of all the journals canceled from this list, must be smaller or equal than p

%assigning values to each journals
journal(1,c1).citationInRelated(1,cr1).citationInSubj(1,co1).rating(1,r1).cost(c1).usage(1,u1).
journal(2,c2).citationInRelated(2,cr2).citationInSubj(2,co2).rating(2,r2).cost(c2).usage(2,u2).
journal(3,c3).citationInRelated(3,cr3).citationInSubj(3,co3).rating(3,r3).cost(c3).usage(3,u3).
journal(4,c4).citationInRelated(4,cr4).citationInSubj(4,co4).rating(4,r4).cost(c4).usage(4,u4).
journal(5,c5).citationInRelated(5,cr5).citationInSubj(5,co5).rating(5,r5).cost(c5).usage(5,u5).