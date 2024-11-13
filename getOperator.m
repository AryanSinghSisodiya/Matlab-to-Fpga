function op = getOperator(opName,theta,phi,lambda)
    fm = fimath('RoundingMethod', 'Nearest', ...
        'OverflowAction', 'Saturate', ...
        'ProductMode', 'SpecifyPrecision', ...
        'ProductWordLength', 16, ...
        'ProductFractionLength', 15, ...
        'SumMode', 'SpecifyPrecision', ...
        'SumWordLength', 16, ...
        'SumFractionLength', 15, ...
        'CastBeforeSum', true);
    nt = numerictype(1, 16, 15);
    op_real = fi([],nt,fm);
    op_imag = fi([],nt,fm);
    op_template = complex(op_real,op_imag);
    
    [seno_phi, coseno_phi] = cordicsincos(phi,15);
    
    half_theta = bitsra(theta,1);
    [seno_half_theta, coseno_half_theta] = cordicsincos(half_theta,15);
    
    [seno_theta, coseno_theta] = cordicsincos(theta,15);
    
    [seno_lambda, coseno_lambda] = cordicsincos(lambda,15);
    
    
    op = cast([0; 0; 0; 0],'like', op_template);
    
    if opName == fi(0,0,16,0)  %Identity Matix
        op(:) = [1 0; 0 1];
    elseif opName == fi(1,0,16,0) % X gate
        op(:) = [0 1; 1 0];
    elseif opName == fi(2,0,16,0) % Y Gate
        op(:) = [0 ,-1i; 1i, 0];
    elseif opName == fi(3,0,16,0) % Z Gate
        op(:) = [1 0; 0 -1];
    elseif opName == fi(4,0,16,0) % H Gate
        op(:) = 0.707106781186547*[1 1; 1 -1];
    elseif opName == fi(5,0,16,0) % S gate
        op(:) = [1 0; 0 1i];
    
    elseif opName == fi(6,0,16,0) % U1 gate
        op(:) = [1 0; 
            0 coseno_theta+1i*seno_theta];
    
    elseif opName == fi(7,0,16,0) %U2 gate
        op(:) = 0.707106781186547*[1 -coseno_theta-1i*seno_theta; ...
             coseno_phi+1i*seno_phi
    coseno_theta*coseno_phi-seno_theta*seno_phi+1i*(seno_theta*coseno_phi+coseno_theta*seno_phi)];

    elseif opName == fi(8,0,16,0) %U3 Gate
        op(:) = [coseno_half_theta, -(coseno_lambda*seno_half_theta +1i*(seno_lambda*seno_half_theta));
                coseno_phi*seno_half_theta+1i*seno_phi*seno_half_theta, (coseno_lambda*coseno_phi-seno_lambda*seno_phi)*coseno_half_theta+1i*(seno_lambda*coseno_phi+coseno_lambda*seno_phi)*coseno_half_theta];
 
    elseif opName == fi(9,0,16,0) %Rx Gate
        op(:) = [coseno_half_theta -1i*seno_half_theta;
            -1i*seno_half_theta coseno_half_theta];
    elseif opName == fi(10,0,16,0) %Ry Gate
        op(:) = [coseno_half_theta -seno_half_theta;
            seno_half_theta coseno_half_theta];
    elseif opName == fi(11,0,16,0) % Rz Gate
        op(:) = [coseno_half_theta-1i*seno_half_theta,0;
            0, coseno_half_theta+1i*seno_half_theta];
    elseif opName == fi(12,0,16,0)
        op(:) = [1 0; 0 1];
    else
    
        op(:) = [0 0; 0 0]; % Matrice Nulla
    
    end

end


