macierz = randi([0, 5], 4, 3);

disp('Macierz przed modyfikacją:');
disp(macierz);

[m, n] = size(macierz);
for i = 1:m
    for j = 2:n
        macierz(i, j) = macierz(i, j) + ceil(macierz(i, j-1));
    end
end

disp('Macierz po modyfikacji:');
disp(macierz);


