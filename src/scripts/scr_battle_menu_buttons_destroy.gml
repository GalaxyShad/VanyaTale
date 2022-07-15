for (var i = 0; i < 4; i++) {
    with (buttons[i]) instance_destroy();
    buttons[i] = noone;
}

return 0;
