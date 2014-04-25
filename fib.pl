% Base cases
fib(1, 1).
fib(2, 1).
% Recursive case
fib(X, Answer) :- 
    PrevPrev is X - 2, 
    Prev is X - 1, 
    fib(PrevPrev, X1),  
    fib(Prev, X2), 
    Answer is X1 + X2.
