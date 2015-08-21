
var p1 >= 0;
var p2 >= 0;

maximize obj: p1*60 + p2*50;

s.t.  maqa: 2*p1+4*p2 <= 80;
s.t.  maqb: 3*p1+2*p2 <= 60;
s.t.  maqc: 4*p1+2*p2 <= 100;
end;
