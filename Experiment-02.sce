function C = matrix_mult(A, B)
    [m, n] = size(A);
    [p, n] = size(B);
    if n ~= p then
        error("Inconsistent dimensions for multiplication");
    else
        C = zeros(m, n); // Initialize resultant matrix with zeros
        for i = 1:m
            for j = 1:n
                for k = 1:p
                    C(i,j) = C(i,j) + A(i,k) * B(k,j);
                end
            end
        end
    end
endfunction

A = [-9, 2, 5; 3, 3, -4; 7, 5, 1];
B = [1, -6, -2; 5, 5, 8; 2, -3, 4];

// Perform multiplication using the function
C_manual = matrix_mult(A, B);

// Perform multiplication using built-in operator
C_builtin = A * B;

// Check differences in results
C_diff = C_manual - C_builtin;

// Display Results
disp("Matrix A:", A);
disp("Matrix B:", B);
disp("Product (Manual Loop):", C_manual);
disp("Product (Built-in):", C_builtin);
disp("Difference matrix:", C_diff);
