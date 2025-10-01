scoreboard players operation forceItem mcbut.Countdown = forceCooldown mcb.ChallengeSettings

#tweak bossbar correctly
execute store result bossbar minecraft:mcbut.countdown max run scoreboard players get forceCooldown mcb.ChallengeSettings
execute store result bossbar minecraft:mcbut.countdown value run scoreboard players get forceCooldown mcb.ChallengeSettings
bossbar set minecraft:mcbut.countdown visible true
bossbar set minecraft:mcbut.countdown players @a

#create new armorstand, used for item generation
item replace entity @e[tag=mcb.ForceItemStand] armor.head with air
kill @e[tag=mcb.ForceItemStand]
summon armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["mcb.ForceItemStand"]}

#reset player
scoreboard players set * mcb.ForceItem.hasCompleted 0

#generate first item
function mcbut:force/item/generate_new_item
function mcbut:force/item/display_new_item with storage minecraft:mcb forceItem.ItemName