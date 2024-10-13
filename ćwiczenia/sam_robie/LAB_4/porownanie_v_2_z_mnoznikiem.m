function wynik = porownanie_v_2_z_mnoznikiem(obraz_stary, obraz_nowy, mnoznik)
    wynik = przytnij_zakres((obraz_nowy - obraz_stary) * mnoznik + 127.5);
end
