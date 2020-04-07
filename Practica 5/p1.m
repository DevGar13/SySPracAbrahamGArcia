function p1(t0,tf,a0,an,bn,f,a,b,w0,armo,arg)
% Tomando como referencia el código propuesto aqui ya paso todos los
% argumentos necesarios para la serie de fourier, se aprecia tambien que le
% paso la formula del ángulo para ser gráficado

sf=a0;
t=a:0.0001:b;

for n=1:armo
    sf=sf + (an(n)*cos(n*w0*t)+bn(n)*sin(n*w0*t));
end
figure (1)
hFig = figure(1);
set(hFig, 'Position', [0 0 900 900])
subplot(3,2,1)
plot(t,sf,'LineWidth',2)
grid on
legend('Serie de Fourier','Location','Best')
xlabel('Serie trigonometrica','FontWeight','bold','FontSize',16)



sf=a0;
t1=t0:0.0001:tf;

for n=1:armo
    sf=sf + (an(n)*cos(n*w0*t)+bn(n)*sin(n*w0*t));
end

subplot(3,2,2)
plot(t1,f(t1),'r','LineWidth',2)
grid on
hold on
t1=0:0.0001:pi;
plot(t1,sf,'b','LineWidth',2)

xlabel('t','FontWeight','bold','FontSize',16)
nn=1:armo;
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

cn=@(x) 0.504*(2/realsqrt(1+16*x^2));


absdn=zeros(1,length(nn));
cont=1;
for i =0:1:armo
    if i==0
        absdn(cont)=a0;
    end
    
    absdn(cont)=cn(i);
    cont=cont+1;
end
mm=0:armo;
subplot(3,2,3)
stem(mm,abs(absdn),'LineWidth',2)
title('Espectro de magnitud ','FontWeight','bold','FontSize',16)
xlabel('\omega','FontWeight','bold','FontSize',16)
grid on


subplot(3,2,5) % % 
stem(nn,arg(nn),'LineWidth',2)
title('Espectro de fase, \angle ','FontWeight','bold','FontSize',16) % % 
xlabel('\omega','FontWeight','bold','FontSize',16)
grid on

end