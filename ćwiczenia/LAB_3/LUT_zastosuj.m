function wyjscie = LUT_zastosuj(wejscie, LUT)
    wyjscie = uint8(LUT(double(wejscie) + 1));
end
