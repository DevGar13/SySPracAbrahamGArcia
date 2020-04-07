
    function trigonometrica(p1,p2,cn,arg,c0,a,b)
        w0=2*pi/(p2-p1);
        t=a:0.0001:b;
        for n=1:armo
              sf=c0+cn(n) * cos(n*w0*t + arg);
        end
        
    end
% t0 el valor inicial para calcular la serie
% tf el valor final donde calcular la serie
% dn función de la fórmula de los dn
% f función original
% armo número de armonicos a utilizar en la gráfica
% a, b intevalo para realizar la grafica de la serie



figure (1)
hFig = figure(1);
set(hFig, 'Position', [0 0 900 900])
subplot(3,2,1)
plot(t,sf,'LineWidth',2)
grid on
legend('Serie de Fourier','Location','Best')
xlabel('t','FontWeight','bold','FontSize',16)

sf=d0;
t1=t0:0.0001:tf;

for n=1:armo
    sf=sf+cn(-n)*exp(w0*-n*t1*j)+cn(n)*exp(w0*n*t1*j);
end

subplot(3,2,2)
plot(t1,f(t1),'r','LineWidth',2)
grid on
hold on
plot(t1,sf,'LineWidth',2)
legend('Función original','Serie de Fourier ','Location','Best')
xlabel('t','FontWeight','bold','FontSize',16)
nn=-armo:armo;
axis auto

subplot(3,2,4)
e=f(t1)-sf;
plot(t1,e,'LineWidth',2)
title('Error','FontWeight','bold','FontSize',16)
xlabel('t','FontWeight','bold','FontSize',16)
axis auto
grid on

subplot(3,2,6)
e=f(t1)-sf;
area(t1,e.^2)
legend('Energia del error','Location','Best')
xlabel('t','FontWeight','bold','FontSize',16)
axis auto
grid on

absdn=zeros(1,length(nn));
cont=1;
for i =-armo:armo
    if i==0
        absdn(cont)=d0;
    end
    
    absdn(cont)=cn(i);
    cont=cont+1;
end

subplot(3,2,3)
stem(w0*nn,abs(absdn),'LineWidth',2)
title('Espectro de magnitud D_n ','FontWeight','bold','FontSize',16)
xlabel('\omega','FontWeight','bold','FontSize',16)
grid on

subplot(3,2,5) % % 
stem(w0*nn,angle(absdn),'LineWidth',2) % % 
title('Espectro de fase, \angle de D_n ','FontWeight','bold','FontSize',16) % % 
xlabel('\omega','FontWeight','bold','FontSize',16)
grid on

end