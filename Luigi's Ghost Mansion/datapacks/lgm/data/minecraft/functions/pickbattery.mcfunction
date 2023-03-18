scoreboard players set @s battery 100
tellraw @p ["",{"text":"You","color":"green"}," picked up a ",{"text":"battery","color":"gold"},"!"]
kill @e[tag=battery,limit=1,sort=nearest]
playsound minecraft:lgm.battery_pickup weather @a ~ ~ ~