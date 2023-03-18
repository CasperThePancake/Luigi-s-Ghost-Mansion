execute store result score aifind dummy run scoreboard players get @s aidistance
scoreboard players add aifind dummy 1

tag @e remove aigoal

execute if score . map matches 1 as @e[tag=aipoint,tag=map_1] if score @s aidistance = @e[tag=aiplayer,limit=1,sort=nearest] aidistance run tag @s add aigoal
execute if score . map matches 2 as @e[tag=aipoint,tag=map_2] if score @s aidistance = @e[tag=aiplayer,limit=1,sort=nearest] aidistance run tag @s add aigoal
execute if score . map matches 3 as @e[tag=aipoint,tag=map_3] if score @s aidistance = @e[tag=aiplayer,limit=1,sort=nearest] aidistance run tag @s add aigoal
execute if score . map matches 4 as @e[tag=aipoint,tag=map_4] if score @s aidistance = @e[tag=aiplayer,limit=1,sort=nearest] aidistance run tag @s add aigoal

execute facing entity @e[tag=aigoal] eyes rotated ~ 0 run tp @s ^ ^ ^0.08 ~ ~

execute if entity @e[tag=aigoal,distance=..0.1] run scoreboard players add @s aidistance 1

execute if score . map matches 1 if score @s aidistance matches 22.. run scoreboard players set @s aidistance 1
execute if score . map matches 2 if score @s aidistance matches 28.. run scoreboard players set @s aidistance 1
execute if score . map matches 3 if score @s aidistance matches 24.. run scoreboard players set @s aidistance 1
execute if score . map matches 4 if score @s aidistance matches 7.. run scoreboard players set @s aidistance 1