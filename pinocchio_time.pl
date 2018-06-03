time("beginning", 0).
time("pinocchio created", 1).
time("middle", 2).
time("pinocchio turned into human", 3).
time("end", 4).
time("pinocchio is happy", 5).
time("finish", 6).


before(X, Y) :- 
    time(X, A),
    time(Y, B),
    A < B,
    !.

after(X, Y) :- 
    time(X, A),
    time(Y, B),
    A > B,
    !.

beginning(X) :- 
    (
    	after(X, "beginning"), 
     	before(X, "middle"),
        !
    );
    time(X, 0), !.

middle(X) :- 
    (
    	after(X, "middle"), 
     	before(X, "end"),
        !
    );
    time(X, 0), !.

end(X) :- 
    (
    	after(X, "end"), 
     	before(X, "finish"),
        !
    );
    time(X, 0), !.
