%% Script de laboratorio #1 de Int. a la Robotica Movil
% Gregory Pozo 1045331,
% INTEC,
% Profesor Ivan Jimenez  

%% Configuraciones de robots
% Los robots evaluados son : Sincrono, Diferencial y Triciclo

%% Sincrono
% El robot sincrono tiene la facilidad de cumplir con la mayoria de
% movimientos radiales, debido a que el synchro drive controla la direccion
% de cada rueda. Ahora se probaran las tres condiciones propuestas para ver
% cuales cumple.
%
% Ecuaciones que satisfacen a un robot sincrono:
%%
% $V = w*R$
%
%%
% $Px = V*cos(Theta)$
%%
% $Py = -V*sin(Theta)$
%
%% Sincrono caso 1: cuando D = 0;
clear;
clf;
robotSincrono(0,1,0,0);                       %Radio, velocidad angular, posicion inicial, condicion para graficas
robotSincrono(0,1,0,1);
%%
% Aqui se puede apreciar que la grafica solo demuestra un punto,
% reconociendo que el giro solo se produce en base a ese punto, y los
% valores de la posicion angular siguen cambiando de forma normal. como el
% angulo de giro ni la distancia entre ruedas es una variable en este tipo
% de configuracion, el robot sincrono es capaz de cumplir con este
% caso debido a que las transmisiones se encargan de lo demas.

%% Sincrono caso 2: cuando D = 2dmaxima
% Como no hay dimensiones esenciales en este robot, se asumira que la
% medida maxima es de 15 cm. 15*2/2 = 15.
robotSincrono(15,1,0,2);
%%
% Aqui se puede ver que el robot sincrono puede crear un radio de 30 cm sin
% problemas, por lo que cumple con este caso.

%% Sincrono caso 3: D = 10m
% Se asumira que las medidas son en cm, por lo que 10m = 1000 cm
robotSincrono(500,1,0,3);
%%
% Aqui tambien se aprecia que el robot cumple con la condicion, por lo que
% el sincrono cumple con las tres condiciones.

%% Diferencial
% En este caso las variables de control son las velocidades de las ruedas
% laterales, lo cual limita ciertos movimientos.
%
% Para este robot se tomaron las asunciones de que las velocidades lineal y
% angular son constantes, asi como las medidas del robot tambien. Esto se
% hizo con el fin de no tener que resolver un sistema de ecuaciones para
% encontrar las distancias entre ruedas que satisfacen la ecuacion, sino
% que se fijo una, y de ahi se ve a partir del comportamiento si cumple con
% el caso especificado. Distancia entre ruedas = 30
% cm.
%
% Ecuaciones que satisfacen a un robot diferencial:
%%
% $V = w*R$
%%
% $VLIN_IZQ = w*(R+b/2)$
%%
% $VLIN_DER = w*(R-b/2)$
%% Diferencial caso 1: cuando D = 0;
robotDiferencial(0,1,30,0,0);
%%
% Aqui se ve que el diferencial puede girar sobre su propio eje de rotacion
% por dos razones: la grafica solo muestra un punto, el cual es el centro
% de giro, y dos, la velocidades de las ruedas son iguales y contrarias,
% demostrando la validez de este caso.

%% Diferencial caso 2: cuando D = 2dmaxima
% Aqui asumimos que nuestro robot tiene una medida maxima de longitud de 20
% cm.
robotDiferencial(20,2,30,0,1);
%%
% En este caso, se obtiene sin problemas la trayectoria.

%% Diferencial caso 3: D = 10m
robotDiferencial(500,2,30,0,2);
%%
% Aqui se ve que para poder cumplir en este caso a una velocidad de 2 rad/s
% y las medidas que tiene, el robot debe ir a una velocidad inmensa, una
% rueda mas rapida que la otra para ir en direccion de un circulo. Es
% razonable debido a que es un radio de 500 cm.

%% Triciclo
% En este robot, la rueda delantera se utiliza tanto para la orientacion
% como para la traccion. se supondra que el punto de guia esta en el centro
% del eje trasero. 
%
% Para este robot se tomaron las asunciones de que las velocidades lineal y
% angular son constantes, asi como las medidas del robot tambien. Esto se
% hizo con el fin de no tener que resolver un sistema de ecuaciones para
% encontrar las distancias entre ruedas que satisfacen la ecuacion, sino
% que se fijo una, y de ahi se ve a partir del comportamiento si cumple con
% el caso especificado. Distancia entre ruedas = 10, alfa = -15 grados.
%
% Ecuaciones que satisfacen a un robot diferencial:
%%
% $V = w*R$
%%
% $VLIN_IZQ = w*(R+b/2) = V+(((b/2)*VLIN_RUEDA_DEL*sin(ALFA))/L);$
%%
% $VLIN_DER = w*(R-b/2) = V-(((b/2)*VLIN_RUEDA_DEL*sin(ALFA))/L)$
%% Triciclo caso 1: cuando D = 0;
robotTriciclo(0,2,-15,10,0,0)
%%
% Aqui se ve que es *IMPOSIBLE* para este tipo de robot cumplir con esta
% condicion, debido a que aunque grafica un punto, los valores impresos son
% inexistentes, porque no satisfacen.

%% Triciclo caso 2: cuando D = 2dmaxima
% Asumimos que la distancia maxima 15 cm.
robotTriciclo(15,2,-15,10,0,1)
%%
% Aqui se ve que se cumple sin problemas, aunque si se evaluan los valores
% de las velocidades, por el angulo dado, el da la vuelta primero y sigue
% la trayectoria circular.

%% Triciclo caso 3: D = 10m
robotTriciclo(500,2,-15,10,0,2)
%%
% Aqui podemos ver que se cumple este caso tambien, aunque los valores
% optimos para hacer esa trayectoria a 2 rad/s y 15 grados son inmensos,
% por lo que que habria que hacer modificaciones.
