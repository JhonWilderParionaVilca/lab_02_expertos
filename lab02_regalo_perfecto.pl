%hechos
le_gusta(juan, almendras, mucho).
le_gusta(juan, carne, poco).
le_gusta(juan, correr, regular).
le_gusta(juan, zanahoria,mucho).

le_gusta(carmen, chocolates, regular).
le_gusta(carmen, peluches, mucho).
le_gusta(carmen, uvas, poco).
le_gusta(carmen, fresas, mucho).
%reglas
regalo_perfecto(X,Y):-le_gusta(X,Y, mucho).