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
%robotSincrono(0,1,0,0);                       %Radio, velocidad angular, posicion inicial, condicion para graficas
%robotSincrono(0,1,0,1);
%%
% Aqui se puede apreciar que la grafica solo demuestra un punto,
% reconociendo que el giro solo se produce en base a ese punto, y los
% valores de la posicion angular siguen cambiando de forma normal. como el
% angulo de giro ni la distancia entre ruedas es una variable en este tipo
% de configuracion, el robot sincrono es el unico capaz de cumplir con este
% caso debido a que las transmisiones se encargan de lo demas.

%% Sincrono caso 2: cuando D = 2dmaxima
% Como una hay dimensiones esenciales en este robot, se asumira que la
% medida maxima es de 15 cm. 15*2/2 = 15.
%robotSincrono(15,1,0,2);
%%
% Aqui se puede ver que el robot sincrono puede crear un radio de 30 cm sin
% problemas, por lo que cumple con este caso.

%% Sincrono caso 3: D = 10m
% Se asumira que las medidas son en cm, por lo que 10m = 1000 cm
%robotSincrono(500,1,0,3);
%%
% Aqui tambien se aprecia que el robot cumple con la condicion, por lo que
% el sincrono cumple con las tres condiciones.

%% Diferencial
% En este caso las variables de control son las velocidades de las ruedas
% laterales, lo cual limita ciertos movimientos.
%
% Ecuaciones que satisfacen a un robot diferencial:
%%
% $V = w*R$
%%
% $c = (V*2)/(wd+wi)$
%%
% $b = ((wd-w)*ci)/w$
%% Diferencial caso 1: cuando D = 0;
%robotDiferencial(0,1,2,1,0,0);
%%
% Aunque se grafica un punto central, a diferencia del robot sincrono, aqui
% hay otras variables que entran en juego. al ver la distancia entre ruedas
% y el radio de las ruedas necesario, nos da 0, por lo que es *IMPOSIBLE* que
% este robot gire en torno a su propio centro de giro.

%% Diferencial caso 2: cuando D = 2dmaxima
% Aqui asumimos que nuestro robot tiene una medida maxima de longitud de 20
% cm.
%robotDiferencial(20,1,2,1,0,1);
%%
% En este caso, se obtiene sin problemas la trayectoria, y las medidas
% necesarias. Son identicas debido a por los calculos, el radio y la
% velocidad angular estan siendo directamente proporcionales, por lo que si
% aumenamos el doble de w, tendremos el doble de radio, y el doble de radio
% de rueda tambien.

%% Diferencial caso 3: D = 10m
%robotDiferencial(500,1,2,1,0,2);
%%
% Aqui se ve que para poder cumplir en este caso a una velocidad de 1
% rad/s, deberiamos tener un robot inmenso, mas grande de las medidas que
% se tienen establecidas. Aunque, esto no significa que un robot
% diferencial de 20 cm no pueda satisfacer el caso, pero si nos basaramos
% enn otras variables fijando parametros, obtendriamos entonces que
% manteniendo esas medidas durariamos mucho tiempo en completar esa
% trayectoria.

%% Triciclo
% En este robot, la rueda delantera se utiliza tanto para la orientacion
% como para la traccion. se supondra que el punto de guia esta en el centro
% del eje trasero. 
robotTriciclo(1,25,3,1,20,0,0)



