scoreboard players remove @a[tag=player,distance=..15] battery 50
tellraw @a[tag=player,distance=..15] ["",{"text":"Your","color":"green"}," battery's charge was corrupted by ",{"selector":"@s","color":"dark_red"},"!"]

particle soul ~ ~0.5 ~ 15 0 15 0 250 force
particle electric_spark ~ ~1 ~ 15 0 15 0.1 300 force
scoreboard players set @s charging 0

playsound minecraft:lgm.ghost_charge_blow weather @a
stopsound @a weather minecraft:lgm.ghost_charging