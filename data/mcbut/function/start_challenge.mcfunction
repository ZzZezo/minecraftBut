#reset scoreboards
scoreboard players set expectedBorderSize mcb.BorderData 1
scoreboard players set * mcb.TotalDamageTaken 0

#border
tp @a @r
execute if score borderMode mcb.ChallengeSettings matches 0 run execute align xyz run worldborder center 0 0
execute if score borderMode mcb.ChallengeSettings matches 0 run worldborder set 50000000
execute if score borderMode mcb.ChallengeSettings matches 1.. at @r run execute align xyz run worldborder center ~.5 ~.5
execute if score borderMode mcb.ChallengeSettings matches 1.. run worldborder set 1
execute if score borderMode mcb.ChallengeSettings matches 1.. at @r run execute align xyz positioned over ocean_floor run tp @a ~.5 ~ ~.5

#start timer
function mcbut:timer/reset_timer
function mcbut:timer/start_timer

#standard shit
gamemode survival @a
clear @a
xp set @a 0
xp set @a 0 levels
time set day
weather clear
effect give @a saturation 1 200 true