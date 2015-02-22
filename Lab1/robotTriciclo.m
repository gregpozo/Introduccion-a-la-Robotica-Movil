function robotTriciclo(R,w,alfa,b,PI,G )
%Describe el comportamiento de un robot tipo triciclo
POS_INICIAL = PI;
RADIO = R;
x = 0;
graph = G;
VEL_ANGULAR = w;
ALFA = alfa;
DIST_ENTRE_RUEDAS = b;
DIST_ENTRE_EJES = RADIO*tan(ALFA);
VEL_LINEAL = VEL_ANGULAR * RADIO;
VLIN_RUEDA_DEL = VEL_ANGULAR*DIST_ENTRE_EJES/sin(ALFA);
VLIN_IZQ = VEL_LINEAL+(((DIST_ENTRE_RUEDAS/2)*VLIN_RUEDA_DEL*sin(ALFA))/DIST_ENTRE_EJES);
VLIN_DER = VEL_LINEAL-(((DIST_ENTRE_RUEDAS/2)*VLIN_RUEDA_DEL*sin(ALFA))/DIST_ENTRE_EJES);
fprintf('la velocidad de la rueda derecha es %f, la de la izquierda es %f, y la distancia entre ejes es %f',VLIN_DER,VLIN_IZQ,DIST_ENTRE_EJES);

if graph == 0
    while x < 5
        POS_ANGULAR = (VEL_ANGULAR * x) + POS_INICIAL;
        POS_X = (VEL_LINEAL*sin(POS_ANGULAR))/VEL_ANGULAR;
        POS_Y = ((-VEL_LINEAL*cos(POS_ANGULAR))/VEL_ANGULAR)+VEL_LINEAL/VEL_ANGULAR;
        figure(7);
        plot(POS_X,POS_Y);
        drawnow;
        hold on;
        x = x + 0.01;
    end
elseif graph == 1
    while x < 5
        POS_ANGULAR = (VEL_ANGULAR * x) + POS_INICIAL;
        POS_X = (VEL_LINEAL*sin(POS_ANGULAR))/VEL_ANGULAR;
        POS_Y = ((-VEL_LINEAL*cos(POS_ANGULAR))/VEL_ANGULAR)+VEL_LINEAL/VEL_ANGULAR;
        figure(8);
        plot(POS_X,POS_Y);
        drawnow;
        hold on;
        x = x + 0.01;
    end
elseif graph == 2
    while x < 5
        POS_ANGULAR = (VEL_ANGULAR * x) + POS_INICIAL;
        POS_X = (VEL_LINEAL*sin(POS_ANGULAR))/VEL_ANGULAR;
        POS_Y = ((-VEL_LINEAL*cos(POS_ANGULAR))/VEL_ANGULAR)+VEL_LINEAL/VEL_ANGULAR;
        figure(9);
        plot(POS_X,POS_Y);
        drawnow;
        hold on;
        x = x + 0.01;
    end

end

