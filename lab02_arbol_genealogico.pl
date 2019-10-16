% Relaciones
progenitor(emilio, zenaida).
progenitor(emilio, brigida).
progenitor(emilio, pedro).
progenitor(emilio, claudia).
progenitor(teresa, zenaida).
progenitor(teresa, brigida).
progenitor(teresa, pedro).
progenitor(teresa, claudia).

progenitor(faustina, victor).
progenitor(faustina, gloria).

progenitor(gloria, angy).

progenitor(zenaida, jhon).
progenitor(zenaida, flor).
progenitor(zenaida, kevin).
progenitor(victor, jhon).
progenitor(victor, flor).
progenitor(victor, kevin).


progenitor(brigida, yonatan).
progenitor(brigida, efrain).
progenitor(brigida, liliana).
progenitor(brigida, fidelina).
progenitor(mario, yonatan).
progenitor(mario, efrain).
progenitor(mario, liliana).
progenitor(mario, fidelina).

progenitor(pedro, anghelo).
progenitor(pedro, jhoselyn).
progenitor(pedro, nayeli).
progenitor(marisol, anghelo).
progenitor(marisol, jhoselyn).
progenitor(marisol, nayeli).

progenitor(jhoselyn, yaren).
progenitor(luis, yaren).

progenitor(claudia,elvis).

progenitor(elvis, mateo).
progenitor(karen, mateo).



%hechos
mujer(faustina).
mujer(gloria).
mujer(angy).
mujer(karen).
mujer(teresa).
mujer(zenaida).
mujer(brigida).
mujer(claudia).
mujer(flor).
mujer(liliana).
mujer(jhoselyn).
mujer(marisol).
mujer(fidelina).
mujer(nayeli).

varon(emilio).
varon(mario).
varon(victor).
varon(carlos).
varon(pedro).
varon(jhon).
varon(kevin).
varon(yonatan).
varon(efrain).
varon(anghelo).
varon(elvis).
varon(yaren).
varon(mateo).

%reglas
%es madre si es progenitor o si es conyuge del progenitor
madre(MA,H):- mujer(MA),progenitor(MA,H).
padre(PA,H):- varon(PA),progenitor(PA,H).

abuelo(A,N):- padre(A,H),progenitor(H,N).
abuela(A,N):- madre(A,H),progenitor(H,N).

hermano(H,Y):- varon(H), madre(M,H), madre(M,Y), not(H==Y).
hermana(H,Y):- mujer(H), madre(M,H), madre(M,Y), not(H==Y).

primo(P,X):- varon(P), progenitor(A,P), progenitor(B,X),(hermano(A,B);hermana(A,B)).
prima(P,X):- mujer(P), progenitor(A,P), progenitor(B,X),(hermano(A,B);hermana(A,B)).

tio(T,A):- varon(T), progenitor(P,A), (hermano(T,P);primo(T,P)).
tia(T,A):- mujer(T), progenitor(P,A), hermana(T,P).

sobrino(S,T):- varon(S), progenitor(A,S), ((hermano(T,A);hermana(T,A);(primo(T,A);prima(T,A)))).
sobrina(S,T):- mujer(S), progenitor(A,S), ((hermano(T,A);hermana(T,A);(primo(T,A);prima(T,A)))).
