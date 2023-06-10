domains
    X = symbol.

predicates

    nondeterm stabs(symbol, symbol).
    nondeterm hates(symbol, symbol).

clauses


    stabs(mohsin, ali).

    hates(aliRelative, X) :- stabs(X, ali),
    write(X), write(" is hated by ali"), nl.

goal

    hates(aliRelative, X).
    

