%%
% 
% <<portada.png>>
%% Objetivos
% 
% * Realizar gráficas de series de Fourier exponenciales y trigonométricas
% en tiempo continuo.
% * Manipulación de instrucciones en MATLAB.
% * Calculo númerico de los coeficientes de Fourier.

%% Introducción
% En esta práctica se va a observar el tema de Series de Fourier con el
% apoyo de matlab para mostrar diferentes graficos que nos proporcionen información
% útil de la serie.
% Como introducción vamos a observar la aproximación numerica para encontrar
% los Dn de la serie exponencial compleja que vemos en
% la sección 6.6 del libro Lathi.
% Para calcular numericamente Dn se usa la transformada discreta de
% Fourier, este metodo utiliza muestras de la señal periodica x(t) eb un
% período T.
% 
% <<aprox.png>>
% 
% En este caso nosotros tenemos $$N_0 = T_0/T$ número de muestras en un
% periodo $$T_0$ y $\Omega_0=\omega_0T= \frac{2\pi}{N_0}$
%  
%  Nosotros no podemos hacer que T tienda a cero, pero si podemos tomar una
%  T muy pequeña, así que por esta cuestion vamos a obviar el limite de T
%  de la ecuación, siempre recordando que T es diferente de cero.
% 
% <<sinLimite.png>>
% 
% Por último podemos observar la propiedad de de periocidad, donde
% encontramos que 
% 
% <<periocidad.png>>
%
% Esta propiedad significa que cada $$n = \frac{N_0}{2}$ el coeficiente
% respresenta el valor negativo de n.
% 
% <<32.png>>
% 
% 
% 
% y el ciclo se repite cada $$n = 32$
% 
% Como último recordatorio retomamos de la práctica pasada que podemos
% encontrar otros metodos para aproximar una integral, a continucación se
% puede observar uno de los métodos previamente vistos.
% 
% <<practica4.png>>
%% Desarrolo
% En esta sección se van a resolver diferentes problemas que se encuentran
% en el libro Lathi. Para cada problema lo que se va a hacer es:
%%
% # Realizar el programa de la serie que se indica
% # Gráfica de la serie de Fourier en un intervalo que muestre 5 repeticiones
% # Gráfica de la señal y la serie de Fourier para 4 armonicos
% # Gráfica del error
% # Gráfica de la energía del error
% # Espectro de magnitud para 4 armonicos
% # Espectro de fase para 4 armonicos
% # Todo lo anterior para 15 armonicos
% 
%% Ejemplo 6.1
% Encuentra la serie trigonométrica compacta de la siguiente funcion y su
% espectro
% 
% <<6-1.png>>
%
% La función a la que le debemos sacar la serie de fourier es la siguiente
% 
% <<f1.png>>
% 
% Despues del calculo matemático nosotros podemos observar que contamos con
% la siguiente serie.
% 
% <<serie1.png>>
% 
% Podemos observar la exactitud que nos puede dar la serie cuando
% aumentamos o disminuimos los armonicos. Vamos a observar primero la serie
% con 4 armonicos y despues con 15 para notar la diferencia.
% 
% <<4f1.png>>
% 
% En las graficas anterioes se ve poca precisión en la serie de fourier con respecto de la funcion origial.
% Ahora lo veremos con 15 armónicos para ver que ocurre. co
% 
% <<15f1.png>>
% 
% Como se puede observar, la serie de fourier con más armónicos se parece
% mas a nuestra función original(en rojo), tiene más precisión.
%% Ejemplo 6.2
% Encontrar la serie exponencial y el espectro. Para este ejemplo vamos a
% suponer que A-3.
%% Ejemplo 6.4
% Para este problema se tiene que realizar la serie y el espectro
% exponencial.
% Bueno para este ejemplo se tiene un pulso que va desde $-\pi$ a $\pi$
% pero solo de  $-\pi/2$ a $\pi/2$ tiene un valor y este valor es uno.
% Este ejemplo a diferencia del primer ejemplo que vimos en la práctica se
% toma una funcion a trozos, que es interesante ver como se gráfica y
% evalua para el problema. Dejaré este código en el apéndice de la
% práctica.
% Antes de graficar se tiene que realizar las operaciones matematicas para
% encontrar los coeficientes. En este caso primero encuentro la serie de
% fourier trigonometríca y de esa fórmula hago una conversion para sacar la
% exponencial.
% De la conversión tenemos que $D_0 = 1/2$, con la fórmula de conversion y
% tomando en cuenta que no tenemos un $b_n$ podemos decir que:
% 
% <<dn.png>>
% 
% Esta serie tiene coeficientes:
% 
% <<serie.png>>
% 
% Estas son las gráficas con 4 armonicos:
% 
% <<4f4.png>>
% 
% Y esta es la diferencia que se llega a apreciar cuando aumentamos de e4 a
% 15 armónicos:
% 
% <<15f4.png>>
% 
% 
%
% 
% 
%
%
% 
%
%
% 
% 
%
%
% 
%
%
% 
% 
%
%
% 
%
%
% % 
%
%
% 
%
%
% 





