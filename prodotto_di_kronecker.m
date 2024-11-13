function C = prodotto_di_kronecker(c1,c2)

    fm = fimath('RoundingMethod', 'Nearest', ...
        'OverflowAction', 'Saturate', ...
        'ProductMode', 'FullPrecision', ...
        'SumMode', 'FullPrecision' );
    
    nt = numerictype(1, 16, 15);
    C_real = fi([],nt,fm);
    C_imag = fi([],nt,fm);
    C_template = complex(C_real,C_imag);
    C = cast(zeros(16,1),'like', C_template);
    c1_temp = reshape(c1,2,2);
    c2_temp = reshape(c2,2,2);
    c_00 = c1_temp(1,1)*c2_temp;
    c_01 = c1_temp(1,2)*c2_temp;
    c_10 = c1_temp(2,1)*c2_temp;
    c_11 = c1_temp(2,2)*c2_temp;
    C_temp = [c_00 c_01;c_10 c_11];
    C(:)=C_temp(:);
end