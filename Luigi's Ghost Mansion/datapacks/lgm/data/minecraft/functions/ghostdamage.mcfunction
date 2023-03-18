execute if score @s dmgrun matches ..60 run playsound minecraft:lgm.start_ghost_damage weather @a[limit=2,sort=nearest]
execute if score @s dmgrun matches ..96 run playsound minecraft:lgm.ghost_burning weather @a[limit=2,sort=nearest]

scoreboard players remove @s health 1
summon armor_stand ~ ~1.3 ~ {CustomNameVisible:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["holo"],CustomName:'{"text":"1","color":"red"}'}
scoreboard players set @s ghostcool 2
scoreboard players set @s dmgrun 100

execute if score ai ghostcheck matches 0 run title @p[tag=player] times 0 10 5
execute if score ai ghostcheck matches 0 run title @p[tag=player] title {"score":{"name":"@s","objective":"health"},"color":"gold"}

execute if score @s health matches 0 run function ghostdeath
scoreboard players set @s charging 0