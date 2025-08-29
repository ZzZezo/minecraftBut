tellraw @a {text:"Reloaded succesfully.",color:green}

#create scoreboards
#Timer
scoreboard objectives add mcb.Timer dummy "The Timer logic"
scoreboard players set TIMER_RUNNING mcb.Timer 0
execute unless score seconds mcb.Timer matches 0.. run scoreboard players set seconds mcb.Timer 0