function LUT = stworz_LUT_kontrast(wspKontrastu)
    wspMn = (255 + wspKontrastu) / 255;

    LUT = zeros(1, 256);
    srodek = 127.5;

    for i = 1:256
        LUT(i) = srodek + (i - srodek) * wspMn;
        if LUT(i) < 0
            LUT(i) = 0;
        elseif LUT(i) > 255
            LUT(i) = 255;
        end
    end
    LUT = round(LUT);
end
