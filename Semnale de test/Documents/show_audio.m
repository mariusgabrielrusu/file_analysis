%
%	File SHOW_AUDIO.M
%
%	Main program. 
%
%	Synopsis: show_audio ; 
%
%	Displays the variation of all audio signals from archive AUDIO.RAR. 
%	The signals are recorded in WAVE format. 
%
%	Warning: Before running this program, extract all audio files 
%	         from the archive . 
%
%	Uses:	 FIG_LOOK
%		 MAXIMIZE
%		 WAWREAD
%
%	Author:  Dan STEFANOIU
%	Created: April 7, 2010
%	Revised: 
%
% BEGIN
%

	clean
	warning('off','MATLAB:dispatcher:InexactMatch') ; 

	MAX_LENGTH = 2048 ; 	% Maximum signal length to display. 
	Nin = 4 ;       	% Number of instrumental signals. 
	Nso = 8 ;       	% Number of sound signals.
	Nsp = 4;        	% Number of speech signals.

	for n=1:Nin
           m = int2str(n) ; 
	   [y,Fs] = wavread(['instr_0' m]) ; 
	   N = min(MAX_LENGTH,length(y)) ; 
	   y = y(1:N) ; 
	   t = 1000*(0:(N-1))/Fs ; 
	   figure, clf
	   fig_look(gcf,2) ;
	   plot(t,y) ;
	   axis tight ; 
	   title(['Instrumental signal no. ' m]) ; 
           xlabel('Time [ms]') ; 
	   ylabel('Normalized amplitude') ; 
	end ;
	for n=1:Nso
           m = int2str(n) ; 
	   [y,Fs] = wavread(['sound_0' m]) ; 
	   N = min(MAX_LENGTH,length(y)) ; 
	   y = y(1:N) ; 
	   t = 1000*(0:(N-1))/Fs ; 
	   figure, clf
	   fig_look(gcf,2) ;
	   plot(t,y) ;
	   axis tight ; 
	   title(['Sound no. ' m]) ; 
           xlabel('Time [ms]') ; 
	   ylabel('Normalized amplitude') ; 
	end ;
	for n=1:Nsp
           m = int2str(n) ; 
	   [y,Fs] = wavread(['speech_0' m]) ; 
	   N = min(MAX_LENGTH,length(y)) ; 
	   y = y(1:N) ; 
	   t = 1000*(0:(N-1))/Fs ; 
	   figure, clf
	   fig_look(gcf,2) ;
	   plot(t,y) ;
	   axis tight ; 
	   title(['Speech no. ' m]) ; 
           xlabel('Time [ms]') ; 
	   ylabel('Normalized amplitude') ; 
	end ; 
	maximize('all') ; 
%
% END
%