function LUT = stworz_LUT_gamma1_5()
    LUT = (0:255) / 255;
    LUT = LUT .^ (1 / 1.5);
    LUT = round(LUT * 255);
end
