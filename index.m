k = input('Thermal Conductivity: ');
l = input('Length (in m): ');
w = input('Width (in m): ');
tl = input('Temperature at left and right bounderies (in c): ');
h = input('Convection Coefficient: ');
tinf = input('Temperature of air (in c): ');

dx = l/4;
bio = h*dx/k;
a = zeros(6);
d = zeros(6, 1);

% node 1 & 3
a(1, : ) = [-2*(2+bio), 1, 2, 0, 0, 0];
d(1) = -2*bio*tinf-tl;

% node 2
a(2, : ) = [2, -2*(2+bio), 0, 2, 0, 0];
d(2) = -2*bio*tinf;

% node 4 & 6
a(3, : ) = [1, 0, -4, 1, 1, 0];
d(3) = -tl;

% node 5
a(4, : ) = [0, 1, 2, -4, 0, 1];

% node 7 & 9
a(5, : ) = [0, 0, 2, 0, -4, 1];
d(5) = -tl;

% node 8
a(6, : ) = [0, 0, 0, 2, 2, -4];

res = a\d;

result = zeros(9,1);
result(1:3:7) = res(1:2:5);
result(2:3:8) = res(2:2:6);
result(3:3:9) = res(1:2:5);

disp(result)