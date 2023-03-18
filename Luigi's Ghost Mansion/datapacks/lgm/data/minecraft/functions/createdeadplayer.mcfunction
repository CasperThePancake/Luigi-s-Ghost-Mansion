summon armor_stand ~ ~-1.3 ~ {Marker:1b,Invisible:1b,Tags:["deadplayer"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-704502744,-11908768,-1310633262,-570217173],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWM1MzRjOGQyMThmM2NiMjU1YjkwM2FjY2QzNmFmYmM3MjQwM2Q4YjA5NDRmYTcyYjhjNjc1NGVkYmRjMTEzZCJ9fX0="}]}}}}]}

execute store result score @e[tag=deadplayer,limit=1,sort=nearest] deadid run scoreboard players get . deadid
execute store result score @s deadid run scoreboard players get . deadid
scoreboard players add . deadid 1