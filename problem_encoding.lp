%-----------------------------------------------------------------------------------------------------------------------------------------------
% Name:-Mohammed Shaad Mehboob Matcheswala
% Student id:-21065797
%-----------------------------------------------------------------------------------------------------------------------------------------------
%------------------------------------------------------How to run the code----------------------------------------------------------------------
%clingo problem_encoding.lp problem_instance1.lp
%                     OR
%clingo problem_encoding.lp problem_instance1.lp -c m=15 -c k=50 -c p=275
%clingo problem_encoding.lp problem_instance2.lp
%                     OR
%clingo problem_encoding.lp problem_instance2.lp -c m=15 -c k=50 -c p=275
%clingo problem_encoding.lp problem_instance3.lp
%                     OR
%clingo problem_encoding.lp problem_instance3.lp -c m=15 -c k=50 -c p=275
%-----------------------------------------------------------------------------------------------------------------------------------------------


% Guess step, where all the canceledjournal list are generated.
1{canceledjournal(X):journal(X,_)}.
%Achieved: all the possible sets are generated for the canceledjournal, and for 5 journal it generated 31 sets.
%Explaination:- the 1{canceledjournal(X):journal(X,_)} indicats that the there should be atleast one set.
%example of the generated set:- Answer: 1 canceledjournal(coneflower)
%Answer: 2  canceledjournal(carmine)
%Answer: 3  canceledjournal(carmine) canceledjournal(coneflower) ....................
%Answer: 31 canceledjournal(nectaroy) canceledjournal(myriapoda) canceledjournal(carmine) canceledjournal(livemoreeachday) canceledjournal(coneflower)
%journal(X,_) this indicates journal and "_" this is anonymous variable which is used instead of cost variable as at this step  defining cost is not important and could be confusing.


%Test constraints.
:-canceledjournal(X),citationInSubj(X,Y),m<Y.
%Achieved: first test rule in which we eliminated the answer sets from the canceledjournal in which the value of 
%the citation count in a subject area of a particular journal (Y) is greater than m (citation count in subject). 
%Explaination:-This should not be the case that Y is greater than m. So, if the journal's Citations in Related Area(cr)
%is greater than required minimum value (m) then it will be deleted from the canceledjournal list.
%It will not be apearing in the canceledjournal list any more. The journals which are not deleted are left and to be displayed in the canceedjournal list. 


:-canceledjournal(X),citationInRelated(X,Y), k<Y.
%Achieved: second test rule in which we eliminated the answer sets from the canceledjournal in which the value of 
%the citation count in related area of a particular journal (Y) is greater than k (citation count in related area).
%Explanation:-This should not be the case where Y is greater than co (citation counts in the subject), as it will deleted from the canceledjournal list.


:-canceledjournal(X),rating(X,L), 3<=L.
%Achieved:-deleted all the answer sets from canceledjournal whose rating are more than 3.
%Explanation:-This should not be the case where L is greater than r (rating of the journal), as it will deleted from the canceledjournal list.


:-#sum {A,X:canceledjournal(X),usage(X,A)} < p.
%Achieved:-delete answer sets from the list of canceledjournal based on the total usage of the journals. If the total usage of a perticular journal (A)
%greater than p(usage of the journal) then remove from canceledjournal.
%Explaination:- for calculating the total usage of journal we used the #sum aggregate.


#maximize{C:canceledjournal(X),journal(X,C)}.
%Achieved:- applied optimization and the canceledjournal will contain the the journals with highest cost. 
%Explaination:- maximize will consider the value of all the cost (C) and provide the maximum the value in the canceledjournal.



#show canceledjournal/1. 
%Achieved:-displayed only the sets journal which have the least citation count in subject, Citation count in related area, faculty ratings and journal usage.





