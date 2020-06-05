:-op(1000, xfy, ==>).

% Sentence
% the drivers racing these cars on these tracks.

%% LEXICON
n(cars) ==> [cars].
n(drivers) ==> [drivers].
n(people) ==> [people].
n(tracks) ==> [tracks].
v(Y^X^race(X, Y)) ==> [racing].
p(X^on(X)) ==> [on].
d(X^these(X)) ==> [these].
d(X^the(X)) ==> [the].
d(_) ==> [].

%% PHRASE STRUCTURE RULES
s(Sem) ==> dp(Subj), vp(Subj^Sem).
vp(Sem) ==> vp(Rest^Sem), pp(Rest).
vp(Sem) ==> v(Rest^Sem), dp(Rest).
pp(Sem) ==> p(Prop^Sem), dp(Prop).
dp(Sem) ==> d(Obj^Sem), np(Obj).
dp(Sem) ==> np(Sem).
np(Sem) ==> n(Sem).


%% SHIFT-REDUCE PARSER
% Base
sr_parse([s(Sem)], []):- writeln(Sem).
% sr_parse([s(Sem)], []):- assert(Sem).

% Shift
sr_parse(Stack, [Word|Words]):-
   (Cat ==> [Word]),
   sr_parse([Cat|Stack], Words).
   
% Reduce
sr_parse([Y, X|Rest], String):-
   (Z ==> X, Y),
   sr_parse([Z|Rest], String).

sr_parse([X|Rest], String):-
   (Y ==> X),
   sr_parse([Y|Rest], String).
   
% Query is:
% sr_parse([],[the,drivers,racing,these,cars,on,these,tracks]).
% This one is not working, returning false.
% sr_parse([],[the,drivers,racing,these,cars]).
% This one parses.
