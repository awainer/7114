var A >= 0;
var B >= 0;

maximize z: 1200*A + 400*B;
s.t. e1: 3*A + 0.6*B >= 40;
s.t. e2: A + 2*B <= 20;
s.t. p1: A >= 0;
s.t. p2: B >= 0;
end;
