%% Define of temperature_func
% temperature_func used to return array of temperatures
function result = temperature_func(thermalConductivity, length, temperatureLeftRight, H, temperatureOfAir, createTextFile)

dx = length / 4;
b = H * dx / thermalConductivity;
a = zeros(6);
d = zeros(6, 1);

a(1, :) = [-2 * (2 + b), 1, 2, 0, 0, 0];
d(1) = -2 * b * temperatureOfAir - temperatureLeftRight;

%% node 2
a(2, :) = [2, -2 * (2 + b), 0, 2, 0, 0];
d(2) = -2 * b * temperatureOfAir;

%% node 4 and 6
a(3, :) = [1, 0, -4, 1, 1, 0];
d(3) = -temperatureLeftRight;

%% node 5
a(4, :) = [0, 1, 2, -4, 0, 1];

%% node 7 and 9
a(5, :) = [0, 0, 2, 0, -4, 1];
d(5) = -temperatureLeftRight;

%% node 8
a(6, :) = [0, 0, 0, 2, 2, -4];

result = a \ d;

fprintf('%d\n', result);

%% create file with result
create_file(createTextFile, result)

end