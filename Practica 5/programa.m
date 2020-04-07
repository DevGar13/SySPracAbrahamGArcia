d0=1/2;
dn=@(n) (sin((n*pi)/2))/(n*pi);   
t0=-pi;
tf=pi;
f=@(t) (-pi<t<-pi/2).*(0)+(-pi/2<=t<=pi/2).*(1)+(pi/2<t<pi).*(0);
armo=15;
a=-pi*15;
b=pi*15;
practica(t0,tf,dn,d0,f,armo,a,b)