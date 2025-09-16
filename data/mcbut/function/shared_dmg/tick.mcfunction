#store the damage
execute as @a[scores={mcb.sharedDmg.lastDmgAmnt=1..}] store result storage minecraft:mcb sharedDmg.dmgToDeal int 0.1 run scoreboard players get @s mcb.sharedDmg.lastDmgAmnt

#deal the damage
function mcbut:shared_dmg/deal_damage with storage minecraft:mcb sharedDmg

#reset the damage
scoreboard players set @a mcb.sharedDmg.lastDmgAmnt 0