tag @s[scores={mcb.ForceItem.hasCompleted=0}] add mcb.ForceItem.notCompletedYet

$execute as @s[tag=mcb.ForceItem.notCompletedYet] store result score @s mcb.ForceItem.hasCompleted run clear @s $(vanillaID) 0

execute as @s[tag=mcb.ForceItem.notCompletedYet] at @s if score @s mcb.ForceItem.hasCompleted matches 1.. run playsound entity.arrow.hit_player master @s
execute as @s[tag=mcb.ForceItem.notCompletedYet] at @s if score @s mcb.ForceItem.hasCompleted matches 1.. run tellraw @a [{"selector":"@s",color:green}," has completed his task!"]

tag @a remove mcb.ForceItem.notCompletedYet