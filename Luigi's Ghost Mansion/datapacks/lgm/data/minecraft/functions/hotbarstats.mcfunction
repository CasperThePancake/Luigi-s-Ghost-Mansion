#MAX: 5
execute if score health_player settings matches 5 if score @s health matches 5 run title @s actionbar ["",{"text":"⚡","color":"gold"}," Battery: ",{"score":{"name":"@s","objective":"battery"}},"% ",{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"}]
execute if score health_player settings matches 5 if score @s health matches 4 run title @s actionbar ["",{"text":"⚡","color":"gold"}," Battery: ",{"score":{"name":"@s","objective":"battery"}},"% ",{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"},{"text":"❤","color":"gray"}]
execute if score health_player settings matches 5 if score @s health matches 3 run title @s actionbar ["",{"text":"⚡","color":"gold"}," Battery: ",{"score":{"name":"@s","objective":"battery"}},"% ",{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"},{"text":"❤","color":"gray"},{"text":"❤","color":"gray"}]
execute if score health_player settings matches 5 if score @s health matches 2 run title @s actionbar ["",{"text":"⚡","color":"gold"}," Battery: ",{"score":{"name":"@s","objective":"battery"}},"% ",{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"},{"text":"❤","color":"gray"},{"text":"❤","color":"gray"},{"text":"❤","color":"gray"}]
execute if score health_player settings matches 5 if score @s health matches 1 run title @s actionbar ["",{"text":"⚡","color":"gold"}," Battery: ",{"score":{"name":"@s","objective":"battery"}},"% ",{"text":"❤","color":"dark_red"},{"text":"❤","color":"gray"},{"text":"❤","color":"gray"},{"text":"❤","color":"gray"},{"text":"❤","color":"gray"}]

#MAX: 4
execute if score health_player settings matches 4 if score @s health matches 4 run title @s actionbar ["",{"text":"⚡","color":"gold"}," Battery: ",{"score":{"name":"@s","objective":"battery"}},"% ",{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"}]
execute if score health_player settings matches 4 if score @s health matches 3 run title @s actionbar ["",{"text":"⚡","color":"gold"}," Battery: ",{"score":{"name":"@s","objective":"battery"}},"% ",{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"},{"text":"❤","color":"gray"}]
execute if score health_player settings matches 4 if score @s health matches 2 run title @s actionbar ["",{"text":"⚡","color":"gold"}," Battery: ",{"score":{"name":"@s","objective":"battery"}},"% ",{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"},{"text":"❤","color":"gray"},{"text":"❤","color":"gray"}]
execute if score health_player settings matches 4 if score @s health matches 1 run title @s actionbar ["",{"text":"⚡","color":"gold"}," Battery: ",{"score":{"name":"@s","objective":"battery"}},"% ",{"text":"❤","color":"dark_red"},{"text":"❤","color":"gray"},{"text":"❤","color":"gray"},{"text":"❤","color":"gray"}]

#MAX: 3
execute if score health_player settings matches 3 if score @s health matches 3 run title @s actionbar ["",{"text":"⚡","color":"gold"}," Battery: ",{"score":{"name":"@s","objective":"battery"}},"% ",{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"}]
execute if score health_player settings matches 3 if score @s health matches 2 run title @s actionbar ["",{"text":"⚡","color":"gold"}," Battery: ",{"score":{"name":"@s","objective":"battery"}},"% ",{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"},{"text":"❤","color":"gray"}]
execute if score health_player settings matches 3 if score @s health matches 1 run title @s actionbar ["",{"text":"⚡","color":"gold"}," Battery: ",{"score":{"name":"@s","objective":"battery"}},"% ",{"text":"❤","color":"dark_red"},{"text":"❤","color":"gray"},{"text":"❤","color":"gray"}]

#MAX: 2
execute if score health_player settings matches 2 if score @s health matches 2 run title @s actionbar ["",{"text":"⚡","color":"gold"}," Battery: ",{"score":{"name":"@s","objective":"battery"}},"% ",{"text":"❤","color":"dark_red"},{"text":"❤","color":"dark_red"}]
execute if score health_player settings matches 2 if score @s health matches 1 run title @s actionbar ["",{"text":"⚡","color":"gold"}," Battery: ",{"score":{"name":"@s","objective":"battery"}},"% ",{"text":"❤","color":"dark_red"},{"text":"❤","color":"gray"}]

#MAX: 1
execute if score health_player settings matches 1 if score @s health matches 1 run title @s actionbar ["",{"text":"⚡","color":"gold"}," Battery: ",{"score":{"name":"@s","objective":"battery"}},"% ",{"text":"❤","color":"dark_red"}]