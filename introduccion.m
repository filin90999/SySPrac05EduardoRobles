% *Aproximacion numerica de los coeficientes de Fourier exponencial
% compleja*
%
% Podemos calcular Dn num�ricamente mediante el uso de la DFT (la transformada discreta de Fourier), 
% que utiliza las muestras deuna se�al peri�dica $x(t)$ durante un per�odo. El intervalo de muestreo es de $T$   
% segundos.  Por lo tanto, hay $N_0=\frac{T_0} { T}$ n�mero de muestras en un per�odo $T_0$. 
% Para encontrar la relaci�n entre $D_n$ y las muestras de $x(t)$ 
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
% En la pr�ctica, es imposible que $T \rightarrow 0$ entonces calculamos el lado derecho de la ecuaci�n $(6.60)$. Podemos hacer $T$ peque�a, pero no cero, 
% lo que har� que los datos aumenten sin l�mite. Por lo tanto, ignoraremos el l�mite de $T$ en la ecuaci�n $(6.60)$ con el 
%  entendimiento impl�cito de que $T$ es razonablemente peque�o. El valor distinto de cero en $T$ dar� como resultado alg�n error 
% de c�lculo, que es inevitable en cualquier evaluaci�n num�rica de una integral, el error resultante de una $T$ distinta 
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
% Ahora, desde la ecuacion $(6.61)$, $\Omega_0 N_0 = 2\pi$ . Por lo tanto, $e^{j \Omega_0 (k + N 0)} = e^{j \Omega_0 k}$ y de la ecuaci�n $(6.62a)$ se deduce que 
%
% $D_{n+N_0} = D_n \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \quad \qquad \qquad \qquad(6.62b)$
%%
% La propiedad de periodicidad $D_{n+N_0} = Dn$ significa que m�s all� de $n =\frac {N_0}{2}$, los coeficientes  
% representan los valores para n negativo. Por ejemplo, cuando $N_0 = 32, D_{17} = D_{-15}, D_{18} = D_{-14}, ..., D_{31} = D_{-1}$. El ciclo se repite de nuevo desde $n = 32$ . 
%%
% referencia
%
% https://grupocarman.com/blog/efecto-aliasing/
%
% Lathi, B. P. (Bhagwandas Pannalal)
% Linear systems and signals/B. P. Lathi.�2nd