#----------------------------------------------------------------------------------------------------------------------------------------------------------------
#DYNAMIC TORCH LIGHTING DATAPACK BY CASPERTHEPANCAKE, ALL RIGHTS RESERVED                                                                                                 
#----------------------------------------------------------------------------------------------------------------------------------------------------------------

tag @a add lighter
tag @e[tag=aiplayer] add lighter

execute if score dtllighting dtllighting matches 1 run execute as @e[tag=lighter] at @s run fill ~1 ~-2 ~1 ~-1 ~4 ~-1 air replace light[level=1]
execute if score dtllighting dtllighting matches 2 run execute as @e[tag=lighter] at @s run fill ~1 ~-2 ~1 ~-1 ~4 ~-1 air replace light[level=2]
execute if score dtllighting dtllighting matches 3 run execute as @e[tag=lighter] at @s run fill ~1 ~-2 ~1 ~-1 ~4 ~-1 air replace light[level=3]
execute if score dtllighting dtllighting matches 4 run execute as @e[tag=lighter] at @s run fill ~1 ~-2 ~1 ~-1 ~4 ~-1 air replace light[level=4]
execute if score dtllighting dtllighting matches 5 run execute as @e[tag=lighter] at @s run fill ~1 ~-2 ~1 ~-1 ~4 ~-1 air replace light[level=5]
execute if score dtllighting dtllighting matches 6 run execute as @e[tag=lighter] at @s run fill ~1 ~-2 ~1 ~-1 ~4 ~-1 air replace light[level=6]
execute if score dtllighting dtllighting matches 7 run execute as @e[tag=lighter] at @s run fill ~1 ~-2 ~1 ~-1 ~4 ~-1 air replace light[level=7]
execute if score dtllighting dtllighting matches 8 run execute as @e[tag=lighter] at @s run fill ~1 ~-2 ~1 ~-1 ~4 ~-1 air replace light[level=8]
execute if score dtllighting dtllighting matches 9 run execute as @e[tag=lighter] at @s run fill ~1 ~-2 ~1 ~-1 ~4 ~-1 air replace light[level=9]
execute if score dtllighting dtllighting matches 10 run execute as @e[tag=lighter] at @s run fill ~1 ~-2 ~1 ~-1 ~4 ~-1 air replace light[level=10]
execute if score dtllighting dtllighting matches 11 run execute as @e[tag=lighter] at @s run fill ~1 ~-2 ~1 ~-1 ~4 ~-1 air replace light[level=11]
execute if score dtllighting dtllighting matches 12 run execute as @e[tag=lighter] at @s run fill ~1 ~-2 ~1 ~-1 ~4 ~-1 air replace light[level=12]
execute if score dtllighting dtllighting matches 13 run execute as @e[tag=lighter] at @s run fill ~1 ~-2 ~1 ~-1 ~4 ~-1 air replace light[level=13]
execute if score dtllighting dtllighting matches 14 run execute as @e[tag=lighter] at @s run fill ~1 ~-2 ~1 ~-1 ~4 ~-1 air replace light[level=14]
execute if score dtllighting dtllighting matches 15 run execute as @e[tag=lighter] at @s run fill ~1 ~-2 ~1 ~-1 ~4 ~-1 air replace light[level=15]

tag @e[tag=lighter] remove holdtorch
tag @a[nbt={SelectedItem:{id:"minecraft:torch",Count:1b}}] add holdtorch
tag @a[nbt={SelectedItem:{id:"minecraft:soul_torch",Count:1b}}] add holdtorch
tag @a[nbt={Inventory:[{id:"minecraft:torch",Slot:-106b}]}] add holdtorch
tag @a[nbt={Inventory:[{id:"minecraft:soul_torch",Slot:-106b}]}] add holdtorch

tag @e[tag=aiplayer] add holdtorch

execute if score dtllighting dtllighting matches 1 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=1] replace light
execute if score dtllighting dtllighting matches 2 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=2] replace light
execute if score dtllighting dtllighting matches 3 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=3] replace light
execute if score dtllighting dtllighting matches 4 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=4] replace light
execute if score dtllighting dtllighting matches 5 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=5] replace light
execute if score dtllighting dtllighting matches 6 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=6] replace light
execute if score dtllighting dtllighting matches 7 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=7] replace light
execute if score dtllighting dtllighting matches 8 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=8] replace light
execute if score dtllighting dtllighting matches 9 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=9] replace light
execute if score dtllighting dtllighting matches 10 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=10] replace light
execute if score dtllighting dtllighting matches 11 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=11] replace light
execute if score dtllighting dtllighting matches 12 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=12] replace light
execute if score dtllighting dtllighting matches 13 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=13] replace light
execute if score dtllighting dtllighting matches 14 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=14] replace light
execute if score dtllighting dtllighting matches 15 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=15] replace light

execute if score dtllighting dtllighting matches 1 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=1] replace air
execute if score dtllighting dtllighting matches 2 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=2] replace air
execute if score dtllighting dtllighting matches 3 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=3] replace air
execute if score dtllighting dtllighting matches 4 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=4] replace air
execute if score dtllighting dtllighting matches 5 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=5] replace air
execute if score dtllighting dtllighting matches 6 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=6] replace air
execute if score dtllighting dtllighting matches 7 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=7] replace air
execute if score dtllighting dtllighting matches 8 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=8] replace air
execute if score dtllighting dtllighting matches 9 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=9] replace air
execute if score dtllighting dtllighting matches 10 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=10] replace air
execute if score dtllighting dtllighting matches 11 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=11] replace air
execute if score dtllighting dtllighting matches 12 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=12] replace air
execute if score dtllighting dtllighting matches 13 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=13] replace air
execute if score dtllighting dtllighting matches 14 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=14] replace air
execute if score dtllighting dtllighting matches 15 run execute as @e[tag=holdtorch,tag=lighter] at @s run fill ~ ~ ~ ~ ~2 ~ light[level=15] replace air

scoreboard objectives add dtllighting dummy
execute unless score dtllighting dtllighting matches 0.. run scoreboard players set dtllighting dtllighting 13