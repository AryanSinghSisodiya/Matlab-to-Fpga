function C = Apply_Operator(A,Operator)
    Operator_temp = reshape(Operator,2,2);
    C = Operator_temp*A;
end