execute store result score ap dummy run scoreboard players get armors settings

execute if score ap dummy matches 1 run scoreboard players set armors settings 0
execute if score ap dummy matches 0 run scoreboard players set armors settings 1

setblock -60 -60 -34 air
execute if score ap dummy matches 0 run setblock -60 -60 -34 birch_wall_sign[facing=north]{GlowingText:1b,Text1:'{"text":"Storage armor"}',Text2:'{"text":"ON","color":"green"}'} replace
execute if score ap dummy matches 1 run setblock -60 -60 -34 birch_wall_sign[facing=north]{GlowingText:1b,Text1:'{"text":"Storage armor"}',Text2:'{"text":"OFF","color":"red"}'} replace

playsound minecraft:lgm.ns_4 weather @p ~ ~ ~ 100000 1