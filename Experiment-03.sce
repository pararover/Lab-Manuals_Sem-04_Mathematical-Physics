// Function to compute and display results
function compute_spec(A, name)
    printf("\nResults for Matrix %s:\n", name);
    [v, D] = spec(A);
    lambda = diag(D);
    disp("Eigenvalues:", lambda');
    disp("Eigenvectors (along columns):", v);
    
    // Verification: A*v(:,1) - lambda(1)*v(:,1) should be approx zero
    verification = A*v(:,1) - lambda(1)*v(:,1);
    disp("Verification using residual for 1st eigenpair:", clean(verification));
endfunction

// Matrix 1: Real Matrix
X = [4, 3, 7; 1, 2, 7; 2, 0, 4];

// Matrix 2: Complex Hermitian Matrix
// Note: %i represents the imaginary unit in Scilab
Y = [1, -%i, 3+4*%i; %i, 2, 4; 3-4*%i, 4, 3];

// Matrix 3: Complex Hermitian Matrix
Z = [2, -%i, 2*%i; %i, 4, 3; -2*%i, 3, 5];

// Execute for the given matrices
compute_spec(X, "X");
compute_spec(Y, "Y");
compute_spec(Z, "Z");
