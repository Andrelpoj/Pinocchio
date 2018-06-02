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

% Actions:
% actions(who, what, when)
% what about actions like "raining"? 
action(gepetto,"carved pinocchio",1).
action(gepetto,"wished pinocchio to be a real boy",2).
action(fairy,"fullfilled gepetto's wish",3).
action(pinocchio,"nose grows","when he lies"). % how to know when he lies?
action(pinocchio,"promised to be a good boy from the next time","when he lies"). 
action(pinocchio,"left the school",5).
action(pinocchio,"joins a circus",6).
action(pinocchio,"missed gepetto",7).
action(whale,"swallow gepetto",8).
action(pinocchio,"heard gepetto was swallowed by a whale",9).
action(pinocchio,"found the whale",10).
action(whale,"swallow pinocchio",11).
action(gepetto,"make a plan",12).
action(pinocchio,"make a plan",12).
action(gepetto,"tickle the whale's belly",13).
action(pinocchio,"tickle the whale's belly",13).
action(whale,"opened his mouth and snezeed",14).
action(pinocchio,"slipped out of the whale",15).
action(gepetto,"slipped out of the whale",15).
action(gepetto,"reached home safely",16).
action(pinocchio,"reached home safely",16).
action(fairy,"turned pinocchio into a real boy",17).
action(pinocchio,"never missed school again",18). %how to represent from now on?

% Regras

boy(X):- man(X), age(X,young).
trust(X):- not(liar(X)).
want(X,Y):- wish(X, Y).
