scoreboard players set @s deathcool 200
scoreboard players remove @s health 1

tellraw @a ["",{"selector":"@s","color":"green"}," was captured by ",{"selector":"@p[tag=ghost]","color":"dark_red"},"!"]
playsound minecraft:lgm.player_death weather @s
execute if score . map matches 1 run tp @s -25 -60 -19
execute if score . map matches 2 run tp @s -25 -60 -12
execute if score . map matches 3 run tp @s -24 -60 38
execute if score . map matches 4 run tp @s -23 -59 83
scoreboard players set @s battery 33

execute if score @s health matches 0 run function playergameover