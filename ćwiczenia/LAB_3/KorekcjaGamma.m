function wyjscie = korekcja_gamma(wejscie, gamma)
    wejscie_przeskalowane = wejscie / 255;

    wyjscie = wejscie_przeskalowane .^ (1 / gamma);

    wyjscie = wyjscie * 255;
end

