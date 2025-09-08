#force mode (0=none, 1=force item)
$scoreboard players set forceMode mcb.ChallengeSettings $(forceMode)

#cooldown (*60 to turn minutes into sec and *20 to turn sec into gameticks)
$scoreboard players set forceCooldown mcb.ChallengeSettings $(cooldown)
scoreboard players operation forceCooldown mcb.ChallengeSettings *= 60 mcb.Math
scoreboard players operation forceCooldown mcb.ChallengeSettings *= 20 mcb.Math

#back to home
dialog show @s mcbut:mcbut