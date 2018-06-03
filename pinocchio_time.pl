%time("beginning", 0).
%time("pinocchio created", 1).
%time("middle", 2).
%time("pinocchio turned into human", 3).
%time("end", 4).
%time("pinocchio is happy", 5).
%time("finish", 6).

before(X, Y) :- 
    event(X, A),
    event(Y, B),
    A < B,
    !.

after(X, Y) :- 
    event(X, A),
    event(Y, B),
    A > B,
    !.

beginning(X) :- 
    (
    	after(X, "act1"), 
     	before(X, "act2"),
        !
    );
    event(X, 0), !.

middle(X) :- 
    (
    	after(X, "act2"), 
     	before(X, "act4"),
        !
    );
    event(X, 0), !.

end(X) :- 
    (
    	after(X, "act4"),
        !
    );
    event(X, 0), !.
