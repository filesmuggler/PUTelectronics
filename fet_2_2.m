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
Vds1 = [3.86,3.2,2.63,2.18,1.71,1.16,0.86,0.66,0.51,0.38,0.26,0.15,0.05,0];

% drain current Id1
Id1 = [1.92,1.88,1.84,1.8,1.71,1.52,1.33,1.1,0.92,0.73,0.51,0.3,0.1,0];

% drain-source voltage Vds2
Vds2 = [4.19,1.9,1.4,1.1,0.86,0.67,0.51,0.24,0.11,0.09,0.04,0.02,0];

% drain current Ic2
Id2 = [5.09,4.49,4,3.51,3,2.5,2,1,0.5,0.25,0.1,0.05,0];


## OPERATIONS
% plotting the graph
plot(Vds1,Id1,'-r;Id=f(Vds) at Vgs=-1.44V;',Vds2,Id2,'-b;Id=f(Vds) at Vgs=-0,84V;');
title("Id=f(Vds)");
xlabel("Drain-source voltage Vds[V]");
ylabel("Drain current Id[mA]");
grid on;

% saving to file
print -djpeg figure-fet_2_2.jpeg;