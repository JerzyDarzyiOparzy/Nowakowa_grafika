function wynik = przytnij_zakres(wejscie)
    wejscie(wejscie < 0) = 0;
    wejscie(wejscie > 255) = 255;

    wynik = wejscie;
end
