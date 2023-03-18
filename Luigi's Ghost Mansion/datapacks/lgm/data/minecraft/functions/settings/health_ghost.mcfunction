execute if score health_ghost settings matches 25 run scoreboard players set hs dummy 1
execute if score health_ghost settings matches 50 run scoreboard players set hs dummy 2
execute if score health_ghost settings matches 75 run scoreboard players set hs dummy 3
execute if score health_ghost settings matches 100 run scoreboard players set hs dummy 4
execute if score health_ghost settings matches 150 run scoreboard players set hs dummy 5
execute if score health_ghost settings matches 200 run scoreboard players set hs dummy 6
execute if score health_ghost settings matches 500 run scoreboard players set hs dummy 7
execute if score health_ghost settings matches 1000 run scoreboard players set hs dummy 8

execute if score hs dummy matches 1 run scoreboard players set health_ghost settings 50
execute if score hs dummy matches 2 run scoreboard players set health_ghost settings 75
execute if score hs dummy matches 3 run scoreboard players set health_ghost settings 100
execute if score hs dummy matches 4 run scoreboard players set health_ghost settings 150
execute if score hs dummy matches 5 run scoreboard players set health_ghost settings 200
execute if score hs dummy matches 6 run scoreboard players set health_ghost settings 500
execute if score hs dummy matches 7 run scoreboard players set health_ghost settings 1000
execute if score hs dummy matches 8 run scoreboard players set health_ghost settings 25

setblock -63 -60 -38 air
setblock -63 -60 -38 birch_wall_sign[facing=east]{GlowingText:1b,Text1:'{"text":"Health (Ghost)"}',Text2:'{"score":{"name":"health_ghost","objective":"settings"},"color":"gold"}'} replace

playsound minecraft:lgm.ns_4 weather @p ~ ~ ~ 100000 1