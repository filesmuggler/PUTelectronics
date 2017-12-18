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
% gate voltage Vgs[V]
Vgs = [-11.28,-2.99,-2,-1,0,0.77];

% drain current Id[mA]
Id = [0,0.02,1.41,4.48,6.43,7.51];

## OPERATIONS
% plotting the graph
plot(Vgs,Id,'-r;Id=f(Vgs);');
title("Id=f(Vgs)");
xlabel("Gate Voltage Vgs[V]");
ylabel("Drain Current Id[mA]");
grid on;

% saving to file
print -djpeg figure-fet_2_1.jpeg;
