tellraw @p ""

tellraw @p ["",{"text":"[How to play]","color":"gold"},"\n","In Luigi's Ghost Mansion, there are ",{"text":"players","color":"green"}," and ",{"text":"ghosts","color":"dark_red"},".","\n","The ",{"text":"ghosts","color":"dark_red"}," must try to eliminate every ",{"text":"player","color":"green"}," by capturing them multiple times.","\n","The ",{"text":"players","color":"green"}," must try to eliminate every ",{"text":"ghost","color":"dark_red"}," by shining their flashlight on them.","\n","If there are less than 4 players, the remaining slots are filled with invulnerable AI players.","\n","If the timer runs out, the game ends in a draw."]

tellraw @p ""

tellraw @p ["",{"text":"[Ghost Instructions]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function ghost_instructions"},"hoverEvent":{"action":"show_text","contents":["Click to view ghost instructions"]}}," ",{"text":"[Player Instructions]","color":"green","clickEvent":{"action":"run_command","value":"/function player_instructions"},"hoverEvent":{"action":"show_text","contents":["Click to view player instructions"]}}]

playsound minecraft:lgm.ns_4 weather @p ~ ~ ~ 100000 1