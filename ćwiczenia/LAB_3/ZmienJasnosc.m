function wyjscie = ZmienJasnosc(wejscie, wspJasnosci)

    obraz_zmieniony = wejscie + wspJasnosci;

    obraz_zmieniony(obraz_zmieniony < 0) = 0;
    obraz_zmieniony(obraz_zmieniony > 255) = 255;

    wyjscie = obraz_zmieniony;
end

