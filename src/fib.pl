% Written by Gary Patricelli
% On or about 04/25/2014
% For CSC 435

% Base cases
fib(0, 0).
fib(1, 1).
fib(2, 1).

% Recursive case
fib(X, Answer) :- 
    X > 0,
    PrevPrev is X - 2, 
    Prev is X - 1, 
    fib(PrevPrev, X1),  
    fib(Prev, X2), 
    Answer is X1 + X2.
