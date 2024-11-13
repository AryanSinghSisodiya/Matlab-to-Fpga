function C = two_qubit_register(c1,c2)

    c_00 = c1(1,1)*c2(1,1);
    
    c_01= c1(1,1)*c2(2,1);
    
    c_10= c1(2,1)*c2(1,1);
    
    c_11= c1(2,1)*c2(2,1);
    
    C= [c_00;c_01;c_10;c_11];

end