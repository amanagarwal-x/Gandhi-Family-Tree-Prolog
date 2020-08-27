%gender
male(rajiv).
male(rahul).
male(feroze).

female(priyanka).
female(sonia).
female(indira).

%parent relation
father(rajiv, rahul).
father(rajiv, priyanka).
father(feroze, rajiv).
father(feroze, sanjay).

mother(sonia, rahul).
mother(sonia, priyanka).
mother(indira, rajiv).
mother(indira, sanjay).

%other relations
child(X, Y) :-
    (   father(Y, X)
    ;   mother(Y, X)
    ).

grandfather(Z, Y) :-
    (   father(X, Y),
        father(Z, X)
    ;   mother(X, Y),
        father(Z, X)
    ).

grandmother(Z, Y) :-
    (   father(X, Y),
        mother(Z, X)
    ;   mother(X, Y),
        mother(Z, X)
    ).

sibling(X, Y) :-
    father(Z, X),
    father(Z, Y),
    X\=Y.

spouse(X, Y) :-
    father(X, Z),
    mother(Y, Z),
    X\=Y.

uncle_or_aunt(X, Y) :-
    (   father(Z, Y),
        sibling(X, Z)
    ;   mother(Z, Y),
        sibling(X, Z)
    ).

neice(X, Y) :-
    sibling(Y, Z),
    child(X, Z).


related(X, Y) :-
    (   mother(X, Y)
    ;   father(X, Y)
    ;   child(X, Y)
    ;   grandfather(X, Y)
    ;   grandmother(X, Y)
    ;   sibling(X, Y)
    ;   spouse(X, Y)
    ;   uncle_or_aunt(X, Y)
    ;   neice(X, Y)
    ).



tree(X) :-
    (   father(A, X),
        nl,
        write('Father: '),
        write(A))

    ;   (mother(B, X),
        nl,
        write('Mother: '),
        write(B))
           
    ;   (spouse(I, X),
        nl,
        write('Sposue: '),
        write(I))

    ;   (child(H, X),
        nl,
        write('child: '),
        write(H))

    ;   (sibling(C, X),
        nl,
        write('Sibling: '),
        write(C))

    ;   (grandfather(D, X),
        nl,
        write('Grandfather: '),
        write(D))


    ;   (grandmother(F, X),
        nl,
        write('Grandmother: '),
        write(F))


    ;   (uncle_or_aunt(E, X),
        nl,
        write('Uncle/Aunt: '),
        write(E))
       
        
    ,   nl. 



run() :-
    nl,
    write(' Hi! Welcome to Gandhi Family tree generator!'),
    nl,    nl,
    write(' Write tree(<name>). to view family tree of any member of the Gandhi family! :)'),
    nl,    nl,
    write(' For example, type tree(rahul). to see the family tree of Rahul Gandhi'),
    nl,    nl,
    write(' Iterable family members are rahul, sonia, rajiv, priyanka, feroze, indira'),
    nl,    nl,
    write(' NOTE: Enter names of people in small case only'),
    nl,    nl,
    write(' NOTE: PRESS ; AFTER EACH RELATION'),
    nl,    nl.
