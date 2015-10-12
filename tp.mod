#Conjuntos:
#Las ciudades del viajante
set CIUDADES;
set dciudades;
#Parámetros (o constantes):
# Los costos de ir de i a j, i tiene que ser distinto de j
param COSTO{i in CIUDADES, j in CIUDADES : i<>j};

param DINEROS{i in CIUDADES};


#Variables:
#Yij, bivalente  que vale 1 si va desde la ciudad i hasta la j (i != j)
var Y{i in CIUDADES, j in CIUDADES: i<>j} >= 0, binary;
#Xij, bivalente que vale 1 si i se visita antes que j
var X{i in CIUDADES, j in CIUDADES: i<>j} >= 0, binary;
#Ui orden de secuencia en que la ciudad i es visitada (excluyendo el punto de partida que en este caso lo tomamos como A). Declarada entera sólo a efectos de mostrar la declaración.
var U{i in CIUDADES: i<>'A'} >=0, integer;
#Di dinero a la salida de la ciudad i
var D{i in CIUDADES} >=0, integer;

#Funcional:
minimize z: sum{i in CIUDADES, j in CIUDADES : i<>j} COSTO[i,j]*Y[i,j];

#Llego desde un solo lugar hasta la ciudad j
s.t. llegoJ{j in CIUDADES}: sum{i in CIUDADES: i<>j} Y[i,j] = 1;
#Voy hacia un sólo lugar desde i
s.t. voyI{i in CIUDADES}: sum{j in CIUDADES: i<>j} Y[i,j] = 1;
#Secuencia para evitar subtours
s.t. orden{i in CIUDADES, j in CIUDADES: i<>j and i<>'A' and j<>'A'}: U[i] - U[j] + card(CIUDADES)*Y[i,j] <= card(CIUDADES) - 1;
# Asigno valor a Xij
s.t. x1{i in CIUDADES, j in CIUDADES: i<>j and i<>'A' and j<>'A'}: -1000 * (1 -X[i,j]) + U[i] <= U[j];
s.t. x2{i in CIUDADES, j in CIUDADES: i<>j and i<>'A' and j<>'A'}: U[j] <= U[i] + X[i,j] * 1000;
s.t. dmin{i in CIUDADES: i<>'A'} : D[i] >= 0;
# capacidad del camion
s.t. dmax{i in CIUDADES: i<>'A'} : D[i] <= 13;
# cantidad de dinero a la salida de cada ciudad

s.t. dsal{j in CIUDADES} :  D[j] =  DINEROS[j] + sum{i in CIUDADES: i<>j} X[i,j] * DINEROS[i];

solve;


#Data segment
data;



set CIUDADES:= A B C D E F;
param COSTO :  A B C D E F :=
A  . 2 4 1 5 8
B  5 . 5 7 1 3
C  2 4 . 3 7 1
D  2 9 2 . 8 4
E  3 6 7 1 . 4
F  5 7 2 6 3 .;

param : DINEROS  := A 0 B 2 C -5 D -7 E 11 F 12;

end;
