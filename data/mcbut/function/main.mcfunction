#triggers
scoreboard players enable @a mcb.start_timer
scoreboard players enable @a mcb.stop_timer
scoreboard players enable @a mcb.reset_timer

#update the timer
function mcbut:timer/handle_triggers
execute if score TIMER_RUNNING mcb.Timer matches 1 run function mcbut:timer/timer_tick

#show timer
function mcbut:timer/display_timer