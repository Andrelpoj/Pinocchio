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
alive(gepetto).
alive(pinocchio).
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
event("carved pinocchio",1).
event("wished pinocchio to be a real boy",2).
event("fullfilled gepetto's wish",3).
event("nose grows","pinocchio lies"). % how to know when he lies?
event("promises to be a good boy from the next time","pinocchio lies"). 
event("left the school",5).
event("joins a circus",6).
event("missed gepetto",7).
event("swallow gepetto",8).
event("heard gepetto was swallowed by a whale",9).
event("found the whale",10).
event("swallow pinocchio",11).
event("make a plan",12).
event("tickle the whale's belly",13).
event("opened his mouth and snezeed",14).
event("slipped out of the whale",15).
event("reached home safely",16).
event("turned pinocchio into a real boy",17).
event("never missed school again",18). %how to represent from now on?

% Event Modifiers
% who(who,what)
who(gepetto,"carved pinocchio").
who(gepetto,"wished pinocchio to be a real boy").
who(fairy,"fullfilled gepetto's wish").
who(pinocchio,"nose grows").
who(pinocchio,"promised to be a good boy from the next time"). 
who(pinocchio,"left the school").
who(pinocchio,"joins a circus").
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
who(pinocchio,"slipped out of the whale").
who(gepetto,"slipped out of the whale").
who(gepetto,"reached home safely").
who(pinocchio,"reached home safely").
who(fairy,"turned pinocchio into a real boy").
who(pinocchio,"never missed school again").

% where(where,what)
where(school,"left the school").
where(circus,"joins a circus").
where(circus,"missed gepetto").
where("whale's belly","make a plan").
where("whale's belly","tickle the whale's belly").
where("whale's belly","slipped out of the whale").

% how(how,what).
how(safely,"reached home safely").

% why(why,what).

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

% Regras

boy(X):- man(X), age(X,young).
trust(X):- not(liar(X)).
want(X,Y):- wish(X, Y).
