domains
    grade = integer.

predicates
    nondeterm whatGrade(integer).

clauses
    whatGrade(5) :-
        write("Grade is 5").

    whatGrade(6) :-
        write("Grade is 6").

    whatGrade(Other) :-
        write("Grade is "), write(Other),nl.

goal
    whatGrade(8).
