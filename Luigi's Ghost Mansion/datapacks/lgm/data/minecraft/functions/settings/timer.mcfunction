execute if score timer settings matches 100 run scoreboard players set hs dummy 1
execute if score timer settings matches 200 run scoreboard players set hs dummy 2
execute if score timer settings matches 300 run scoreboard players set hs dummy 3
execute if score timer settings matches 400 run scoreboard players set hs dummy 4
execute if score timer settings matches 500 run scoreboard players set hs dummy 5

execute if score hs dummy matches 1 run scoreboard players set timer settings 200
execute if score hs dummy matches 2 run scoreboard players set timer settings 300
execute if score hs dummy matches 3 run scoreboard players set timer settings 400
execute if score hs dummy matches 4 run scoreboard players set timer settings 500
execute if score hs dummy matches 5 run scoreboard players set timer settings 100

setblock -63 -60 -40 air
setblock -63 -60 -40 birch_wall_sign[facing=east]{GlowingText:1b,Text1:'{"text":"Timer"}',Text2:'{"score":{"name":"timer","objective":"settings"},"color":"gold"}'} replace

playsound minecraft:lgm.ns_4 weather @p ~ ~ ~ 100000 1