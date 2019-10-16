% Directiva de la universidad
nota(0,7,desaprobado).
nota(8,10,aplazado).
nota(11,20,aprobado).
%Datos de los alumnos
nota(pedro,10,11).
nota(rosa,05,06).


prom_alumno(pedro,12).
prom_alumno(rosa,03).
%Regla
promedio(A,P):- nota(A,X, Y), P is (X + Y)/ 2.
resultado(Alumno,Mensaje):-promedio(Alumno,Promedio),nota(Min,Max,Mensaje),Min=<Promedio,Promedio<Max.