tag @s remove player
tag @s add spectator

tellraw @a ["",{"selector":"@s","color":"green"}," has been eliminated..."]

#CHECK IF THERE ARE STILL PLAYERS
execute unless entity @e[tag=player] run function gameover

#CREATE REVIVING MECHANIC IF POSSIBLE
execute if entity @e[tag=player] run function createdeadplayer