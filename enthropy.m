function enthropy( file )

v1=0:1:255;
v2=0:1:65535;

[file_read8, s8] = fread(file, inf, '*ubit8');
frewind(file);
[file_read16, s16] = fread(file,inf,'*ubit16');

[num8b] = hist(file_read8, v1);
[num16b] = hist(file_read16,v2);

for i = 1 : 256
  v_8bit = num8b(i)/s8;
  y8bit(i) = -log2(v_8bit);
end %8bit cycle

for i = 1 : 65536
  v_16bit = num16b(i)/s16;
  y16bit(i) = -log2(v_16bit);
end %16bit cycle

figure;
plot(y8bit);
title('Entropia pe 8 biti');
xlabel('Numarul de simboluri distince');
ylabel('Numarul de biti necesar reprezentarii');
colormap summer;

figure;
plot(y16bit);
title('Entropia pe 16 biti');
xlabel('Numarul de simboluri distince');
ylabel('Numarul de biti necesar reprezentarii');
colormap summer;

end

