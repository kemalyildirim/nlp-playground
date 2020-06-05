:-op(1000, xfy, ==>).

% Sentence
% the drivers racing these cars on these tracks.
 
%% LEXICON
n ==> [cars].
n ==> [drivers].
n ==> [people].
n ==> [racers].
n ==> [tracks].
v ==> [race].
v ==> [racing].
p ==> [on].
p ==> [with].
d ==> [themselves].
d ==> [these].
d ==> [the].
d ==> [].
 
%% PHRASE STRUCTURE RULES
s ==> dp, vp.
vp ==> v, dp.
vp ==> vp, pp.
pp ==> p, dp.
dp ==> d, np.
dp ==> np.
np ==> n.


%% SHIFT-REDUCE PARSER
% Base
sr_parse([s], []).

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
