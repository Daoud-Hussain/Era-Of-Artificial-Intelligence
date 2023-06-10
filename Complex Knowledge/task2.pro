domains
    person = symbol.

predicates
    listensToMusic(person).
    happy(person).
    playsAirGuitar(person).

clauses
    listensToMusic(mia).
    happy(yolanda).
    playsAirGuitar(mia) :-
        listensToMusic(mia),
        write("Mia plays air guitar if she listens to music").

goal
    playsAirGuitar(mia).
