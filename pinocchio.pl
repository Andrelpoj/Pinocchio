consult('pinocchio_time.pl').

% Facts
% Entities: pinocchio, gepetto, fairy... 

% Attributes: 
% Simple: attr(entity) or attr(entity,value)
% Compound: attr(entity,v1,v2,...)
age(gepetto,old).
age(pinocchio,young).
occupation(gepetto,carpenter).
puppet(pinocchio).
man(gepetto).
man(pinocchio).
woman(fairy).
wish(gepetto,"pinocchio to be a real boy").
wish("if pinocchio was to be a real boy he must always be a good boy").
naughty(pinocchio).
liar(pinocchio).

% Attributes that may change value over time
alive(gepetto, T):- true, T > 0, !.
alive(pinocchio, T) :- event("fullfilled gepetto's wish", X), X < T, !.
happy(gepetto).
happy(pinocchio).
pleased(fairy).
real_boy(pinocchio).
good_boy(pinocchio).

% Relations:
% rel(entity1,entity2).
father(gepetto,pinocchio).
son(pinocchio,gepetto).
love(gepetto,pinocchio).

% Events:
% event(what, when)
% The story is a sequence of events.
event("act1", 0).
event("carved pinocchio",1).
event("wished pinocchio to be a real boy",2).
event("fullfilled gepetto's wish",3).
event("nose grows","pinocchio lies"). % como saber quando ele mente?
event("promises to be a good boy from the next time","pinocchio lies").
event("act2", 5).
event("left the school",6).
event("joins a circus",7).
event("missed gepetto",8).
event("swallow gepetto",9).
event("act3", 10).
event("heard gepetto was swallowed by a whale",11).
event("found the whale",12).
event("swallow pinocchio",12).
event("make a plan",13).
event("tickle the whale's belly",14).
event("opened his mouth and snezeed",15).
event("act4", 16).
event("slips out of the whale", 17).
event("reached home safely",18).
event("turned pinocchio into a real boy",19).
event("never missed school again",20). %how to represent from now on?

% Event Modifiers
% who(who,what)
who(gepetto,"carved pinocchio").
who(gepetto,"wished pinocchio to be a real boy").
who(fairy,"fullfilled gepetto's wish").
who(pinocchio,"nose grows").
who(pinocchio,"promised to be a good boy from the next time"). 
who(pinocchio,"left the school").
who(pinocchio,"joins a circus").
who("pinocchio's friends", "joins a circus").
who(pinocchio,"missed gepetto").
who(whale,"swallow gepetto").
who(pinocchio,"heard gepetto was swallowed by a whale").
who(pinocchio,"found the whale").
who(whale,"swallow pinocchio").
who(gepetto,"make a plan").
who(pinocchio,"make a plan").
who(gepetto,"tickle the whale's belly").
who(pinocchio,"tickle the whale's belly").
who(whale,"opened his mouth and snezeed").
who(pinocchio,"slips out of the whale").
who(gepetto,"slips out of the whale").
who(gepetto,"reached home safely").
who(pinocchio,"reached home safely").
who(fairy,"turned pinocchio into a real boy").
who(pinocchio,"never missed school again").

% where(where,what)
where(school,"left the school").
where(circus,"joins a circus").
where(circus,"missed gepetto").
where(whale,"found the whale").
where("whale's belly","make a plan").
where("whale's belly","tickle the whale's belly").
where("whale's belly","slipped out of the whale").

% how(how,what).
how(safely,"reached home safely").

% why(why,what).
why("slips out of the whale", "tickle the whale's belly").

% verb_object(object,what).
verb_object(pinocchio,"carved pinocchio").
verb_object(pinocchio,"wished pinocchio to be a real boy").
verb_object("gepetto's wish","fullfilled gepetto's wish").
verb_object(school,"left the school").
verb_object(circus,"joins a circus").
verb_object(gepetto,"missed gepetto").
verb_object(gepetto,"swallow gepetto").
verb_object("gepetto was swallowed by the whale","heard gepetto was swallowed by a whale").
verb_object(whale,"found the whale").
verb_object(pinocchio,"swallow pinocchio").
verb_object("whale's belly","tickle the whale's belly").
verb_object(whale,"slipped out of the whale").
verb_object(home,"reached home").
verb_object(pinocchio,"turned pinocchio in a real boy").
verb_object(school,"never missed school again").

% Rules
boy(X):- man(X), age(X,young).
trust(X):- not(liar(X)).
want(X,Y):- wish(X, Y).
%happy(who, when)
happy(pinocchio, T):- (time_constants(T, X), bigger(X, 12)); bigger(T, 12).

% Comparison rules
% bigger and smaller only accept numbers. If not number return false.
bigger(X, Y):- number(X), number(Y), X > Y.
smaller(X, Y):- number(X), number(Y), X < Y.
equal(X, Y):- X = Y.

% Time constants
beginning_(3).
middle_(15).
end_(20).
% time_constants(period, variable)
% the variable will me used to store the constant
time_constants(T, X):- (equal(T, "beginning"), beginning_(X)); 
                       (equal(T, "middle"), middle_(X)); 
                       (equal(T, "end"), end_(X)).