execute if score @s sneaking matches 1.. run scoreboard players add @s charging 1
execute unless score @s sneaking matches 1.. if score @s charging matches 1.. run stopsound @a weather minecraft:lgm.ghost_charging
execute unless score @s sneaking matches 1.. run scoreboard players set @s charging 0

scoreboard players set @s sneaking 0

execute if score @s charging matches 3 at @s run playsound minecraft:lgm.ghost_start_charge weather @a
execute if score @s charging matches 20 at @s run playsound minecraft:lgm.ghost_charging weather @a

execute if score @s charging matches 150.. run function fullcharge