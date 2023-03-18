tag @s remove ghost
tag @s add spectator

tellraw @a ["",{"selector":"@s","color":"dark_red"}," has been eliminated..."]

#CHECK IF THERE ARE STILL PLAYERS
execute unless entity @e[tag=ghost] run function playerwin