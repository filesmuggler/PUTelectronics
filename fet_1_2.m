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
% drain-source voltage Vds1
Vds1 = [8.92,7.36,2.18,0.38,0.17,0.07,0.02,0];

% drain current Id1
Id1 = [5.33,4.47,4.2,3.96,3.48,2.5,1.01,0];

% drain-source voltage Vds2
Vds2 = [7.43,6.67,5,1.57,0.41,0.23,0.15,0.11,0.09,0.06,0.04,0.03,0.01];

% drain current Ic2
Id2 = [11.54,11,10.5,10,9,8,7,6,5,4,3,2,1];


## OPERATIONS
% plotting the graph
plot(Vds1,Id1,'-r;Id=f(Vds) at Vgs=2.34V;',Vds2,Id2,'-b;Id=f(Vds) at Vgs=2.45V;');
title("Id=f(Vds)");
xlabel("Drain-source voltage Vds[V]");
ylabel("Drain current Id[mA]");
grid on;

% saving to file
print -djpeg figure-fet_1_2.jpeg;