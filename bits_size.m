function [ size1, size8, size16 ] = bits_size( file )

file_read8 = fread(file,inf,'*uint8');
frewind(file);
file_read16 = fread(file,inf,'*uint16');

size16 = size(file_read16); 
size16 = size16(1);         %16 bit
size8 = size(file_read8);
size8 = size8(1);           %8 bit
size1 = size8/8;            %1 bit

fclose(file);

end

