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
% collector-emitter voltage Vce1
Vce1 = [0,0.05,0.06,0.08,0.09,0.11,0.12,0.13,0.15,0.16,0.18,0.19,0.22,0.32,5.31];

% collector current Ic1
Ic1 = [0.01,0.52,1.05,1.8,2.52,3.26,3.97,4.86,5.54,6.19,6.66,7.26,7.88,8.56,9.44];

% collector-emitter voltage Vce2
Vce2 = [0,0.15,0.24,1.27,2.51,9];

% collector current Ic2
Ic2 = [0,3.09,3.95,4.1,4.4,4.85];


## OPERATIONS
% plotting the graph
plot(Vce1,Ic1,'-r;Ic=f(Vce) at Ibe=32uA;',Vce2,Ic2,'-b;Ic=f(Vce) at Ibe=15uA;');
title("Ic=f(Vce)");
xlabel("Collector-emitter voltage Vce[V]");
ylabel("Collector current Ic[mA]");
grid on;

% saving to file
print -djpeg figure-Vce_Ic.jpeg;