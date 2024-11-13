classdef quantumcircuit
    properties
        n               % Number of qubits
        gates           % Cell array to hold the gate operations for each qubit
        full_operator   % Combined operator for all qubits
        nt              % Numeric type for fixed-point representation
    end
    
    methods
        function obj = quantumcircuit(n)
            % Constructor to initialize quantum circuit with n qubits
            obj.n = n;
            obj.nt = numerictype(1, 16, 15);  % Fixed-point numeric type
            obj.gates = cell(1, n);  % Initialize gate list for each qubit
            
            % Initialize the full operator as an identity operator for n qubits
            identity_template = fi([], obj.nt);
            identity_operator = complex(identity_template, identity_template);
            obj.full_operator = eye(2^n, 'like', identity_operator);  % Identity matrix for n-qubit system
        end
        
        function obj = getoperator(obj, opname, theta, phi, lambda, qubit_index)
            % Method to add a single-qubit operator to a specified qubit
            op = getOperator(opname, theta, phi, lambda);  % Get operator for specified gate
            obj.gates{qubit_index} = op;  % Store operator in gate list for specified qubit
            
            % Recompute full operator for the circuit with this new gate
            obj = obj.updateFullOperator();
        end
        
        
        function obj = getControlledOperator(obj, control_qubit, target_qubit, opname, theta, phi, lambda)
            % Method to add a controlled operator to the circuit
            target_op = getOperator(opname, theta, phi, lambda);  % Get the target qubit operator
            controlled_op = getControledOperator(target_op, control_qubit);  % Create controlled version
            
            % Store the controlled operator for the target qubit
            obj.gates{target_qubit} = controlled_op;
            
            % Recompute full operator for the circuit with this new controlled gate
            obj = obj.updateFullOperator();
        end
        
        function obj = updateFullOperator(obj)
            % Method to update the full operator by combining all gate operations
            obj.full_operator = obj.gates{1};  % Start with the operator for the first qubit
            
            % Sequentially combine operators for all qubits
            for q = 2:obj.n
                if isempty(obj.gates{q})
                    % If no operator is set for a qubit, use identity
                    identity_q = eye(2, 'like', obj.full_operator);
                    obj.full_operator = prodotto_di_kronecker(obj.full_operator, identity_q);
                else
                    % Otherwise, use the set operator for that qubit
                    obj.full_operator = prodotto_di_kronecker(obj.full_operator, obj.gates{q});
                end
            end
        end
        
        function state = applyCircuit(obj, initState)
            % Method to apply the full operator of the circuit to an initial state
            state = Apply_Operator(obj.full_operator, initState);
        end
    end
end
