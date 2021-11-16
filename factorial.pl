%Jin Long Shi
%Use this path when compiling: ['c:/Users/shiji/Documents/factorial.pl'].
factorial(0,F):-
F is 1.
factorial(N,F):-
(
    N>=0 -> %If N is greater than or equal to 0 then do this
    (
        N1 is N-1,
        factorial(N1,F1),
        F is N*F1
    )
    ;N<0 -> %Else if N is less than 0
	write('N Should be 0 or greater XD')
    ; %Else!
        write('N has to be a number!') %Else the person did not put in a number !
).

