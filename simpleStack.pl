push([],STACK,STACK).
push([X|Y],STACK,[X,STACK1]):-
    push(Y,STACK,STACK1).

pop(X,[X],[]).
pop(X,[Y|STACK],[Y,STACK1]):-
    pop(X,STACK,STACK1).

%Stuff below goes into termial
%push([73,43,14,53],37,X).
%
%stack works with Strings too
%push(['wassssssap'],'yerrrrrr',X).
%
%Strings and integers
%push(['Osa',0,'Tachancka'],'Sledge',X).
%
%pop(4,[1,2,3,4],X).
