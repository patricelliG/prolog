% Written by Gary Patricelli
% On or about 04/25/2014
% For CSC 435

% Assumptions

female(alex).
female(mary).
male(carl).
male(joe).

married(mary, carl).
has_job(mary).
biology_major(joe).
watching_tv(joe).



% Rules
happy(X) :- watching_tv(X) ; (is_married(X) , (gets_sleep(X))).

busy(X) :- biology_major(X); has_job(X); has_children(X).

gets_sleep(X) :-  \+ ((biology_major(X),has_job(X)) ;
                     (biology_major(X),has_children(X)) ; 
                     (has_job(X),has_children(X));
                     (X == alex)).

has_children(X,Y) :- married(X,Y).

is_married(X) :- married(X,Y) ; married(Y,X).
