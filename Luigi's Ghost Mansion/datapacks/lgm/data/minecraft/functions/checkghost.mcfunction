scoreboard players set @s ghostcheck 0
scoreboard players set ai ghostcheck 0
execute rotated ~ 0 positioned ^ ^ ^1 if entity @e[tag=ghost,distance=..0.5,scores={ghostcool=0}] run scoreboard players set @s ghostcheck 1
execute rotated ~ 0 positioned ^ ^ ^1.5 if entity @e[tag=ghost,distance=..0.5,scores={ghostcool=0}] run scoreboard players set @s ghostcheck 1
execute rotated ~ 0 positioned ^ ^ ^2 if entity @e[tag=ghost,distance=..0.5,scores={ghostcool=0}] run scoreboard players set @s ghostcheck 1
execute rotated ~ 0 positioned ^ ^ ^2.5 if entity @e[tag=ghost,distance=..0.5,scores={ghostcool=0}] run scoreboard players set @s ghostcheck 1
execute rotated ~ 0 positioned ^ ^ ^3 if entity @e[tag=ghost,distance=..0.5,scores={ghostcool=0}] run scoreboard players set @s ghostcheck 1
execute rotated ~ 0 positioned ^ ^ ^3.5 if entity @e[tag=ghost,distance=..0.5,scores={ghostcool=0}] run scoreboard players set @s ghostcheck 1
execute rotated ~ 0 positioned ^ ^ ^4 if entity @e[tag=ghost,distance=..0.5,scores={ghostcool=0}] run scoreboard players set @s ghostcheck 1

execute rotated ~ 0 positioned ^ ^ ^2.5 run scoreboard players add @e[tag=deadplayer,distance=..3] deadrevive 1
execute rotated ~ 0 positioned ^ ^ ^2 run tag @e[tag=armorshake,distance=..2] remove shaken
execute rotated ~ 0 positioned ^ ^ ^3 if entity @e[tag=deadplayer,distance=..3] unless score @s revivesound matches 1.. run playsound minecraft:lgm.healing_friend weather @a ~ ~ ~ 0.35
execute rotated ~ 0 positioned ^ ^ ^3 if entity @e[tag=deadplayer,distance=..3] unless score @s revivesound matches 1.. run scoreboard players set @s revivesound 55

execute if score @s ghostcheck matches 1 if entity @s[tag=aiplayer] run scoreboard players set ai ghostcheck 1
execute if score @s ghostcheck matches 1 as @e[tag=ghost,limit=1,sort=nearest,scores={ghostcool=0}] at @s run function ghostdamage