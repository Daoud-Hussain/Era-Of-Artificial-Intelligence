domains
    female = symbol.
    male = symbol.

predicates
    female(female).
    male(male).
    listAllMales.

clauses
    female(rehana).
    female(sadia).
    female(aneela).

    male(sohail).
    male(john).
    male(mohsin).
    male(qudrat).

clauses
    listAllMales :-
        male(daoud), write("daoud"), nl,
        male(ali), write("ali"), nl,
        male(qamar), write("qamar"), nl,
        male(haris), write("haris"), nl.

goal
    listAllMales.

