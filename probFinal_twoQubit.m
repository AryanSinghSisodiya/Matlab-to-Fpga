function [probFinal,probQubit0,probQubit1]=probFinal_twoQubit(computerState)
fm = fimath('RoundingMethod', 'Nearest', ...
        'OverflowAction', 'Saturate', ...
        'ProductMode', 'FullPrecision', ...
        'SumMode', 'FullPrecision');
    nt = numerictype(0, 16, 16);
    prob = fi([0; 0; 0; 0],nt,fm);
    probFinal = fi([0; 0; 0; 0],nt,fm);
    probQubit0 = fi([0; 0],nt,fm);
    probQubit1 = fi([0; 0],nt,fm);
    abs_value = cordicabs(computerState,15);
    prob(:) = abs_value.* abs_value;
    probQubit0(:)=[prob(1,1)+prob(2,1);prob(3,1)+prob(4,1)];
    probQubit1(:)= [prob(1,1)+prob(3,1);prob(2,1)+prob(4,1)];
    probFinal(:) = prob;
end