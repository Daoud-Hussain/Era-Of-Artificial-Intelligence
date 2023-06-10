domains
    person = symbol.
    GF = symbol. C = symbol.

predicates
    nondeterm parent(symbol, symbol).
    nondeterm grandparent(symbol, symbol).

clauses
    parent(albert, bob).
    parent(albert, betsy).
    parent(albert, bill).
    parent(alice, bob).
    parent(alice, betsy).
    parent(alice, bill).
    parent(bob, carl).
    parent(bob, charlie).

    grandparent(GP, C) :-
        parent(GP, P),
        parent(P, C).

goal
    grandparent(GP, carl),
    write(GP), nl.
    