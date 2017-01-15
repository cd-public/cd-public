\* Built LP *\
Minimize
OBJ: __dummy
Subject To
_C1: var_0_0_0 + var_0_1_0 = 1
_C2: var_1_0_0 + var_1_1_0 = 1
_C3: var_2_0_0 + var_2_1_0 = 1
_C4: 30 var_0_0_0 + 10 var_1_0_0 + 20 var_2_0_0 <= 30
_C5: 30 var_0_1_0 + 10 var_1_1_0 + 20 var_2_1_0 <= 30
_C6: 30 var_0_0_0 + 30 var_0_1_0 <= 30
_C7: 10 var_1_0_0 + 10 var_1_1_0 <= 30
_C8: 20 var_2_0_0 + 20 var_2_1_0 <= 30
Bounds
__dummy = 0
var_0_0_0 <= 1
var_0_1_0 <= 1
var_1_0_0 <= 1
var_1_1_0 <= 1
var_2_0_0 <= 1
var_2_1_0 <= 1
End
