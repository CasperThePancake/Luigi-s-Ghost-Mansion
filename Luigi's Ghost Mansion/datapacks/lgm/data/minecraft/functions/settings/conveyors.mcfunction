execute store result score ap dummy run scoreboard players get conveyors settings

execute if score ap dummy matches 1 run scoreboard players set conveyors settings 0
execute if score ap dummy matches 0 run scoreboard players set conveyors settings 1

setblock -59 -60 -34 air
execute if score ap dummy matches 0 run setblock -59 -60 -34 birch_wall_sign[facing=north]{GlowingText:1b,Text1:'{"text":"Conveyors"}',Text2:'{"text":"ON","color":"green"}'} replace
execute if score ap dummy matches 1 run setblock -59 -60 -34 birch_wall_sign[facing=north]{GlowingText:1b,Text1:'{"text":"Conveyors"}',Text2:'{"text":"OFF","color":"red"}'} replace

playsound minecraft:lgm.ns_4 weather @p ~ ~ ~ 100000 1