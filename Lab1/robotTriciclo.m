function robotTriciclo(R,L,wa,vt,c,PI,G )
%Describe el comportamiento de un robot tipo triciclo
POS_INICIAL = PI;
RADIO = R;
x = 0;
graph = G;
VEL_ALFA = wa;
VLIN_RUEDA_DEL = vt;
DIST_EJES = L;
RADIO_RUEDA = c;
VANG_RUEDA_DEL = VLIN_RUEDA_DEL/RADIO_RUEDA;

if graph == 0
    while x < 5
        ORIENT_ALFA = VEL_ALFA*x;
        VEL_LINEAL = VLIN_RUEDA_DEL*cos(ORIENT_ALFA);
        Theta_ = (RADIO_RUEDA*VANG_RUEDA_DEL*sin(ORIENT_ALFA))/L;
        POS_ANGULAR = -(cos(ORIENT_ALFA)*VLIN_RUEDA_DEL)/DIST_EJES;
        POS_X = -cos(POS_ANGULAR)*VLIN_RUEDA_DEL*sin(ORIENT_ALFA);
        POS_Y = sin(POS_ANGULAR)*VLIN_RUEDA_DEL*cos(ORIENT_ALFA);
        figure(6);
        plot(POS_X,POS_Y);
        drawnow;
        hold on;
        x = x + 0.01;
    end

end

