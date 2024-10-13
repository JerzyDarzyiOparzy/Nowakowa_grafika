function wynik = porownanie_v_PS_z_mnoznikiem(obraz_stary, obraz_nowy, mnoznik)
    roznica = abs(obraz_nowy - obraz_stary);
    wynik = przytnij_zakres(mnoznik * roznica);
end
