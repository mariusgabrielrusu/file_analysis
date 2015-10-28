function [ res8bit, res16bit ] = redundancy( file )

v1=0:1:255;
v2=0:1:65535;

[file_read8, s8] = fread(file, inf, '*ubit8');
frewind(file);
[file_read16, s16] = fread(file,inf,'*ubit16');

[num8b] = hist(file_read8, v1);
[num16b] = hist(file_read16,v2);

for i = 1 : 256
  if num8b(i) ~= 0
    v_8bit = num8b(i)/s8;
    y8bit(i) = -log2(v_8bit);
  end
end %8bit cycle

for i = 1 : 65536
  if num16b(i) ~= 0
    v_16bit = num16b(i)/s16;
    y16bit(i) = -log2(v_16bit);
  end
end %16bit cycle

res8bit = sum(8-y8bit);
res16bit = sum(16-y16bit);

end

