% Facts
male(zameer).
male(daoud).
male(usman).
male(luqman).
male(ikram).
female(shehnaaz).
female(safia).
female(ayesha).
female(kainaat).
parent(zameer, daoud).
parent(shehnaaz, daoud).
parent(zameer, usman).
parent(shehnaaz, usman).
parent(zameer, luqman).
parent(shehnaaz, luqman).
parent(zameer, ikram).
parent(shehnaaz, ikram).
parent(zameer, safia).
parent(shehnaaz, safia).
parent(zameer, ayesha).
parent(shehnaaz, ayesha).
parent(zameer, kainaat).
parent(shehnaaz, kainaat).

% Rules
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
brother(X, Y) :- male(X), sibling(X, Y).
sister(X, Y) :- female(X), sibling(X, Y).
ancestor(X, Z) :- parent(X, Z).
ancestor(X, Z) :- parent(X, Y), ancestor(Y, Z).

% Query Examples
/*
Query: father(zameer, Child).
Result: Child = daoud;
        Child = usman;
        Child = luqman;
        Child = ikram;
        Child = safia;
        Child = ayesha;
        Child = kainaat.
*/
/*
Query: sibling(daoud, Sibling).
Result: Sibling = usman;
        Sibling = luqman;
        Sibling = ikram;
        Sibling = safia;
        Sibling = ayesha;
        Sibling = kainaat.
*/
/*
Query: ancestor(zameer, Descendant).
Result: Descendant = daoud;
        Descendant = usman;
        Descendant = luqman;
        Descendant = ikram;
        Descendant = safia;
        Descendant = ayesha;
        Descendant = kainaat.
*/
