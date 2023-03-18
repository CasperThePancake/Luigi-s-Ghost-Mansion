summon marker ~ ~ ~ {Tags:["randmarker"]}
execute as @e[tag=randmarker] unless score @s rand matches 0.. run execute store result score @s rand run scoreboard players get prog rand
scoreboard players add prog rand 1
execute if score prog rand <= max rand run function random/rand_tick
execute unless score prog rand <= max rand as @e[tag=randmarker,limit=1,sort=random] run execute store result score result rand run scoreboard players get @s rand