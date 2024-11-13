function op =getControledOperator(baseOp,ControlQubit)

    fm = fimath('RoundingMethod', 'Nearest', ...
        'OverflowAction', 'Saturate', ...
        'ProductMode', 'FullPrecision', ...
        'SumMode', 'FullPrecision');
    
    nt = numerictype(1, 16, 15);
    op_real = fi([],nt,fm);
    
    op_imag = fi([],nt,fm);
    op_template = complex(op_real,op_imag);
    op = cast(zeros(16,1),'like',op_template);
    baseOp_temp = reshape(baseOp, 2,2);
    disp('Operator Matrix (baseOp_temp):');
    disp(baseOp_temp);
        if ControlQubit == 0
            op(:)= [eye(2) zeros(2); zeros(2) baseOp_temp];
        elseif ControlQubit == 1
            op(:)= [1, 0, 0, 0; 0, baseOp_temp(1,1), 0 ,baseOp_temp(1,2); 0, 0, 1, 0; 0, baseOp_temp(2,1), 0, baseOp_temp(2,2)];
        else
            op(:)= zeros(16,1);
        end

end