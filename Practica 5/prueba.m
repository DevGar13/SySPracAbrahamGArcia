d0=1/3;
dn=@(n) 1/3;
t0=-3/2;
tf=3/2;
f=@(t) exp(-t/2);
armo=15;
a=-2*15;
b=2*15;
p7(t0,tf,dn,d0,f,armo,a,b)