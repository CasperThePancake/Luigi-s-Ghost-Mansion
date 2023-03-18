tag @e remove toberevived
execute as @a[tag=spectator] if score @s deadid = @e[tag=deadplayer,limit=1,sort=nearest] deadid run tag @s add toberevived

tag @a[tag=toberevived] remove spectator
tag @a[tag=toberevived] add player
gamemode adventure @a[tag=toberevived]
scoreboard players set @a[tag=toberevived] health 1
scoreboard players set @a[tag=toberevived] battery 50
execute if score . map matches 1 run tp @a[tag=toberevived] -3 -60 -19
execute if score . map matches 2 run tp @a[tag=toberevived] -25 -60 -12
execute if score . map matches 3 run tp @a[tag=toberevived] -24 -60 38
execute if score . map matches 4 run tp @a[tag=toberevived] -23 -59 83

tellraw @a[tag=toberevived] ["","You have been ",{"text":"revived","color":"green"},"!"]

kill @s