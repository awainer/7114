GLPSOL: GLPK LP/MIP Solver, v4.52
Parameter(s) specified in the command line:
 -o /dev/stdout -m 1.2.mod
Reading model section from 1.2.mod...
10 lines were read
Generating obj...
Generating maqa...
Generating maqb...
Generating maqc...
Model has been successfully generated
GLPK Simplex Optimizer, v4.52
4 rows, 2 columns, 8 non-zeros
Preprocessing...
3 rows, 2 columns, 6 non-zeros
Scaling...
 A: min|aij| =  2.000e+00  max|aij| =  4.000e+00  ratio =  2.000e+00
Problem data seem to be well scaled
Constructing initial basis...
Size of triangular part is 3
*     0: obj =   0.000000000e+00  infeas =  0.000e+00 (0)
*     2: obj =   1.350000000e+03  infeas =  0.000e+00 (0)
OPTIMAL LP SOLUTION FOUND
Time used:   0.0 secs
Memory used: 0.1 Mb (102276 bytes)
Writing basic solution to `/dev/stdout'...
Problem:    1
Rows:       4
Columns:    2
Non-zeros:  8
Status:     OPTIMAL
Objective:  obj = 1350 (MAXimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 obj          B           1350                             
     2 maqa         NU            80                          80          3.75 
     3 maqb         NU            60                          60          17.5 
     4 maqc         B             70                         100 

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 p1           B             10             0               
     2 p2           B             15             0               

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.DE: max.abs.err = 0.00e+00 on column 0
        max.rel.err = 0.00e+00 on column 0
        High quality

KKT.DB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
