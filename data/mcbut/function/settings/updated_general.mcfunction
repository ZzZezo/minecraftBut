#limit health
$execute as @a run attribute @s max_health base set $(maxHP)
effect give @a instant_health 1 200 true

#health mode (0=normal, 1=ultra hardcore, 2=ultra ultra hardcore)
$scoreboard players set healthMode mcb.ChallengeSettings $(healthMode)
execute if score healthMode mcb.ChallengeSettings matches 0 run gamerule naturalRegeneration true
execute if score healthMode mcb.ChallengeSettings matches 1.. run gamerule naturalRegeneration false

#back to home
dialog show @s mcbut:mcbut