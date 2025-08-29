#called every tick IF TIMER IS NOT PAUSED OR STOPPED

#increase gameticks every tick
scoreboard players add gameticks mcb.Timer 1

#20 ticks = 1 second
execute if score gameticks mcb.Timer matches 20.. run scoreboard players add seconds mcb.Timer 1
execute if score gameticks mcb.Timer matches 20.. run scoreboard players set gameticks mcb.Timer 0

#60 seconds = 1 minute
execute if score seconds mcb.Timer matches 60.. run scoreboard players add minutes mcb.Timer 1
execute if score seconds mcb.Timer matches 60.. run scoreboard players set seconds mcb.Timer 0

#60 minutes = 1 hour
execute if score minutes mcb.Timer matches 60.. run scoreboard players add hours mcb.Timer 1
execute if score minutes mcb.Timer matches 60.. run scoreboard players set minutes mcb.Timer 0

#24 hours = 1 day
execute if score hours mcb.Timer matches 24.. run scoreboard players add days mcb.Timer 1
execute if score hours mcb.Timer matches 24.. run scoreboard players set hours mcb.Timer 0