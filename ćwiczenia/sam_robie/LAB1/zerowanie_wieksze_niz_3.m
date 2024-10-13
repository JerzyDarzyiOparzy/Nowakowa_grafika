clear;
macierz = randi([0, 5], 3, 4);

disp('Macierz przed modyfikacją:');
disp(macierz);

[m, n] = size(macierz);
for i = 1:m
    for j = 1:n
        if macierz(i,j) > 3
          macierz(i,j) = 0;
        end
    end
end

disp('Macierz po modyfikacji:');
disp(macierz);

