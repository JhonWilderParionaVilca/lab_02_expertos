%escalas de las categorias
escala(118,153,'categoria 1').
escala(154,177,'categoria 2').
escala(178,209,'categoria 3').
escala(210,250,'categoria 4').
escala(250,1000,'categoria 5').

%velocidad_huracan de los velocidad_huracanes

velocidad_huracan(agnes,140).
velocidad_huracan(franklin,140).
velocidad_huracan(barbara,130).
velocidad_huracan(dalila,130).
velocidad_huracan(cosme,140).
velocidad_huracan(erick,130).

velocidad_huracan(henriette,165).

velocidad_huracan(nora,180).
velocidad_huracan(raymond,205).

velocidad_huracan(iselle, 234).
velocidad_huracan(winnie, 232).
velocidad_huracan(harvey,2015).

velocidad_huracan(polo,321).
velocidad_huracan(allen,305).
velocidad_huracan(andrew,285).
velocidad_huracan(dean,260).

%nivel de daño de huracanes
nivel_daños('categoria 1','Sin daños en las estructuras de los edificios. Daños básicamente en casas flotantes no amarradas, arbustos y árboles. Inundaciones en zonas costeras y daños de poco alcance en puertos.').
nivel_daños('categoria 2','Daños en tejados, puertas y ventanas. Importantes daños en la vegetación, casas móviles, etc. Inundaciones en puertos así como ruptura de pequeños amarres.').
nivel_daños('categoria 3','Daños estructurales en edificios pequeños. Destrucción de casas móviles. Las inundaciones destruyen edificaciones pequeñas en zonas costeras y objetos a la deriva pueden causar daños en edificios mayores. Posibilidad de inundaciones tierra adentro.').
nivel_daños('categoria 4','Daños generalizados en estructuras protectoras, desplome de tejados en edificios pequeños. Alta erosión de bancales y playas. Inundaciones en terrenos interiores.').
nivel_daños('categoria 5','Destrucción de tejados completa en algunos edificios. Las inundaciones pueden llegar a las plantas bajas de los edificios cercanos a la costa. Puede ser requerida la evacuación masiva de áreas residenciales. Los vientos de 300 kmh pueden arrancar árboles y hasta casas de sus cimientos, huracán muy poderoso.').



%reglas

resultado(H, C, V, MSJ):- velocidad_huracan(H,V),escala(MIN, MAX, C), MIN=<V, V=<MAX, nivel_daños(C,MSJ).

