function dy = f1(x, y)
    dy = exp(x);
endfunction
    
function dy = f2(x, y)
    dy = x^2 - exp(-x)*y;
endfunction

function dy = f3(x, y)
    dy(1) = y(2);
    dy(2) = -y(1) - 2*y(2);
endfunction

function dy = f4(x, y)
    dy(1) = y(2);
    dy(2) = -y(1) - exp(-x)*y(2);
endfunction

x = 0:0.1:5;
x0 = 0; y0 = 0;
y_sol1 = ode(y0, x0, x, f1);
y_sol2 = ode(y0, x0, x, f2);
y0_coupled = [1; 0];
y_sol3 = ode(y0_coupled, x0, x, f3);
y_sol4 = ode(y0_coupled, x0, x, f4);

scf(1); plot(x, y_sol1(1, :));
title("$\text{Solution of } \dfrac{dy}{dx}=e^x$", "fontsize", 4);
xlabel("$x$", "fontsize", 4); ylabel("$y(x)$", "fontsize", 4);

scf(2); plot(x, y_sol2(1, :));
title("$\text{Solution of } \dfrac{dy}{dx}+e^{-x}y=x^2$", "fontsize", 4);
xlabel("$x$", "fontsize", 4); ylabel("$y(x)$", "fontsize", 4);

scf(3); plot(x, y_sol3(1, :));
title("$\text{Solution of } \dfrac{d^2y}{dx^2}+2\dfrac{dy}{dx}=-y$", "fontsize", 4);
xlabel("$x$", "fontsize", 4); ylabel("$y(x)$", "fontsize", 4);

scf(4); plot(x, y_sol4(1, :));
title("$\text{Solution of } \dfrac{d^2y}{dx^2}+e^{-x}\dfrac{dy}{dx}=-y$", "fontsize", 4);
xlabel("$x$", "fontsize", 4); ylabel("$y(x)$", "fontsize", 4);
