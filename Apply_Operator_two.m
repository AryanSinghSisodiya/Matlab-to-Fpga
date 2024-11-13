function C = Apply_Operator_two(Operator,A)
    Operator_temp = reshape(Operator,4,4);
    C = Operator_temp*A;
end