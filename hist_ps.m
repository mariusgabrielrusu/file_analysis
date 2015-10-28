function hist_ps(file)

v1=0:1:255;
v2=0:1:65535;

file_read8 = fread(file, inf, '*ubit8');
frewind(file);
file_read16 = fread(file,inf,'*ubit16');

figure;
hist(file_read8,v1);
xlabel('Numarul de simboluri distince');
ylabel('Numarul de aparitii');
colormap winter;
figure;
hist(file_read16,v2);
xlabel('Numarul de simboluri distince');
ylabel('Numarul de aparitii');
colormap winter;

fclose(file);

end

