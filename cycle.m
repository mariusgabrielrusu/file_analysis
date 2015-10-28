function [sizes, redundancies] = cycle()

for i = 1 : 12
  [file] = select_file(i);
  [size1(i), size8(i), size16(i)] = bits_size(file);  
  fprintf('Marimile fisierului %d sunt : \n\nPe 1 bit: %d \nPe 8 biti: %d \nPe 16biti: %d \n\n',i, size1(i), size8(i), size16(i));

  [file] = select_file(i);
  hist_ps(file);

  [file] = select_file(i);
  enthropy(file);

  [file] = select_file(i);
  [res8bit(i), res16bit(i)] = redundancy(file);  
  fprintf('Redundanta fisierului %d pe 8 biti este %d, iar pe 16 biti este %d\n', i, res8bit(i), res16bit(i));
end

    sizes = [size1; size8; size16];    
    redundancies = [res8bit; res16bit];     
  sizes = sizes';
  redundancies = redundancies';
end

