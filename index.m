%% start clear all variables in workspace
clear;

%% asking user to enter some data
thermalConductivity = input('Thermal Conductivity: ');
length = input('Length : ');
width = input('Width : ');
temperatureLeftRight = input('Temperature at left and right bounderies : ');
H = input('Convection Coefficient : ');
temperatureOfAir = input('Temperature of air : ');
createTextFile = input('Do you want to create text file with result [y/n]: ', 's');

%% Execute of function
temperature_func(thermalConductivity, length, temperatureLeftRight, H, temperatureOfAir, createTextFile);