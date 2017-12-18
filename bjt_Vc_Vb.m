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
Vb = [0.46,0.61,0.62,0.63,0.64,0.65,0.65,0.66,0.66,0.67,0.68,0.69,0.7,0.71,0.72,0.73,0.74,0.75,0.76,0.76,0.77,0.77,0.77,0.78,0.78,0.79,0.79,0.8,0.8,0.81,0.82,0.82,0.82,0.82,0.83,0.83,0.84,0.86,0.87,0.899,0.91,0.94,0.96,0.97,0.97,0.99];

% collector current Ic[mA]
Vc = [10.31,10.16,10.09,10.03,9.91,9.88,9.8,9.68,9.57,9.43,9.22,8.98,9.09,9,8.83,8.64,8.47,8.32,8.15,8.31,8.28,0.14,0.13,0.13,0.12,0.12,0.11,0.11,0.12,0.11,0.11,0.1,0.1,0.1,0.1,0.1,0.1,0.09,0.09,0.08,0.08,0.08,0.07,0.07,0.06,0.06];

% beta coeff
B = Vc./Vb.*1000;

## OPERATIONS
% plotting the graph
plot(Vb,Vc,'-r;Vc=f(Vb);');
title("Vc=f(Vb)");
xlabel("Base voltage Vb[V]");
ylabel("Collector voltage Vc[V]");
grid on;

% saving to file
print -djpeg figure-Vc_Vb.jpeg;













