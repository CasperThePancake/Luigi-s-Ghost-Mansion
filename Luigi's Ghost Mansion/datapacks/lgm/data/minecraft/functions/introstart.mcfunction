tp @a[tag=player] 17 -60 -54
tp @a[tag=ghost] 17 -60 -54
effect give @a invisibility 5 1 true

title @a times 10 80 10
title @a[tag=ghost] title ["","You are a ",{"text":"GHOST","color":"dark_red"}]
title @a[tag=ghost] subtitle "Capture all players"

title @a[tag=player] title ["","You are a ",{"text":"PLAYER","color":"green"}]
title @a[tag=player] subtitle "Eliminate every ghost"

scoreboard players set . introtick 100

#COUNT PLAYERS AND GHOSTS
scoreboard players set playercount dummy 0
execute as @a[tag=player] run scoreboard players add playercount dummy 1
scoreboard players set ghostcount dummy 0
execute as @a[tag=ghost] run scoreboard players add ghostcount dummy 1

#ERRORS
execute unless entity @a[tag=player] run tellraw @a {"text":"You need at least 1 player to start!","color":"dark_red"}
execute unless entity @a[tag=player] run playsound lgm.ns_5 weather @a ~ ~ ~ 100000
execute unless entity @a[tag=player] run title @a title ""
execute unless entity @a[tag=ghost] run title @a subtitle ""
execute unless entity @a[tag=player] run function stop
execute unless entity @a[tag=ghost] run tellraw @a {"text":"You need at least 1 ghost to start!","color":"dark_red"}
execute unless entity @a[tag=ghost] run playsound lgm.ns_5 weather @a ~ ~ ~ 100000
execute unless entity @a[tag=ghost] run title @a title ""
execute unless entity @a[tag=ghost] run title @a subtitle ""
execute unless entity @a[tag=ghost] run function stop

execute if score playercount dummy matches 5.. run tellraw @a {"text":"You can only have 4 players per game!","color":"dark_red"}
execute if score playercount dummy matches 5.. run playsound lgm.ns_5 weather @a ~ ~ ~ 100000
execute if score playercount dummy matches 5.. run title @a title ""
execute if score playercount dummy matches 5.. run title @a subtitle ""
execute if score playercount dummy matches 5.. run function stop

execute if score ghostcount dummy matches 3.. run tellraw @a {"text":"You can only have 2 ghosts per game!","color":"dark_red"}
execute if score ghostcount dummy matches 3.. run playsound lgm.ns_5 weather @a ~ ~ ~ 100000
execute if score ghostcount dummy matches 3.. run title @a title ""
execute if score ghostcount dummy matches 3.. run title @a subtitle ""
execute if score ghostcount dummy matches 3.. run function stop

clear @a

gamemode adventure @a