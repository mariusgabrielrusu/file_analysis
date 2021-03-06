%
%	Data file Y04.M
%
% Monthly distance covered by UK Airlines on domestic fights, 
% between Jan 1982 and Nov 1989. 
%
	y=[38.29 37.79 43.57 46.40 49.67 51.24 ...
	   56.00 53.71 50.97 48.26 43.98 42.56 ...
	   42.85 39.83 47.74 49.94 53.78 55.13];
	y=[y 57.85 58.02 56.03 52.20 48.06 45.48 ...
	   47.63 46.95 52.03 56.20 61.56 62.14 ...
	   65.04 64.25 60.79 58.72 52.07 46.12];
	y=[y 50.28 46.51 53.07 57.63 63.66 63.97 ...
	   67.91 67.33 62.39 59.43 51.69 48.72 ...
	   51.97 48.03 52.66 59.57 64.56 64.79];
	y=[y 68.63 68.47 65.25 62.70 52.80 52.41 ...
	   49.31 48.17 56.02 61.79 67.47 66.17 ...
	   72.30 71.59 68.17 64.03 55.55 54.69]; 
	y=[y 54.13 53.46 59.77 62.44 68.55 69.86 ...
	   73.69 73.38 69.77 67.37 61.31 59.81 ...
	   61.88 56.29 66.04 67.86 75.68 77.27];
	y=[y 81.08 80.87 78.00 76.27 67.83];

	Ts = 1 ; 
	unit = 'Time [months]' ; 
	ntime  = 0:(length(y)-1) ;
	label = 'Monthly distance covered by UK Airlines on domestic fights (1982-1989).' ; 
	yunit = 'Monthly distance [X1000 km]' ;

%
% Author:  Dan Stefanoiu
% Date:    30.10.1992 
% Updated: 25.07.2007
%