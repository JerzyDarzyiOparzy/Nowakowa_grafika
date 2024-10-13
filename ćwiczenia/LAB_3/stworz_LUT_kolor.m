function LUT = stworz_LUT_kolor(kolor)
    LUT = (0:255);

    if kolor == 'R'
        punkty = [0, 0; 60, 120; 110, 110; 255, 255];
    elseif kolor == 'G'
        punkty = [0, 0; 255, 255];
    elseif kolor == 'B'
        punkty = [0, 0; 50, 0; 255, 255];
    end

    for i = 1:length(punkty) - 1
        x1 = punkty(i, 1);
        y1 = punkty(i, 2);
        x2 = punkty(i + 1, 1);
        y2 = punkty(i + 1, 2);

        a = (y2 - y1) / (x2 - x1);
        b = y1 - a * x1;

        for x = x1:x2
            y = round(a * x + b);
            LUT(x + 1) = y;
        end
    end
end