%% Ejemplo 6.5 
% En este ejemplo vamoa a encontrar la serie exponen ia serie de fourier
% exponencial de la funciión que previamente vimos en el ejemplo 6.1.
% Ahora a diferencia del ejemplo 6.1 si vamos a tener valores cuando la t
% sea negativa.
% 
% <<4f5.png>>
% 
% En esta grafica se observa que la serie no es tan exacta con apenas 4
% armonicos, vemos que la gráfica de error tiene una área que para ciertos
% casos podría ser considerable. Se aprecia una mejor aproximacion a la
% gráfica origial en nuestra siguientes gráficas donde aumentemos los
% armónicos.
% 
% <<15f5.png>>
% 
% Disminuye el erro con más armónicos y así podriamos ir siendo mas exactos
% si ponemos un número de armonicos lo suficientemente grande.
%% Ejemplo 6.7
% Encontrar la serie y el espectro exponencial tomando en cuenta que para
% este ejemplo la A=3. Para este ejemplo no es necesario colocar la gráfica
% original, el error ni la energía del error.
% Para mostrar las gráficas tomé el código de ejemplo de la práctica con
% ciertas modificaciones para que cumpliera con lo requerido, primero
% veremos como se ve la serie con cuatro armónicos.
% 
% <<4f7.png>>
% 
% Vamos a ver algo que a simple vista puede lelgar a ser raro y es que la
% gráfica de la fase, el espectro de fase esta siempre en cero, esto pasa
% porque al tener $D_n=1/3$ el numero siempre es un real positivo, eso nos indica 
% que siempre esta sobre el eje real derecho y nos dice que siempre 
% tendrá ángulo 0. Como es obvio suponer, se mantendré lo antes mencionado cuando aumentemos
% en número de armónicos.
% 
% <<15f7.png>>
%% Ejemplo C6.4
% Elabore un código que implemente el algoritmo de trapecio compuesto para 
% $n=15$, Utilice este código para aproximar $D_0,...,D_4$ del ejemplo de
% la práctica. Ahora implemente el código COMPUTER EXAMPLE C6.4 que se encuentra al 
% final de la sección 6.6 de Lathi, y calcule nuevamente el los coeficientes $D_0,...,D_4$ del 
% ejemplo propuesto. Muestre una tabla que contenga los coeficientes mencionados calculados 
% con los dos algoritmos y de forma exacta,
% 
%
%
% 
%
%
% 
%
%
%% Apéndice
% Aquí mostrare mi código de matlab con el cual fui resolviendo los
% diferentes ejemplos de la práctica.
% Este código fue para encontrar la serie de Fourier trigonométrica
% 
% <include>p1.m</include>
% 
% Para el ejemplo 6.5 y 6.7 utilicé el mismo código que viene como
% referencia, en el 6.5 no sele hizo ninguna modificación así que no
% amerita ser mencionado aquí. En cambio en el 6.7 Se llama del mismo modo
% pero se quitan del script las gráficas que no se necesitan.
% 
% <include>p7.m</include>
% 
% Para el ejemplo 6.4 en una función a trozos utilicé la función de ejemplo
% de la práctica pero la modificación interesante pasa cuando se llama pues
% declaro una función simbolica pero con operadores lógicos que se encargan
% de evaluar que función tomar y en que momento en el instante en el que
% son ciertos y regresan un true.
%
% <include>programa.m</include>
%
% Si es verdad la condicional regresa uno y multiplica a esa función, de no
% ser así es false y regresa un cero que sera multiplicado por la función
% correspondiente
%
%
%
% 
%
%
% 
%
%
% 
%
%
% 
%
%
% 
%
%
%% Referencia
%
% Lathi, B. P. (1998). Signal processing and linear systems (cap. 6). New York: Oxford University Press.
% 
%
%
% 
%
%
% 
%
%% 
%
%
% 
%
%
% 
%
%
% 
%
%
% 
%
%
% 
%
%
% 
%
%
% 
%
%
% 
%
%
% 
%
%
% 
%
%
% 
%
%

