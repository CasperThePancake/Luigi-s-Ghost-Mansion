execute store result score ap dummy run scoreboard players get ai_players settings

execute if score ap dummy matches 1 run scoreboard players set ai_players settings 0
execute if score ap dummy matches 0 run scoreboard players set ai_players settings 1

setblock -63 -60 -39 air
execute if score ap dummy matches 0 run setblock -63 -60 -39 birch_wall_sign[facing=east]{GlowingText:1b,Text1:'{"text":"AI Players"}',Text2:'{"text":"ON","color":"green"}'} replace
execute if score ap dummy matches 1 run setblock -63 -60 -39 birch_wall_sign[facing=east]{GlowingText:1b,Text1:'{"text":"AI Players"}',Text2:'{"text":"OFF","color":"red"}'} replace

playsound minecraft:lgm.ns_4 weather @p ~ ~ ~ 100000 1