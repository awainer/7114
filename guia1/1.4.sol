GLPSOL: GLPK LP/MIP Solver, v4.52
Parameter(s) specified in the command line:
 -o /dev/stdout -m 1.4.mod
Reading model section from 1.4.mod...
9 lines were read
Generating obj...
Generating tela...
Generating esquineros...
Generating horas...
Model has been successfully generated
GLPK Simplex Optimizer, v4.52
4 rows, 2 columns, 7 non-zeros
Preprocessing...
2 rows, 2 columns, 4 non-zeros
Scaling...
 A: min|aij| =  1.000e+00  max|aij| =  3.000e+00  ratio =  3.000e+00
Problem data seem to be well scaled
Constructing initial basis...
Size of triangular part is 2
*     0: obj =   0.000000000e+00  infeas =  0.000e+00 (0)
*     3: obj =   2.300000000e+03  infeas =  0.000e+00 (0)
OPTIMAL LP SOLUTION FOUND
Time used:   0.0 secs
Memory used: 0.1 Mb (102264 bytes)
Writing basic solution to `/dev/stdout'...
Problem:    1
Rows:       4
Columns:    2
Non-zeros:  7
Status:     OPTIMAL
Objective:  obj = 2300 (MAXimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 obj          B           2300                             
     2 tela         NU           600                         600             3 
     3 esquineros   B            200                         600 
     4 horas        NU           500                         500             1 

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 redondos     B            225             0               
     2 rect         B             50             0               

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
