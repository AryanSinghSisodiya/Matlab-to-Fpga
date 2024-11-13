fm = fimath('RoundingMethod', 'Nearest', ...
    'OverflowAction', 'Saturate', ...
    'ProductMode', 'FullPrecision', ...
    'SumMode', 'FullPrecision' );
nt1 = numerictype(1, 16, 15); 
nt = numerictype(1, 16, 13);
template = fi([],nt,fm);
theta_0 = cast([0; 0],'like', template);
phi_0 = cast([0; 0],'like',template);
lambda_0 = cast([0; 0],'like', template);
theta_1 = cast([0; 0],'like', template);
phi_1 = cast([0; 0],'like',template);
lambda_1 = cast([0; 0],'like',template);
initState_0 = complex(fi([1.0000000000000000;0.0000000000000000],nt1,fm),fi([0.0000000000000000;0.0000000000000000],nt1,fm));
initState_0_bin = bin(initState_0);
initState_1 = complex(fi([1.0000000000000000;0.0000000000000000],nt1,fm),fi([0.0000000000000000;0.0000000000000000],nt1,fm));
initState_1_bin = bin(initState_1);

opName_0 = fi([1;12],0,16,0);
opName_0_bin = bin(opName_0);
theta_0(:) = [0;0];
theta_0_bin = bin(theta_0);
phi_0(:) = [0;0];
phi_0_bin = bin(phi_0);
lambda_0(:) = [0;0];
lambda_0_bin = bin(lambda_0);
opName_1 = fi([10;11],0,16,0);
opName_1_bin = bin(opName_1);
theta_1(:) = [-pi/2;pi/4];
theta_1_bin = bin(theta_1);
phi_1(:) = [0;0];
phi_1_bin = bin(phi_1);
lambda_1(:) = [0;0];
lambda_1_bin = bin(lambda_1);
[computerState_my, probFinal_my, probQubit_0_my, probQubit_1_my] =quantumComputer_twoQubit(opName_0,theta_0,phi_0,lambda_0,opName_1,theta_1,phi_1,lambda_1,initState_0,initState_1);
computerState_bin_my = bin(computerState_my);
disp('StateVector (computerState_bin_my):');

disp(computerState_bin_my);
real_part_1 = real(computerState_my(1));
imag_part_1 = imag(computerState_my(1));
real_part_2 = real(computerState_my(2));
imag_part_2 = imag(computerState_my(2));
real_part_3 = real(computerState_my(3));
imag_part_3 = imag(computerState_my(3));
real_part_4 = real(computerState_my(4));
imag_part_4 = imag(computerState_my(4));

% Convert the fixed-point numbers to doubles for readability
real_part_1 = double(real_part_1);
imag_part_1 = double(imag_part_1);
real_part_2 = double(real_part_2);
imag_part_2 = double(imag_part_2);
real_part_3 = double(real_part_3);
imag_part_3 = double(imag_part_3);
real_part_4 = double(real_part_4);
imag_part_4 = double(imag_part_4);
% Print in the desired format
fprintf('Quantum State: [%.4f + %.4fi; %.4f + %.4fi ; %.4f + %.4fi; %.4f + %.4fi]\n', ...
    real_part_1, imag_part_1, real_part_2, imag_part_2, real_part_3, imag_part_3, real_part_4, imag_part_4);