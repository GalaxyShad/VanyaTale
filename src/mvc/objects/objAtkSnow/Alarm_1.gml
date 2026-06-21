
randomize();
start = floor(random_range(0, array_length_1d(snow) - 10));

for (var i = 0; i < array_length_1d(snow); i++) {
    snow[i].vspeed = -6;
    snow[i].Push = true;
}

for (var i = start; i < start + 8; i++) {
    snow[i].Type = 1;
}

alarm[2] = 80;

