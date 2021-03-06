/*
* Kemal Yıldırım
* 161805025
* 2020
*
*/
initial1(q0).
final1(q5).

t1(q0,L,q0):- consonant(L); vowel(L).
t1(q0,a,q1).
t1(q0,i,q1).
t1(q0,o,q2).
t1(q0,u,q2).
t1(q0,e,q3).
t1(q0,i,q3).
t1(q0,ö,q4).
t1(q0,ü,q4).
t1(q1,C,q1):- consonant(C).
t1(q2,C,q2):- consonant(C).
t1(q3,C,q3):- consonant(C).
t1(q4,C,q4):- consonant(C).
t1(q1,a,q5).
t1(q1,i,q5).
t1(q2,a,q5).
t1(q2,u,q5).
t1(q3,e,q5).
t1(q3,i,q5).
t1(q4,e,q5).
t1(q4,ü,q5).
t1(q5,C,q5):- consonant(C).

consonant(b).
consonant(c).
consonant(ç).
consonant(d).
consonant(f).
consonant(g).
consonant(g).
consonant(h).
consonant(j).
consonant(k).
consonant(l).
consonant(m).
consonant(n).
consonant(p).
consonant(r).
consonant(s).
consonant(s).
consonant(t).
consonant(v).
consonant(y).
consonant(z).

vowel(a).
vowel(i).
vowel(o).
vowel(u).
vowel(e).
vowel(i).
vowel(ö).
vowel(ü).
%%%
% States
initial(q0).
final(q1).
final(q2b).
final(q3b).
final(q4b).
final(q5b).
final(q6b).
final(q7b).
final(q8b).

final(qp1).
final(qp2).
final(qp3).

final(qdf1).
final(qdf2).

final(qnp1).
final(qnp2).
final(qnp3).

final(qf1).
final(qf2).
final(qf3).

final(qa1).
final(qa2).
final(qa3).

final(qc1).
final(qc2).

final(qpf).

% Transitions

t(q0, verb, q1).

t(q1, neg, q1).

t(q1, prog, q2b).
t(q1, def-past, q3b).
t(q1, nar-past, q4b).
t(q1, future, q5b).
t(q1, aorist, q6b).
t(q1, neces, q6b).
% t(q1, neces, q7b).
t(q1, cond, q8b).

t(q2b, def-past, qp1).
t(q2b, nar-past, qp2).
t(q2b, cond, qp3).

t(q3b, def-past, qdf1).
t(q3b, cond, qdf2).

t(q4b, nar-past, qnp1).
t(q4b, def-past, qnp2).
t(q4b, cond, qnp3).

t(q5b, nar-past, qf1).
t(q5b, def-past, qf2).
t(q5b, cond, qf3).

t(q6b, nar-past, qa1).
t(q6b, cond, qa2).
t(q6b, def-past, qa3).

t(q8b, nar-past, qc1).
t(q8b, def-past, qc2).

% Person transitions

t(q2b, person, qpf).
t(q3b, person, qpf).
t(q4b, person, qpf).
t(q5b, person, qpf).
t(q6b, person, qpf).
t(q8b, person, qpf).

t(qp1, person, qpf).
t(qp2, person, qpf).
t(qp3, person, qpf).

t(qdf1, person, qpf).
t(qdf2, person, qpf).

t(qnp1, person, qpf).
t(qdf2, person, qpf).

t(qnp1, person, qpf).
t(qnp2, person, qpf).
t(qnp3, person, qpf).

t(qf1, person, qpf).
t(qf2, person, qpf).
t(qf3, person, qpf).

t(qa1, person, qpf).
t(qa2, person, qpf).
t(qa3, person, qpf).

t(qc1, person, qpf).
t(qc2, person, qpf).

%% Allomorphs

allomorph(git, verb). % Verb-1
allomorph(gid, verb). % Verb-1
allomorph(yap, verb). % Verb-2
allomorph(ol, verb). % Verb-3
allomorph(çiz, verb). % Verb-4
allomorph(yüz, verb). % Verb-5
allomorph(unut,verb). % Verb-5

allomorph(me, neg). % Negation
allomorph(ma, neg). % Negation

allomorph(uyor, prog). % Progressive
allomorph(üyor, prog). % Progressive
allomorph(iyor, prog). % Progressive
allomorph(ıyor, prog). % Progressive

allomorph(er, aorist). % Aorist
allomorph(ur, aorist). % Aorist
allomorph(ar, aorist). % Aorist

