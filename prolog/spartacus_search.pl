:- initialization(main).

spartacus_search([], _).
spartacus_search([X|Xs], Needle) :-
    write(X), nl,
    spartacus_search(Xs, Needle).

main :-
    spartacus_search([1,2,3,4,5], 3),
    spartacus_search([a,b,c], z),
    halt.
