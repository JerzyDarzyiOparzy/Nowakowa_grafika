function [R, G, B] = hsl_to_rgb(H, S, L)
    chroma = (1 - abs(2 * L - 1)) .* S;
    x = chroma .* (1 - abs(mod(H / 60, 2) - 1));
    MinRGB = L - chroma / 2;

    Rtemp = zeros(size(H));
    Gtemp = zeros(size(H));
    Btemp = zeros(size(H));

    idx1 = (H >= 0) & (H <= 60);
    Rtemp(idx1) = chroma(idx1);
    Gtemp(idx1) = x(idx1);
    Btemp(idx1) = 0;

    idx2 = (H > 60) & (H <= 120);
    Rtemp(idx2) = x(idx2);
    Gtemp(idx2) = chroma(idx2);
    Btemp(idx2) = 0;

    idx3 = (H > 120) & (H <= 180);
    Rtemp(idx3) = 0;
    Gtemp(idx3) = chroma(idx3);
    Btemp(idx3) = x(idx3);

    idx4 = (H > 180) & (H <= 240);
    Rtemp(idx4) = 0;
    Gtemp(idx4) = x(idx4);
    Btemp(idx4) = chroma(idx4);

    idx5 = (H > 240) & (H <= 300);
    Rtemp(idx5) = x(idx5);
    Gtemp(idx5) = 0;
    Btemp(idx5) = chroma(idx5);

    idx6 = (H > 300) & (H <= 360);
    Rtemp(idx6) = chroma(idx6);
    Gtemp(idx6) = 0;
    Btemp(idx6) = x(idx6);

    R = (Rtemp + MinRGB) * 255;
    G = (Gtemp + MinRGB) * 255;
    B = (Btemp + MinRGB) * 255;
end
