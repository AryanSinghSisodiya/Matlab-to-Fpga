function C = matrix_complex_mults(A,B)
    % Prodotto tra matrici complesse
    % C = A*B
    A_temp = reshape(A,2,2);
    B_temp = reshape(B,2,2);
    C_temp = A_temp*B_temp;
    C = C_temp(:);
end