#calculate the right size
scoreboard players set expectedBorderSize mcb.BorderData 0
#divide totalDamage by 10 as 1 half heart counts as 10 damage in native mc calculation for some reason
execute as @a run scoreboard players operation @s mcb.TotalHPLost = @s mcb.TotalDamageTaken
execute as @a run scoreboard players operation @s mcb.TotalHPLost /= 10 mcb.Math
#now calculate the border size by the calculated amount
execute as @a run scoreboard players operation expectedBorderSize mcb.BorderData += @s mcb.TotalHPLost
scoreboard players add expectedBorderSize mcb.BorderData 1

#make worldborder the right size
execute store result score borderSize mcb.BorderData run worldborder get
execute if score expectedBorderSize mcb.BorderData > borderSize mcb.BorderData run worldborder add 1 0
execute if score expectedBorderSize mcb.BorderData < borderSize mcb.BorderData run worldborder add -1 0