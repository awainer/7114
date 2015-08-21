var redondos >= 0;
var rect >= 0;

maximize obj: redondos*8 + rect*10;

s.t.  tela: 2*redondos + 3*rect <= 600;
s.t.  esquineros: 4*rect <= 600;
s.t.  horas:  2*redondos + rect <= 500;
end;
