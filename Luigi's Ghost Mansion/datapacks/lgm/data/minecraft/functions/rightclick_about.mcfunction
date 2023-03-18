tellraw @p ["",{"text":"[About]","color":"gold"},"\n","Welcome to Luigi's Ghost Mansion in Minecraft, a recreation of the mini-game from Nintendo Land (Wii U)!","\n","Select a map on the left and choose player roles on the right. This map requires 2-5 players to work.","\n","When you're ready, right-click the middle screen to play!","\n","Have fun!"]
tellraw @p {"text":"[How to play]","color":"green","clickEvent":{"action":"run_command","value":"/function howtoplay"},"hoverEvent":{"action":"show_text","contents":["Click to view instructions"]}}
advancement revoke @a only rightclick_about

playsound minecraft:lgm.ns_6 weather @p ~ ~ ~ 100000 1