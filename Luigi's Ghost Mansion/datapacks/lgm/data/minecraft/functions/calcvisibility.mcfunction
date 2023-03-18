execute store result score oldghost dummy run scoreboard players get @s ghostvisible

scoreboard players set @s skylevel 100
scoreboard players set @s lightlevel 100

scoreboard players set @s ghostvisible 0

execute if score @s skylevel < @s lightlevel if score @s lightlevel matches ..6 run scoreboard players set @s ghostvisible 0
execute if score @s skylevel > @s lightlevel if score @s skylevel matches ..6 run scoreboard players set @s ghostvisible 0
execute if score @s skylevel = @s lightlevel if score @s lightlevel matches ..6 run scoreboard players set @s ghostvisible 0

execute if score @s dmgrun matches 1.. run scoreboard players set @s ghostvisible 1
execute if score . lightningtick matches ..20 run scoreboard players set @s ghostvisible 1
execute if score @s charging matches 1.. run scoreboard players set @s ghostvisible 1

execute if score @s sprinting matches 1.. run scoreboard players set @s ghostvisible 1
execute if score @s sprinting matches 3.. run scoreboard players set @s sprinting 1
execute if score @s sprinting matches 1.. run scoreboard players remove @s sprinting 1

execute unless score oldghost dummy = @s ghostvisible if score @s ghostvisible matches 1 unless score @s sprinting matches 1.. run playsound minecraft:lgm.ghost_appear weather @a