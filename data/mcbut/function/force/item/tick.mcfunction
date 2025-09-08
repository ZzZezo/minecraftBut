#count down
scoreboard players remove forceItem mcbut.Countdown 1

#check if player completed his task
execute as @a run function mcbut:force/item/check_complete with storage minecraft:mcb forceItem.ItemName

#if the countdown hit 0 check if player needs punishing and generate new item
execute if score forceItem mcbut.Countdown matches ..0 as @a if score @s mcb.ForceItem.hasCompleted matches 0 run function mcbut:force/item/punish
execute if score forceItem mcbut.Countdown matches ..0 run function mcbut:force/item/generate_new_item

#display new item
execute if score forceItem mcbut.Countdown matches ..0 run function mcbut:force/item/display_new_item with storage minecraft:mcb forceItem.ItemName

#reset countdown
execute if score forceItem mcbut.Countdown matches ..0 run scoreboard players operation forceItem mcbut.Countdown = forceCooldown mcb.ChallengeSettings

#update countdown (time thats left) in bossbar
execute store result bossbar minecraft:mcbut.countdown value run scoreboard players get forceItem mcbut.Countdown