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

% base-emitter voltage Vbe[V]
Vbe = [0.46,0.61,0.62,0.63,0.64,0.65,0.65,0.66,0.66,0.67,0.68,0.69,0.70,0.71,0.72,0.73,0.74,0.75,0.75,0.76,0.76,0.77,0.77,0.78,0.78,0.79,0.79,0.8,0.8,0.81,0.82,0.82,0.82,0.82,0.83,0.83,0.84,0.86,0.87,0.899,0.91,0.94,0.96,0.97,0.97,0.99];

## OPERATIONS
% plotting the graph
plot(Vbe,Ib,'-r;Ib=f(Vbe);');
title("Ib=f(Vbe)");
xlabel("Base-emitter voltage Vbe[V]");
ylabel("Base current Ib[uA]");
grid on;

% saving to file
print -djpeg figure-Vbe_Ib.jpeg;