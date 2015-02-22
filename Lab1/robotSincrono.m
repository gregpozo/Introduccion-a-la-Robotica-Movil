function robotSincrono(R,w,PI,G)
% Muestra el comportamiento de un robot sincrono
VEL_ANGULAR = w;
POS_INICIAL = PI;
RADIO = R;
x = 0;
graph = G;
VEL_LINEAL = VEL_ANGULAR * RADIO;
if graph == 0
    while x < 2
        POS_ANGULAR = (VEL_ANGULAR * x) + POS_INICIAL;
        VEL_X = -VEL_LINEAL * sin(POS_ANGULAR); 
        VEL_Y = VEL_LINEAL * cos(POS_ANGULAR);
        POS_X = VEL_LINEAL * cos(POS_ANGULAR); 
        POS_Y = -VEL_LINEAL * sin(POS_ANGULAR);
        plot(POS_X,POS_Y);
        drawnow;
        hold on;
        x = x + 0.01;
    end
elseif graph == 1
    while x < 2
        POS_ANGULAR = (VEL_ANGULAR * x) + POS_INICIAL;
        VEL_X = -VEL_LINEAL * sin(POS_ANGULAR); 
        VEL_Y = VEL_LINEAL * cos(POS_ANGULAR);
        POS_X = VEL_LINEAL * cos(POS_ANGULAR); 
        POS_Y = -VEL_LINEAL * sin(POS_ANGULAR);
        figure(1);
        plot(x,POS_ANGULAR);
        drawnow;
        hold on;
        x = x + 0.01;
    end
elseif graph == 2
    while x < 7
        POS_ANGULAR = (VEL_ANGULAR * x) + POS_INICIAL;
        VEL_X = -VEL_LINEAL * sin(POS_ANGULAR); 
        VEL_Y = VEL_LINEAL * cos(POS_ANGULAR);
        POS_X = VEL_LINEAL * cos(POS_ANGULAR); 
        POS_Y = -VEL_LINEAL * sin(POS_ANGULAR);
        figure(2);
        plot(POS_X,POS_Y);
        drawnow;
        hold on;
        x = x + 0.01;
    end
elseif graph == 3
    while x < 7
        POS_ANGULAR = (VEL_ANGULAR * x) + POS_INICIAL;
        VEL_X = -VEL_LINEAL * sin(POS_ANGULAR); 
        VEL_Y = VEL_LINEAL * cos(POS_ANGULAR);
        POS_X = VEL_LINEAL * cos(POS_ANGULAR); 
        POS_Y = -VEL_LINEAL * sin(POS_ANGULAR);
        figure(3);
        plot(POS_X,POS_Y);
        drawnow;
        hold on;
        x = x + 0.01;
    end
end



end

