% LEXICON
n --> [dogs].
n --> [cats].
n --> [cows].
n --> [bones].
n --> [humans].
n --> [shepherds].
n --> [streets].
v --> [bark].
v --> [meow].
v --> [moo].
v --> [eat].
v --> [depend].
v --> [chase].
p --> [on].
p --> [of].
d --> [the].
d --> [some].
d --> [].
adj --> [big].
adj --> [black].
adj --> [furry].
adj --> [white].
adj --> [fluffy].
adv --> [quickly].

% PHRASE STRUCTURE RULES
s --> dp, vp.
vp --> v, dp.
vp --> v, pp.
vp --> v.
vp --> advP, vp.
% vp --> vp, advP.
pp --> p, np.
np --> n, pp.
np --> n.
np --> adjP, np.
dp --> d, np.
dp --> d.
adjP --> adj.
advP --> adv.
