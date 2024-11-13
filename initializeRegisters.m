function q = initializeRegisters(varargin)
%init configuration - all bits set to | 0>
    normalized = zeros(nargin,2);
    normalized(:,1)= ones(nargin,1);
    
    for k = 1:nargin
    hlp = cell2mat(varargin(k)); %q-bits
    normalization
    normalized(k,:)= hlp/norm(hlp);
    
    end
    
    hlp = (normalized(1,:)).';
    for k = 2:nargin
    hlp = kron(hlp,(normalized(k,:)).');%Tensor
    product to get final state
    end
    q = hlp;

end