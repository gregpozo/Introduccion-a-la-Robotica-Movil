function robotDiferencial(R,w,wd,wi,PI,G)
%Muestra el comportamiento de un robot sincrono
POS_INICIAL = PI;
RADIO = R;
x = 0;
graph = G;
VEL_ANGULAR = w;
VANG_DER = wd;
VANG_IZQ = wi;
VEL_LINEAL = VEL_ANGULAR * RADIO;
RADIO_RUEDA = VEL_LINEAL*2/(VANG_DER+VANG_IZQ);
DIST_ENTRE_RUEDAS = ((VANG_DER-VANG_IZQ)* RADIO_RUEDA)/VEL_ANGULAR;
fprintf('El radio obtenido es %f, y la distancia entre ruedas es %f',RADIO_RUEDA,DIST_ENTRE_RUEDAS);

if graph == 0
    while x < 2
        POS_ANGULAR = (VEL_ANGULAR * x) + POS_INICIAL;
        POS_X = (cos(POS_ANGULAR)*RADIO_RUEDA*(VANG_IZQ+VANG_DER))/2;
        POS_Y = (sin(POS_ANGULAR)*RADIO_RUEDA*(VANG_IZQ+VANG_DER))/2;
        figure(4);
        plot(POS_X,POS_Y);
        drawnow;
        hold on;
        x = x + 0.01;
    end
elseif graph == 1
    while x < 7
        POS_ANGULAR = (VEL_ANGULAR * x) + POS_INICIAL;
        POS_X = (cos(POS_ANGULAR)*RADIO_RUEDA*(VANG_IZQ+VANG_DER))/2;
        POS_Y = (sin(POS_ANGULAR)*RADIO_RUEDA*(VANG_IZQ+VANG_DER))/2;
        figure(5);
        plot(POS_X,POS_Y);
        drawnow;
        hold on;
        x = x + 0.01;
    end
elseif graph == 2
    while x < 7
        POS_ANGULAR = (VEL_ANGULAR * x) + POS_INICIAL;
        POS_X = (cos(POS_ANGULAR)*RADIO_RUEDA*(VANG_IZQ+VANG_DER))/2;
        POS_Y = (sin(POS_ANGULAR)*RADIO_RUEDA*(VANG_IZQ+VANG_DER))/2;
        figure(6);
        plot(POS_X,POS_Y);
        drawnow;
        hold on;
        x = x + 0.01;
    end
end

end

