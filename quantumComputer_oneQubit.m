function [computerState, probFinal] =quantumComputer_oneQubit(opName,theta,phi,lambda,initState)

nt = numerictype(1, 16, 15);
template_real = fi([],nt);
template_imag = fi([],nt);
template = complex(template_real,template_imag);
computerState = cast([0; 0],'like', template);
op_0 =getOperator(opName(1,1),theta(1,1),phi(1,1),lambda(1,1));
 % Display the binary representation of the operator
op_1 =getOperator(opName(2,1),theta(2,1),phi(2,1),lambda(2,1));
%op_2 =getOperator(opName(3,1),theta(3,1),phi(3,1),lambda(3,1));
op_temp = matrix_complex_mults(op_1,op_0);
disp('Operator Matrix (op_temp):');
disp(bin(op_temp));
%op = matrix_complex_mults(op_2,op_temp);
computerState(:) = Apply_Operator(initState,op_temp);
probFinal = probFinal_oneQubit(computerState);
end
