%hechos
enfermo_de(manuel,gripe).
enfermo_de(julia,gripe).
enfermo_de(kevin,gastritis).

sintoma_de(fiebre,gripe).
sintoma_de(tos,gripe).
sintoma_de(cansancio,anemia).
sintoma_de(indigestion,gastritis).

tiene_sintoma(alicia,cansancio).
tiene_sintoma(andres,indigestion).


elimina(vitaminas,cansancio).
elimina(aspirinas,fiebre).
elimina(jarabe,tos).
elimina(antiacido,indigestion).

%reglas
recetar_a(X,Y):-enfermo_de(Y,A),alivia(X,A).

alivia(X,Y):-elimina(X,A),sintoma_de(A,Y).

enfermo_de(X,Y):-tiene_sintoma(X,Z),sintoma_de(Z,Y).

