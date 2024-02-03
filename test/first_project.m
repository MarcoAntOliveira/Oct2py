% Definindo um vetor de números
numeros = [12, 5, 8, 20, 15];

% Calculando a média dos números
soma = sum(numeros);
quantidade = length(numeros);
media = soma / quantidade;

% Exibindo o resultado
fprintf('Números: %s\n', num2str(numeros));
fprintf('Soma: %d\n', soma);
fprintf('Quantidade: %d\n', quantidade);
fprintf('Média: %.2f\n', media);
