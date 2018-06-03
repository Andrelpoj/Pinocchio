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
event("carved",1).
event("wished to be a real boy",2).
event("fullfilled ",3).
event("nose grows","pinocchio lies"). % como saber quando ele mente?
event("promises to be a good boy","pinocchio lies").
event("act2", 5).
event("left",6).
event("joins",7).
event("missed",8).
event("swallow gepetto",9).
event("act3", 10).
event("heard",11).
event("found",12).
event("swallow pinocchio",12).
event("make a plan",13).
event("tickle",14).
event("opened his mouth and snezeed",15).
event("act4", 16).
event("slips out of", 17).
event("reached",18).
event("turned into a real boy",19).
event("never missed again",20). %how to represent from now on?

% Event Modifiers
% who(who,what)
who(gepetto,"carved").
who(gepetto,"wished to be a real boy").
who(fairy,"fullfilled").
who(pinocchio,"nose grows").
who(pinocchio,"promised to be a good boy"). 
who(pinocchio,"left").
who(pinocchio,"joins").
who("pinocchio's friends", "joins a circus").
who(pinocchio,"missed gepetto").
who(whale,"swallow").
who(whale,"swallow gepetto").
who(whale,"swallow pinocchio").
who(pinocchio,"heard").
who(pinocchio,"found").
who(whale,"swallow pinocchio").
who(gepetto,"make a plan").
who(pinocchio,"make a plan").
who(gepetto,"tickle").
who(pinocchio,"tickle").
who(whale,"opened his mouth and snezeed").
who(pinocchio,"slipped out of").
who(gepetto,"slipped out of").
who(gepetto,"reached").
who(pinocchio,"reached").
who(fairy,"turned into a real boy").
who(pinocchio,"never missed again").

% where(where,what) 
% Nao achei muito sentido nestas 5 clausulas abaixo, tem q revisar
%where(school,"left").
%where(circus,"joins a circus").
%where(circus,"missed gepetto").
%where(whale,"found the whale").
%where("whale's belly","tickle the whale's belly").
where("whale's belly","make a plan").
where("whale's belly","slipped out of").

% how(how,what).
how(safely,"reached home safely").

% why(why,what).
why("slips out of the whale", "tickle the whale's belly").

% verb_object(object,what).
verb_object(pinocchio,"carved").
verb_object(pinocchio,"wished to be a real boy").
verb_object("gepetto's wish","fullfilled").
verb_object(school,"left").
verb_object(circus,"joins").
verb_object(gepetto,"missed").
verb_object(gepetto,"swallow").
verb_object("gepetto was swallowed","heard").
verb_object(whale,"found").
verb_object(pinocchio,"swallow").
verb_object("whale's belly","tickle").
verb_object(whale,"slipped out of").
verb_object(home,"reached").
verb_object(pinocchio,"turned into a real boy").
verb_object(school,"never missed again").


what(Who, Action, What) :- 
    who(Who, Action), 
    verb_object(What, Action),
    !.

who(Action, Object, Who) :-
    verb_object(Object, Action),
    who(Who, Action),
    !.

where(Agent, Action, Where) :-
    who(Agent, Action),
    where(Where, Action),
    !.
    
% Regras
boy(X):- man(X), age(X,young).
trust(X):- not(liar(X)).
want(X,Y):- wish(X, Y).
