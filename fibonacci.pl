launch_fib :-
    write('Please input an integer: '),
    read(N),nl, %read in an integer
    write('The Fibonacci series of '),
    write(N), write(' is: '),
    write(0),write(,),write(1),
    fib(N,0,1),nl.

fib(N,X,Y) :-
    (   
    	N<2,!; % cut if it reaches a base case
        SUM is X + Y,
        write(,), write(SUM),
        N1 is N-1,
        fib(N1,Y,SUM) %recursive
    ).
   
