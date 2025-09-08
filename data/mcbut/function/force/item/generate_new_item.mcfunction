scoreboard players set @a mcb.ForceItem.hasCompleted 0

loot replace entity @e[tag=mcb.ForceItemStand] armor.head loot mcbut:random_obtainable
summon item 0 400 0 {Item:{id:"minecraft:stone",count:1},Tags:["mcb.ForceItemItem"],NoGravity:1b}
execute as @e[tag=mcb.ForceItemItem] run item replace entity @s contents from entity @e[limit=1,tag=mcb.ForceItemStand] armor.head
execute as @e[tag=mcb.ForceItemItem] run item modify entity @s contents {function:"minecraft:set_name",entity:"this",name:{selector:"@s"}}
execute as @e[tag=mcb.ForceItemItem] run data modify storage mcb forceItem.ItemName set from entity @s Item.components.minecraft:custom_name
execute as @e[tag=mcb.ForceItemItem] run data modify storage mcb forceItem.ItemName.vanillaID set from entity @n[tag=mcb.ForceItemStand] equipment.head.id
data modify storage minecraft:mcb forceItem.ItemName.trimmedVanillaID set string storage minecraft:mcb forceItem.ItemName.vanillaID 10

#atlas prefix
data modify storage minecraft:mcb forceItem.ItemName.atlasPrefix set string storage minecraft:mcb forceItem.ItemName.translate 0 5

#check if atlasPrefix ends in "." --> atlasPrefix = "item." else atlasPrefix "block"
#First copy the last character of atlasPrefix into atlasPrefixLastChar
data modify storage minecraft:mcb forceItem.ItemName.atlasPrefixLastChar set string storage minecraft:mcb forceItem.ItemName.atlasPrefix 4 5
#now we check if we can overwrite atlasPrefixLastChar with a "."
execute store success score differentChar mcb.quickSave run data modify storage minecraft:mcb forceItem.ItemName.atlasPrefixLastChar set value "."
#if differentChar==0 --> it does end in "." -> set atlasPrefix to "item"
execute if score differentChar mcb.quickSave matches 0 run data modify storage minecraft:mcb forceItem.ItemName.atlasPrefix set value item
#else just leave it as it is ("block")


kill @e[tag=mcb.ForceItemItem]