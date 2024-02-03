function [root, iterations] = newtonRaphson(f, df, x0, tol, max_iter)
    iterations = 0;
    x = x0;
    
    while abs(f(x)) > tol && iterations < max_iter
        x = x - f(x) / df(x);
        iterations = iterations + 1;
    end
    
    root = x;
end

% Função e sua derivada
f = @(x) x^3 - 2*x - 5;
df = @(x) 3*x^2 - 2;

% Parâmetros do método
x0 = 1;         % Valor inicial
tol = 1e-6;     % Tolerância
max_iter = 50;  % Número máximo de iterações

% Executa o método de Newton-Raphson
[root, iterations] = newtonRaphson(f, df, x0, tol, max_iter);

fprintf('Raiz aproximada: %.6f\n', root);
fprintf('Iterações: %d\n', iterations);

% Plotagem do gráfico da função e das iterações
x_vals = linspace(root - 2, root + 2, 100);
y_vals = arrayfun(f, x_vals);

figure;
plot(x_vals, y_vals, 'b', root, f(root), 'ro');
grid on;
title('Método de Newton-Raphson');
xlabel('x');
ylabel('f(x)');
legend('Função', 'Raiz aproximada');
