function obraz_wynikowy = LUT_zastosuj_kolor(wejscie, LUT, kolor)
    obraz_wynikowy = wejscie;
    if kolor == 'R'
        obraz_wynikowy(:, :, 1) = LUT(wejscie(:, :, 1) + 1);
    elseif kolor == 'G'
        obraz_wynikowy(:, :, 2) = LUT(wejscie(:, :, 2) + 1);
    elseif kolor == 'B'
        obraz_wynikowy(:, :, 3) = LUT(wejscie(:, :, 3) + 1);
    end
end
