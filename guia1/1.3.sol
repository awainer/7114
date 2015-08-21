GLPSOL: GLPK LP/MIP Solver, v4.52
Parameter(s) specified in the command line:
 -o /dev/stdout -m 1.3.mod
Reading model section from 1.3.mod...
12 lines were read
Generating obj...
Generating canta...
Generating cantb...
Generating maqa...
Generating maqb...
Model has been successfully generated
GLPK Simplex Optimizer, v4.52
5 rows, 2 columns, 9 non-zeros
Preprocessing...
3 rows, 2 columns, 6 non-zeros
Scaling...
 A: min|aij| =  4.000e-01  max|aij| =  4.000e+00  ratio =  1.000e+01
Problem data seem to be well scaled
Constructing initial basis...
Size of triangular part is 3
*     0: obj =   6.000000000e+02  infeas =  0.000e+00 (0)
*     2: obj =   2.800000000e+03  infeas =  0.000e+00 (0)
OPTIMAL LP SOLUTION FOUND
Time used:   0.0 secs
Memory used: 0.1 Mb (102284 bytes)
Writing basic solution to `/dev/stdout'...
Problem:    1
Rows:       5
Columns:    2
Non-zeros:  9
Status:     OPTIMAL
Objective:  obj = 2800 (MAXimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 obj          B           2800                             
     2 canta        B            150            50               
     3 cantb        B           -475                          -0 
     4 maqa         NU           200                         200            10 
     5 maqb         NU           200                         200             4 

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 p1           B            150             0               
     2 p2           B            125             0               

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.DE: max.abs.err = 1.78e-15 on column 1
        max.rel.err = 7.11e-17 on column 1
        High quality

KKT.DB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
