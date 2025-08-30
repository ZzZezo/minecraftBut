#calculate the right size
scoreboard players set expectedBorderSize mcb.BorderData 0
execute as @a run scoreboard players operation expectedBorderSize mcb.BorderData += @s mcb.CurrentXPLevel
scoreboard players add expectedBorderSize mcb.BorderData 1

#make worldborder the right size
execute store result score borderSize mcb.BorderData run worldborder get
execute if score expectedBorderSize mcb.BorderData > borderSize mcb.BorderData run worldborder add 1 0
execute if score expectedBorderSize mcb.BorderData < borderSize mcb.BorderData run worldborder add -1 0