allomorph(ecek, future). % Future
allomorph(yecek, future). % Future
allomorph(acak, future). % Future
allomorph(yacak, future). % Future

allomorph(du, def-past).% Definite past
allomorph(ydu, def-past).% Definite past
allomorph(di, def-past).% Definite past
allomorph(dı, def-past).% Definite past
allomorph(ydi, def-past).% Definite past
allomorph(ydı, def-past). % Definite past
allomorph(ti, def-past).% Definite past
allomorph(tı, def-past).% Definite past

allomorph(miş, nar-past).% Narrative past
allomorph(muş, nar-past).% Narrative past
allomorph(ymuş, nar-past).% Narrative past
allomorph(mış, nar-past).% Narrative past
allomorph(ymiş, nar-past).% Narrative past
allomorph(ymış, nar-past).% Narrative past

allomorph(meli, neces). % Necessitative
allomorph(malı, neces). % Necessitative

allomorph(se, cond). % Conditional
allomorph(sa, cond). % Conditional
allomorph(yse, cond). % Conditional
allomorph(ysa, cond). % Conditional

allomorph(im, person). % Ben
allomorph(ım, person). % Ben
allomorph(m, person).  % Ben
allomorph(n, person).  % Sen
allomorph(in, person). % Sen
allomorph(ın, person). % Sen
% allomorph(_, person).  % O
allomorph(k, person). % Biz
allomorph(ik, person). % Biz
allomorph(ık, person). % Biz
allomorph(iniz, person).% Siz
allomorph(ınız, person).% Siz
allomorph(niz, person). % Siz
allomorph(nız, person). % Siz
allomorph(ler, person). % Onlar
allomorph(lar, person). % Onlar

analyzer(String, List_of_Morphemes):-
   initial(State),
   analyzer(String, State, List_of_Morphemes).

analyzer('', State, []):- final(State).

analyzer(String, CurrentState, [Morpheme|Morphemes]):-
   concat(Prefix, Suffix, String),
   allomorph(Prefix, Morpheme),
   t(CurrentState, Morpheme, NextState),
   analyzer(Suffix, NextState, Morphemes).
   
%
analyze(String, List_of_Morphemes):-
   initial(State),
   analyze(String, State, List_of_Morphemes, []).

analyze('', State, [], _):- final(State).

analyze(String, CurrentState, [Morpheme|Morphemes], Prev_Allomorph):-
   concat(Prefix, Suffix, String),
   allomorph(Prefix, Morpheme),
   t(CurrentState, Morpheme, NextState),
   append(Prev_Allomorph, [Prefix], Allomorphs),
   harmonize(Allomorphs),
   analyze(Suffix, NextState, Morphemes, [Prefix]).

harmonize([_]).

harmonize([Allomorph1, Allomorph2]):-
   string_to_list(Allomorph1, LCodes),
   string_to_list(Allomorph2, RCodes),
   vowel_vowel_harmony(LCodes, RCodes),
   consonant_consonant_harmony(LCodes, RCodes),
   vowel_consonant_harmony(LCodes, RCodes),
   consonant_vowel_harmony(LCodes, RCodes).

vowel_vowel_harmony(LCodes, [RCode1, RCode2|_]):-
   reverse(LCodes, [LCode1|_]),
   char_code(LChar1, LCode1),
   char_code(RChar1, RCode1),
   char_code(RChar2, RCode2),
   vowel(LChar1),
   consonant(RChar1),
   vowel(RChar2),
  (((LChar1 = a; LChar1 = ı), (RChar2 = a; RChar2 = ı));
   ((LChar1 = o; LChar1 = u), (RChar2 = a; RChar2 = u));
   ((LChar1 = e; LChar1 = i), (RChar2 = e; RChar2 = i));
   ((LChar1 = ö; LChar1 = ü), (RChar2 = e; RChar2 = ü))
   ).

vowel_vowel_harmony(LCodes, [RCode1, RCode2|_]):-
   reverse(LCodes, [LCode1, LCode2|_]),
   char_code(LChar1, LCode1),
   char_code(LChar2, LCode2),
   char_code(RChar1, RCode1),
   char_code(RChar2, RCode2),
   consonant(LChar1),
   vowel(LChar2),
   consonant(RChar1),
   vowel(RChar2),
  (((LChar2 = a; LChar2 = ı), (RChar2 = a; RChar2 = ı));
   ((LChar2 = o; LChar2 = u), (RChar2 = a; RChar2 = u));
   ((LChar2 = e; LChar2 = i), (RChar2 = e; RChar2 = i));
   ((LChar2 = ö; LChar2 = ü), (RChar2 = e; RChar2 = ü))
   ).

