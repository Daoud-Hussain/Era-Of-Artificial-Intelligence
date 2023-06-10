domains
    person = symbol.
    Parent = symbol.
    Grandchild = symbol.

predicates
    nondeterm parent(symbol, symbol).
    nondeterm teacher(symbol).
    nondeterm get_grandChild.

clauses
    parent(albert, bob).
    parent(albert, betsy).
    parent(albert, bill).
    parent(alice, bob).
    parent(alice, betsy).
    parent(alice, bill).
    parent(bob, carl).
    parent(bob, charlie).

    teacher(albert).
    teacher(alice).

    get_grandChild :-
        parent(albert, Parent),
        parent(Parent, Grandchild),
        write("Albert's grandchild is "),
        write(Grandchild), nl.

goal
    parent(Parent, carl),
    parent(Parent, charlie),
    write("Parent = "), write(Parent), nl,
    get_grandChild.
