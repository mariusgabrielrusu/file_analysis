clear all;
clc;
options = 'Puteti alege intre urmatoarele fisiere:\nAudio\n1.instr_01.wav\n2.sound_01.wav \n3.speech_01.wav \n\nDocuments \n4.Documentatie_UMAPID.doc \n5.Documentatie_UMAPID.pdf\n6.Prefata_undine.txt \n7.show_audio.m \n8.YO4.M \n\n Executables \n9.KARMA_DATA482#1_5_V7.mat \n10.quartz.dll \n11.WinRar.exe \n12.WINZIP32.EXE\n';

fprintf(options);

opt = input('Alegeti numarul fisierului: ');

if(opt > 12 || opt < 1)
  opt = input('Va rugam alegeti un numar din cele din lista de mai sus: ');
end

[file] = select_file(opt);
[size1, size8, size16] = bits_size(file);
fprintf('Marimile fisierelor sunt: \n\nPe 1 bit: %d \nPe 8 biti: %d \nPe 16biti: %d \n\n', size1, size8, size16);

[file] = select_file(opt);
hist(file);
