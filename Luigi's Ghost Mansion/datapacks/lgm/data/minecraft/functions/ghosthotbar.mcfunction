execute if score @s charging matches 1.. store result score percent dummy run scoreboard players get @s charging
scoreboard players set 100 dummy 100
scoreboard players operation percent dummy *= 100 dummy
scoreboard players set 150 dummy 150
scoreboard players operation percent dummy /= 150 dummy

execute if score @s ghostvisible matches 0 run title @s actionbar ["",{"text":"Health: ","color":"dark_red"},{"score":{"name":"@s","objective":"health"}},{"text":" [Hidden] ","bold":true,"color":"gray"}]
execute if score @s ghostvisible matches 1 run title @s actionbar ["",{"text":"Health: ","color":"dark_red"},{"score":{"name":"@s","objective":"health"}},{"text":" [Visible] ","bold":true,"color":"yellow"}]
execute if score @s ghostvisible matches 1 if score . lightningtick matches ..20 run title @s actionbar ["",{"text":"Health: ","color":"dark_red"},{"score":{"name":"@s","objective":"health"}},{"text":" [Visible] ","bold":true,"color":"gold"}]

execute if score @s charging matches 1.. if score @s ghostvisible matches 0 run title @s actionbar ["",{"text":"Health: ","color":"dark_red"},{"score":{"name":"@s","objective":"health"}},{"text":" [Hidden] ","bold":true,"color":"gray"},{"text":"Charging: ","color":"dark_purple"},{"score":{"name":"percent","objective":"dummy"}},"%"]
execute if score @s charging matches 1.. if score @s ghostvisible matches 1 run title @s actionbar ["",{"text":"Health: ","color":"dark_red"},{"score":{"name":"@s","objective":"health"}},{"text":" [Visible] ","bold":true,"color":"yellow"},{"text":"Charging: ","color":"dark_purple"},{"score":{"name":"percent","objective":"dummy"}},"%"]
execute if score @s charging matches 1.. if score @s ghostvisible matches 1 if score . lightningtick matches ..20 run title @s actionbar ["",{"text":"Health: ","color":"dark_red"},{"score":{"name":"@s","objective":"health"}},{"text":" [Visible] ","bold":true,"color":"gold"},{"text":"Charging: ","color":"dark_purple"},{"score":{"name":"percent","objective":"dummy"}},"%"]