vowel_vowel_harmony(LCodes, [RCode1, RCode2|_]):-
   reverse(LCodes, [LCode1, LCode2, LCode3|_]),
   char_code(LChar1, LCode1),
   char_code(LChar2, LCode2),
   char_code(LChar3, LCode3),
   char_code(RChar1, RCode1),
   char_code(RChar2, RCode2),
   consonant(LChar1),
   consonant(LChar2),
   vowel(LChar3),
   consonant(RChar1),
   vowel(RChar2),
  (((LChar3 = a; LChar3 = ı), (RChar2 = a; RChar2 = ı));
   ((LChar3 = o; LChar3 = u), (RChar2 = a; RChar2 = u));
   ((LChar3 = e; LChar3 = i), (RChar2 = e; RChar2 = i));
   ((LChar3 = ö; LChar3 = ü), (RChar2 = e; RChar2 = ü))
   ).

vowel_vowel_harmony(LCodes, [RCode1|_]):-
   reverse(LCodes, [LCode1, LCode2|_]),
   char_code(LChar1, LCode1),
   char_code(LChar2, LCode2),
   char_code(RChar1, RCode1),
   consonant(LChar1),
   vowel(LChar2),
   vowel(RChar1),
  (((LChar2 = a; LChar2 = ı), (RChar1 = a; RChar1 = ı));
   ((LChar2 = o; LChar2 = u), (RChar1 = a; RChar1 = u));
   ((LChar2 = e; LChar2 = i), (RChar1 = e; RChar1 = i));
   ((LChar2 = ö; LChar2 = ü), (RChar1 = e; RChar1 = ü))
   ).

consonant_consonant_harmony(LCodes, [RCode1|_]):-
   reverse(LCodes, [LCode1|_]),
   char_code(LChar1, LCode1),
   char_code(RChar1, RCode1),
   ((not(consonant(LChar1)),!); not(consonant(RChar1))).

consonant_consonant_harmony(LCodes, [RCode1|_]):-
   reverse(LCodes, [LCode1|_]),
   char_code(LChar1, LCode1),
   char_code(RChar1, RCode1),
   consonant(LChar1),
   consonant(RChar1),
  ((consonant_type1(LChar1), consonant_type1(RChar1));
   (consonant_type1(LChar1), consonant_type2(RChar1));
   (consonant_type2(LChar1), consonant_type3(RChar1));
   (consonant_type2(LChar1), consonant_type2(RChar1));
   (consonant_type3(LChar1), consonant_type2(RChar1));
   (consonant_type3(LChar1), consonant_type3(RChar1))
   ).

vowel_consonant_harmony(LCodes, [RCode1|_]):-
   reverse(LCodes, [LCode1|_]),
   char_code(LChar1, LCode1),
   char_code(RChar1, RCode1),
   ((not(vowel(LChar1)),!); not(consonant(RChar1))).

vowel_consonant_harmony(LCodes, [RCode1|_]):-
   reverse(LCodes, [LCode1|_]),
   char_code(LChar1, LCode1),
   char_code(RChar1, RCode1),
   vowel(LChar1),
   consonant(RChar1),
   not(RChar1 = t).

consonant_vowel_harmony(LCodes, [RCode1|_]):-
   reverse(LCodes, [LCode1|_]),
   char_code(LChar1, LCode1),
   char_code(RChar1, RCode1),
   ((not(consonant(LChar1)),!); not(vowel(RChar1))).

consonant_vowel_harmony(LCodes, [RCode1|_]):-
   reverse(LCodes, [LCode1|_]),
   char_code(LChar1, LCode1),
   char_code(RChar1, RCode1),
   consonant(LChar1),
   vowel(RChar1),
   not(LChar1 = p),
   not(LChar1 = ç),
   not(LChar1 = t),
   not(LChar1 = k).

consonant_type1(ç).
consonant_type1(f).
consonant_type1(h).
consonant_type1(k).
consonant_type1(p).
consonant_type1(s).
consonant_type1(ş).
consonant_type1(t).

consonant_type2(l).
consonant_type2(m).
consonant_type2(n).
consonant_type2(r).
consonant_type2(y).

consonant_type3(b).
consonant_type3(c).
consonant_type3(d).
consonant_type3(g).
consonant_type3(ğ).
consonant_type3(j).
consonant_type3(v).
consonant_type3(z).

