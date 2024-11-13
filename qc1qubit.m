fm = fimath('RoundingMethod', 'Nearest', ...
'OverflowAction', 'Saturate', ...
'ProductMode', 'SpecifyPrecision', ...
'ProductWordLength', 16, ...
'ProductFractionLength', 15, ...
'SumMode', 'SpecifyPrecision', ...
'SumWordLength', 16, ...
'SumFractionLength', 15, ...
'CastBeforeSum', true);
nt1 = numerictype(1, 16, 15);
initState = complex(fi([1.0000000000000000;
0.0000000000000000],nt1,fm),fi([0.0000000000000000;
0.0000000000000000],nt1,fm));
initState_bin = bin(initState);
opName = fi([1,4],0,16,0);
nt = numerictype(1, 16, 13);
template = fi([],nt,fm);
theta = cast([0;0],'like',template);
theta(:) = [-pi/2;0];
theta_bin = bin(theta);
phi = cast([0;0],'like', template);
phi(:)=[pi/4;0];
phi_bin=bin(phi);
lambda = cast([0;0],'like', template);
lambda(:) = [-pi/9;0];
lambda_bin =bin(lambda);
[computerState_my, probFinal_my] =quantumComputer_oneQubit(opName,theta,phi,lambda,initState);
computerState_bin_my = bin(computerState_my);
probFinal_bin_my = bin(probFinal_my);
%disp(computerState_bin_my)
%disp(probFinal_bin_my)

% Extract the real and imaginary parts of the state components
real_part_1 = real(computerState_my(1));
imag_part_1 = imag(computerState_my(1));
real_part_2 = real(computerState_my(2));
imag_part_2 = imag(computerState_my(2));

% Convert the fixed-point numbers to doubles for readability
real_part_1 = double(real_part_1);
imag_part_1 = double(imag_part_1);
real_part_2 = double(real_part_2);
imag_part_2 = double(imag_part_2);

% Print in the desired format
fprintf('Quantum State: [%.4f + %.4fi; %.4f + %.4fi]\n', ...
    real_part_1, imag_part_1, real_part_2, imag_part_2);
