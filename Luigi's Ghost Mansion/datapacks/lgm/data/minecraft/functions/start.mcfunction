scoreboard players set . playing 1
execute store result score @a[tag=ghost] health run scoreboard players get health_ghost settings
scoreboard players set @a[tag=player] battery 100
execute store result score @a[tag=player] health run scoreboard players get health_player settings
scoreboard players set @a[tag=player] deathcool 0
scoreboard players set @a[tag=ghost] ghostcool 0
scoreboard players set @a[tag=ghost] dmgrun 0
scoreboard players set @a[tag=ghost] charging 0

function maptp

execute as @a at @s run playsound minecraft:lgm.lights_out weather @a
scoreboard players set startlaugh dummy 20

item replace entity @a[tag=player] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Lamp","color":"gold","italic":false}',Lore:['{"text":"Right-click to turn on/off!","color":"white","italic":false}']},CustomModelData:1} 1

execute if score . map matches 1 as @a at @s run playsound lgm.music_main voice @s
execute if score . map matches 2 as @a at @s run playsound lgm.music_basement_storage voice @s
execute if score . map matches 3 as @a at @s run playsound lgm.music_lab voice @s
execute if score . map matches 4 as @a at @s run playsound lgm.music_rooftop voice @s

time set midnight

execute store result score . timer run scoreboard players get timer settings

execute if score . map matches 1 run function batteryspawns/main_floor
execute if score . map matches 2 run function batteryspawns/the_basement
execute if score . map matches 3 run function batteryspawns/research_lab
execute if score . map matches 4 run function batteryspawns/rooftop

tag @e remove shaken

execute if score . map matches 2 run tellraw @a ["",{"text":"NOTE: ","color":"gold"},"The suits of armor will start shaking and glowing when a ghost enters its field of vision. Light them with a flashlight to disable them."]

function aisummon

kill @e[tag=deadplayer]