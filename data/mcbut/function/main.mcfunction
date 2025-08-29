#update the timer
execute if score TIMER_RUNNING mcb.Timer matches 1 run function mcbut:timer/timer_tick

#show timer
function mcbut:timer/display_timer