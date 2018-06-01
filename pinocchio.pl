age(gepetto,old).
age(pinocchio,young).
occupation(gepetto,carpenter).
carved(gepetto,pinocchio).
puppet(pinocchio).
man(gepetto).
man(pinocchio).
wish(gepetto,"pinocchio to be a real boy").
fullfilled_wish(fairy,gepetto).
alive(gepetto).
alive(pinocchio).
woman(fairy).
want(fairy,"if pinocchio was to be a real boy", "he must always be a good boy").
love(gepetto,pinocchio).
naughty(pinocchio).
liar(pinocchio).
nose_grow(pinocchio,"when he lies").
promised(pinocchio,"to be a good boy from the next time","when he lies").
join(pinocchio,circus).
misses(pinocchio,gepetto).
swallowed(whale, gepetto).
swallowed(whale, pinocchio).
what_where("pinocchio and gepetto were happy to see each other","whale’s belly").
make_plan(gepetto,"tickle the whale’s stomach").
make_plan(pinocchio,"tickle the whale’s stomach").
what_when("pinocchio and gepetto slipped out","whale sneezed").
what_when("pinocchio's nose grows","pinocchio lies").
reached_home_safely("gepetto").
reached_home_safely("pinocchio").
who_what(fairy,"was pleased with pinocchio’s bravery").
who_what(fairy,"fullfilled gepetto’s wish").
who_what_how(pinocchio,"reached home", safely).
who_what_how(gepetto,"reached home",safely).
who_what_why(the fairy,"turned pinocchio into a real boy","because she was pleased with pinocchio").
happy(pinocchio).
happy(gepetto).
boy(X):-man(X),age(X,young).
trust(X):-not(liar(X)).
