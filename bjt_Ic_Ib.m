## Copyright (C) 2017 Krzysztof Stezala <krzste09@outlook.com>
##
## This program is free software; you can redistribute it and/or modify it under
## the terms of the GNU General Public License as published by the Free Software
## Foundation; either version 3 of the License, or (at your option) any later
## version.
##
## This program is distributed in the hope that it will be useful, but WITHOUT
## ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
## FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
## details.
##
## You should have received a copy of the GNU General Public License along with
## this program; if not, see <http://www.gnu.org/licenses/>.
##
## Purpose of the program
## Calculating and presenting data obtained at laboratory 
## measurements at Poznan University of Technology.

## DATA
% base current Ib[uA]
Ib = [0,1.01,1.74,2.5,3.87,4.31,5.26,6.75,8.05,9.88,12.98,15.52,16.75,17,18.6,21.97,25.77,29.75,32.54,40,43.13,47,51.41,54.16,57.98,61.36,64.84,71.53,76.71,80.7,86.42,90.9,94.07,96.6,97.1,100.53,104.55,114.08,126.33,134.76,156.02,176.74,197.34,228,272.7,296.8];

% collector current Ic[mA]
Ic = [0.1,0.3,0.6,0.8,1.2,1.5,1.7,2.2,2.7,3.3,4.2,4.8,5.1,5.2,6,6.7,7.5,8.1,8.2,8.3,8.3,8.7,8.71,8.71,8.72,8.72,8.72,8.73,8.73,8.73,8.73,8.73,8.74,8.74,8.74,8.74,8.74,8.76,8.76,8.76,8.78,8.77,8.77,8.77,8.78,8.78];

% beta coeff
B = Ic./Ib.*1000;

## OPERATIONS
% plotting the graph
plot(Ib,Ic,'-r;Ic=f(Ib);',Ib,B,'-b;B=f(Ib);');
title("Ic=f(Ib) & B=f(Ib)");
xlabel("Base current Ib[uA]");
ylabel("Collector current Ic[mA]");
grid on;

% saving to file
print -djpeg figure-Ic_Ib_B.jpeg;













