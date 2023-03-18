execute unless score @s deadrevive matches -2147483648..2147483647 run scoreboard players set @s deadrevive 0

execute if score @s deadrevive matches 100.. run function reviveplayer

effect give @s glowing 1 1 true