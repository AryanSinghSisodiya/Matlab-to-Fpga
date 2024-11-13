if (opName_0(3,1) == fi(12,0,16,0))
    ControlQubit = fi(0,0,16,0);
    op_2 =getControledOperator(op_2_1,ControlQubit);
else

    if (opName_1(3,1) == fi(12,0,16,0))
        ControlQubit = fi(1,0,16,0);
        op_2 =getControledOperator(op_2_0,ControlQubit);
    else
    
        op_2 =prodotto_di_kronecker(op_2_0,op_2_1);
    end
disp('Operator Matrix (initState_0_1):');
disp(initState_0(1,1));
disp('Operator Matrix (initState_0_2):');
disp(initState_0(2,1));
disp('Operator Matrix (initState_1_1):');
disp(initState_1(1,1));
disp('Operator Matrix (initState_1_2):');
disp(initState_1(2,1));
disp('Operator Matrix (op_temp):');
disp(op_temp);
disp(size(op_temp));
disp('Operator Matrix (new_temp):');
disp(new_temp);
disp(size(new_temp));
disp('Operator Matrix (c1_temp):');
    disp(c1_temp);
    
    disp('Operator Matrix (c2_temp):');
    disp(c2_temp);