global.keyAction = keyboard_check(ord("Z")) || keyboard_check(vk_enter);
global.keyBack   = keyboard_check(ord("X")) || keyboard_check(vk_rshift);

global.keyActionPressed = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
global.keyBackPressed   = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_rshift);

global.tick++;

if keyboard_check_pressed(vk_f4)
{
    if window_get_fullscreen()
    {
        window_set_fullscreen(false);
    }
    else
    {
        window_set_fullscreen(true);
    }
}

