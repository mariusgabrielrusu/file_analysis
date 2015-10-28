function [ file ] = select_file( opt )

switch(opt)
  case 1
    file = fopen('./Semnale de Test/Audio/instr_01.wav');
  case 2
    file = fopen('./Semnale de Test/Audio/sound_01.wav');
  case 3
    file = fopen('./Semnale de Test/Audio/speech_01.wav');
  case 4
    file = fopen('./Semnale de Test/Documents/Documentatie_UMAPID.doc');
  case 5
    file = fopen('./Semnale de Test/Documents/Documentatie_UMAPID.pdf');
  case 6
    file = fopen('./Semnale de Test/Documents/Prefata_Undine.txt');
  case 7
    file = fopen('./Semnale de Test/Documents/show_audio.m');
  case 8
    file = fopen('./Semnale de Test/Documents/Y04.M');
  case 9
    file = fopen('./Semnale de Test/Executables/KARMA_DATA482#1_5_V7.mat');
  case 10
     file = fopen('./Semnale de Test/Executables/quartz.dll');
  case 11
    file = fopen('./Semnale de Test/Executables/WinRar.exe');
  case 12
    file = fopen('./Semnale de Test/Executables/WINZIP32.EXE');
end

end

