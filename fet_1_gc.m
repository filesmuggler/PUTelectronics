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
Vgs = [-11.29,1.8,2,2.2,2.4,2.5,2.6,2.8,3,5,8];

% drain current Id[mA]
Id = [0,0.02,0.23,1.52,8.54,16,28,43.1,44.1,44.6,44.7];

## OPERATIONS
% plotting the graph
plot(Vgs,Id,'-r;Id=f(Vgs);');
title("Id=f(Vgs)");
xlabel("Gate Voltage Vgs[V]");
ylabel("Drain Current Id[mA]");
grid on;

% saving to file
print -djpeg figure-fet_1_1.jpeg;
