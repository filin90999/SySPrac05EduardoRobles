% *Aproximacion numerica de los coeficientes de Fourier exponencial
% compleja*
%
% Podemos calcular Dn numéricamente mediante el uso de la DFT (la transformada discreta de Fourier), 
% que utiliza las muestras deuna señal periódica $x(t)$ durante un período. El intervalo de muestreo es de $T$   
% segundos.  Por lo tanto, hay $N_0=\frac{T_0} { T}$ número de muestras en un período $T_0$. 
% Para encontrar la relación entre $D_n$ y las muestras de $x(t)$ 
%
% $D_n=\frac{1}{T_0} * \int_{T_0} x(t)*e^{-jnwot}dt$
%
% $=\lim_{t\to 0}$  $\frac{1}{N_0T}$  $\sum_{k=0}^{N_0-1} x(kT)e^{-jn \omega_0 T}T$
%
%%
% $=\lim_{t\to 0}$  $\frac{1}{N_0}$  $\sum_{k=0}^{N_0-1} x(kT)e^{-jn\omega_0 T} \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \quad (6.60)$  
%
%%
% donde $x(kT)$ es la k muestra de $x(t)$ y 
%
%%
% $N_0=\frac{T_0}{T} \quad \Omega_0=\omega_0 T= \frac{2\pi}{N_0} \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad  (6.61)$
%%
% En la práctica, es imposible que $T \rightarrow 0$ entonces calculamos el lado derecho de la ecuación $(6.60)$. Podemos hacer $T$ pequeña, pero no cero, 
% lo que hará que los datos aumenten sin límite. Por lo tanto, ignoraremos el límite de $T$ en la ecuación $(6.60)$ con el 
%  entendimiento implícito de que $T$ es razonablemente pequeño. El valor distinto de cero en $T$ dará como resultado algún error 
% de cálculo, que es inevitable en cualquier evaluación numérica de una integral, el error resultante de una $T$ distinta 
% de cero se denomina error de aliasing: este proceso de define como la alteracion de
% la percepcion de un determinado movimiento a traves de nuestra percepcion o de cualquier optica, 
% por ejemplo cuando vamos andando por la calle y al mirar la llanta de un vehiculo tenemos la percepcion
% de que mueve en sentido contrario, es decir el vehiculo se mueve haia adelante pero las ruedas es como
% si se movieran hacia atras.
%
% Por lo tanto, podemos expresarla
% como
%
% $D_n=\frac{1}{N_0}$  $\sum_{k=0}^{N_0-1} x(kT)e^{-jn \Omega_0 T} \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad (6.62a)$
% 
%%
% Ahora, desde la ecuacion $(6.61)$, $\Omega_0 N_0 = 2\pi$ . Por lo tanto, $e^{j \Omega_0 (k + N 0)} = e^{j \Omega_0 k}$ y de la ecuación $(6.62a)$ se deduce que 
%
% $D_{n+N_0} = D_n \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \quad \qquad \qquad \qquad(6.62b)$
%%
% La propiedad de periodicidad $D_{n+N_0} = Dn$ significa que más allá de $n =\frac {N_0}{2}$, los coeficientes  
% representan los valores para n negativo. Por ejemplo, cuando $N_0 = 32, D_{17} = D_{-15}, D_{18} = D_{-14}, ..., D_{31} = D_{-1}$. El ciclo se repite de nuevo desde $n = 32$ . 
%%
% referencia
%
% https://grupocarman.com/blog/efecto-aliasing/
%
% Lathi, B. P. (Bhagwandas Pannalal)
% Linear systems and signals/B. P. Lathi.—2nd