execute as @a[scores={mcb.start_timer=1..}] run function mcbut:timer/start_timer
execute as @a[scores={mcb.stop_timer=1..}] run function mcbut:timer/stop_timer
execute as @a[scores={mcb.reset_timer=1..}] run function mcbut:timer/reset_timer

scoreboard players set @a mcb.start_timer 0
scoreboard players set @a mcb.stop_timer 0
scoreboard players set @a mcb.reset_timer 0