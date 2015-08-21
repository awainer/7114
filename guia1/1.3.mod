
var p1 >= 0;
var p2 >= 0;

maximize obj: p1*12 + p2*8;

s.t. canta: p1 >= 50;
s.t. cantb: p2 - 4*p1  <= 0;

s.t.  maqa: p1+0.4*p2 <= 200;
s.t.  maqb: 0.5*p1+p2 <= 200;
end;
