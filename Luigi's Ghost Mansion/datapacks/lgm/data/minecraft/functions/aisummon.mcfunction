#MAIN FLOOR
execute if score . map matches 1 if score playercount dummy matches ..3 run summon armor_stand -14 -60 -47 {Marker:1b,Tags:["aiplayer","1"]}
execute if score . map matches 1 if score playercount dummy matches ..3 run scoreboard players set @e[tag=1] aidistance 1

execute if score . map matches 1 if score playercount dummy matches ..2 run summon armor_stand -15 -60 -35 {Marker:1b,Tags:["aiplayer","2"]}
execute if score . map matches 1 if score playercount dummy matches ..2 run scoreboard players set @e[tag=2] aidistance 5

execute if score . map matches 1 if score playercount dummy matches ..1 run summon armor_stand -10 -60 -40 {Marker:1b,Tags:["aiplayer","3"]}
execute if score . map matches 1 if score playercount dummy matches ..1 run scoreboard players set @e[tag=3] aidistance 14

#THE BASEMENT
execute if score . map matches 2 if score playercount dummy matches ..3 run summon armor_stand -18 -60 -11 {Marker:1b,Tags:["aiplayer","1"]}
execute if score . map matches 2 if score playercount dummy matches ..3 run scoreboard players set @e[tag=1] aidistance 1

execute if score . map matches 2 if score playercount dummy matches ..2 run summon armor_stand -25 -60 20 {Marker:1b,Tags:["aiplayer","2"]}
execute if score . map matches 2 if score playercount dummy matches ..2 run scoreboard players set @e[tag=2] aidistance 9

execute if score . map matches 2 if score playercount dummy matches ..1 run summon armor_stand -12 -60 3 {Marker:1b,Tags:["aiplayer","3"]}
execute if score . map matches 2 if score playercount dummy matches ..1 run scoreboard players set @e[tag=3] aidistance 18

#THE BASEMENT
execute if score . map matches 3 if score playercount dummy matches ..3 run summon armor_stand -20.5 -60 40.0 {Marker:1b,Tags:["aiplayer","1"]}
execute if score . map matches 3 if score playercount dummy matches ..3 run scoreboard players set @e[tag=1] aidistance 1

execute if score . map matches 3 if score playercount dummy matches ..2 run summon armor_stand -16.0 -60 72.0 {Marker:1b,Tags:["aiplayer","2"]}
execute if score . map matches 3 if score playercount dummy matches ..2 run scoreboard players set @e[tag=2] aidistance 9

execute if score . map matches 3 if score playercount dummy matches ..1 run summon armor_stand -10.0 -60 50.0 {Marker:1b,Tags:["aiplayer","3"]}
execute if score . map matches 3 if score playercount dummy matches ..1 run scoreboard players set @e[tag=3] aidistance 18

#ROOFTOP
execute if score . map matches 4 if score playercount dummy matches ..3 run summon armor_stand -22 -59 84 {Marker:1b,Tags:["aiplayer","1"]}
execute if score . map matches 4 if score playercount dummy matches ..3 run scoreboard players set @e[tag=1] aidistance 2

execute if score . map matches 4 if score playercount dummy matches ..2 run summon armor_stand -9 -59 95 {Marker:1b,Tags:["aiplayer","2"]}
execute if score . map matches 4 if score playercount dummy matches ..2 run scoreboard players set @e[tag=2] aidistance 4

execute if score . map matches 4 if score playercount dummy matches ..1 run summon armor_stand -22 -59 106 {Marker:1b,Tags:["aiplayer","3"]}
execute if score . map matches 4 if score playercount dummy matches ..1 run scoreboard players set @e[tag=3] aidistance 6