function LUT = stworz_LUT(jasnosc)
    LUT = (0:255) + jasnosc;
    LUT(LUT < 0) = 0;
    LUT(LUT > 255) = 255;
    LUT = round(LUT);
end
