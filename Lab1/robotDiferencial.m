function robotDiferencial(R,w,b,PI,G)
%Muestra el comportamiento de un robot sincrono
POS_INICIAL = PI;
RADIO = R;
x = 0;
graph = G;
VEL_ANGULAR = w;
DIST_ENTRE_RUEDAS = b;
VLIN_IZQ = VEL_ANGULAR*(RADIO+DIST_ENTRE_RUEDAS/2);
VLIN_DER = VEL_ANGULAR*(RADIO-DIST_ENTRE_RUEDAS/2);
VEL_LINEAL = VEL_ANGULAR * RADIO;
fprintf('la velocidad de la rueda derecha es %f y la de la izquierda es %f',VLIN_DER,VLIN_IZQ);

if graph == 0
    while x < 2
        POS_ANGULAR = (VEL_ANGULAR * x) + POS_INICIAL;
        POS_X = (VEL_LINEAL*sin(POS_ANGULAR))/VEL_ANGULAR;
        POS_Y = ((-VEL_LINEAL*cos(POS_ANGULAR))/VEL_ANGULAR)+VEL_LINEAL/VEL_ANGULAR;
        figure(4);
        plot(POS_X,POS_Y);
        drawnow;
        hold on;
        x = x + 0.01;
    end
elseif graph == 1
    while x < 7
        POS_ANGULAR = (VEL_ANGULAR * x) + POS_INICIAL;
        POS_X = (VEL_LINEAL*sin(POS_ANGULAR))/VEL_ANGULAR;
        POS_Y = ((-VEL_LINEAL*cos(POS_ANGULAR))/VEL_ANGULAR)+VEL_LINEAL/VEL_ANGULAR;
        figure(5);
        plot(POS_X,POS_Y);
        drawnow;
        hold on;
        x = x + 0.01;
    end
elseif graph == 2
    while x < 7
        POS_ANGULAR = (VEL_ANGULAR * x) + POS_INICIAL;
        POS_X = (VEL_LINEAL*sin(POS_ANGULAR))/VEL_ANGULAR;
        POS_Y = ((-VEL_LINEAL*cos(POS_ANGULAR))/VEL_ANGULAR)+VEL_LINEAL/VEL_ANGULAR;
        figure(6);
        plot(POS_X,POS_Y);
        drawnow;
        hold on;
        x = x + 0.01;
    end
end

end

