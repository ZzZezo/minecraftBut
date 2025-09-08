#triggers
scoreboard players enable @a mcb.start_timer
scoreboard players enable @a mcb.stop_timer
scoreboard players enable @a mcb.reset_timer
scoreboard players enable @a mcb.start_challenge

#update the timer
function mcbut:timer/handle_triggers
execute if score TIMER_RUNNING mcb.Timer matches 1 run function mcbut:timer/timer_tick

#show timer
function mcbut:timer/display_timer

#UUHC
execute if score healthMode mcb.ChallengeSettings matches 2 run function mcbut:clear_heal_effects

#border
execute if score borderMode mcb.ChallengeSettings matches 1.. run function mcbut:border/border_tick

#force item
execute if score forceMode mcb.ChallengeSettings matches 1 if score TIMER_RUNNING mcb.Timer matches 1 run function mcbut:force/item/tick