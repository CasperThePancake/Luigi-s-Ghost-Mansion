execute if score health_player settings matches 1 run scoreboard players set hs dummy 1
execute if score health_player settings matches 2 run scoreboard players set hs dummy 2
execute if score health_player settings matches 3 run scoreboard players set hs dummy 3
execute if score health_player settings matches 4 run scoreboard players set hs dummy 4
execute if score health_player settings matches 5 run scoreboard players set hs dummy 5

execute if score hs dummy matches 1 run scoreboard players set health_player settings 2
execute if score hs dummy matches 2 run scoreboard players set health_player settings 3
execute if score hs dummy matches 3 run scoreboard players set health_player settings 4
execute if score hs dummy matches 4 run scoreboard players set health_player settings 5
execute if score hs dummy matches 5 run scoreboard players set health_player settings 1

setblock -63 -60 -37 air
setblock -63 -60 -37 birch_wall_sign[facing=east]{GlowingText:1b,Text1:'{"text":"Lives (Player)"}',Text2:'{"score":{"name":"health_player","objective":"settings"},"color":"gold"}'} replace

playsound minecraft:lgm.ns_4 weather @p ~ ~ ~ 100000 1