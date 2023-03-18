#PLAYER HOTBAR STATS
execute if score . playing matches 1 as @a[tag=player] at @s run function hotbarstats
#PLAYER DISTANCE CALCULATION
execute if score . playing matches 1 as @a[tag=player] at @s run function distancecalc
#DISTANCE BEEPS
execute if score . playing matches 1 as @a[tag=player] unless score @s beeptimer matches 0.. store result score @s beeptimer run scoreboard players get @s distance
execute if score . playing matches 1 as @a[tag=player] if score @s beeptimer matches 1.. run scoreboard players remove @s beeptimer 1
execute if score . playing matches 1 as @a[tag=player] at @s if score @s beeptimer matches 0 run function distancebeep
#PLAYER DEATH
execute if score . playing matches 1 as @a[tag=player] at @s if score @s deathcool matches 0 if entity @a[tag=ghost,distance=..0.75,scores={dmgrun=0}] run function playerdeath
execute if score . playing matches 1 as @a[tag=player] if score @s deathcool matches 1.. run scoreboard players remove @s deathcool 1
#SPECTATOR
execute if score . playing matches 1 run gamemode spectator @a[tag=spectator]
#DEATH COOLDOWN FLICKERING
execute if score . playing matches 1 as @a[tag=player] if score @s deathcool matches 1.. run scoreboard players add @s deathflicker 1
execute if score . playing matches 1 as @a[tag=player] if score @s deathcool matches 1.. if score @s deathflicker matches 4.. run scoreboard players set @s deathflicker 0

execute if score . playing matches 1 as @a[tag=player] if score @s deathcool matches 1.. if score @s deathflicker matches 0..1 run effect clear @s invisibility
execute if score . playing matches 1 as @a[tag=player] if score @s deathcool matches 1.. if score @s deathflicker matches 2..3 run effect give @s invisibility 1 1 true
execute as @a[tag=player] unless score @s deathcool matches 1.. run effect clear @s invisibility

#LAMP
scoreboard players set @a[tag=player] lighting 0
execute if score . playing matches 1 as @a[tag=player] if score @s battery matches 1.. if score @s lamp_on matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Lamp","color":"gold","italic":false}',Lore:['{"text":"Right-click to turn on/off!","color":"white","italic":false}']}}}}] run scoreboard players set @s lighting 1

execute if score . playing matches 1 as @a[tag=player] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:0b,tag:{display:{Name:'{"text":"Lamp","color":"gold","italic":false}',Lore:['{"text":"Right-click to turn on/off!","color":"white","italic":false}']}}}]}] run clear @s carrot_on_a_stick
execute if score . playing matches 1 run item replace entity @a[tag=player] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Lamp","color":"gold","italic":false}',Lore:['{"text":"Right-click to turn on/off!","color":"white","italic":false}']},CustomModelData:1} 1

execute if score . playing matches 1 as @a[tag=player] if score @s lighting matches 0 run clear @s torch
execute if score . playing matches 1 as @a[tag=player] if score @s lighting matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:torch",Slot:-106b}]}] run clear @s torch
execute if score . playing matches 1 as @a[tag=player] if score @s lighting matches 1 run item replace entity @s weapon.offhand with torch

execute as @a[tag=player] if score @s lamp_on matches 2.. run scoreboard players set @s lamp_on 0

execute if score . playing matches 1 as @a[tag=player] if score @s lighting matches 1 run scoreboard players add @s lamptick 1
execute if score . playing matches 1 as @a[tag=player] if score @s lighting matches 1 if score @s lamptick matches 30.. run scoreboard players remove @s battery 1
execute if score . playing matches 1 as @a[tag=player] if score @s lighting matches 1 if score @s lamptick matches 30.. run scoreboard players set @s lamptick 0

execute if score . playing matches 1 as @a[tag=player] if score @s lighting matches 0 run effect give @s blindness 2 1 true
execute if score . playing matches 1 as @a[tag=player] if score @s lighting matches 1 run effect clear @s blindness

#GHOST DAMAGING
execute if score . playing matches 1 as @a[tag=player] at @s if score @s lighting matches 1 run function checkghost
execute if score . playing matches 1 as @e[tag=aiplayer] at @s run function checkghost

#HOLOGRAMS
execute as @e[tag=holo] at @s run tp @s ~ ~0.1 ~
execute as @e[tag=holo] at @s run scoreboard players add @s dummy 1
execute as @e[tag=holo] at @s if score @s dummy matches 20.. run kill @s

#GHOST DAMAGE COOLDOWN
execute if score . playing matches 1 as @a[tag=ghost] if score @s ghostcool matches 1.. run scoreboard players remove @s ghostcool 1
execute if score . playing matches 1 as @a[tag=ghost] if score @s dmgrun matches 1.. run scoreboard players remove @s dmgrun 1

#GHOST VISIBILITY
execute if score . playing matches 1 as @a[tag=ghost] at @s run function calcvisibility
execute if score . playing matches 1 as @a[tag=ghost] if score @s ghostvisible matches 1 run effect clear @s invisibility
execute if score . playing matches 1 as @a[tag=ghost] if score @s ghostvisible matches 1 if score . lightningtick matches ..20 run effect give @s glowing 1 1 true
execute if score . playing matches 1 as @a[tag=ghost] if score @s ghostvisible matches 0 run effect give @s invisibility 1 1 true
execute if score . playing matches 1 as @a[tag=ghost] if score @s ghostvisible matches 0 run effect clear @s glowing

#LIGHTNING
execute unless score . lightningtick matches -2147483648..2147483647 run scoreboard players set . lightningtick 0
execute if score . playing matches 1 if score . lightningtick matches 0 run scoreboard players set max rand 600
execute if score . playing matches 1 if score . lightningtick matches 0 run function random/randomize
execute if score . playing matches 1 if score . lightningtick matches 0 run scoreboard players add result rand 200
execute if score . playing matches 1 if score . lightningtick matches 0 store result score . lightningtick run scoreboard players get result rand
execute if score . playing matches 1 if score . lightningtick matches 1.. run scoreboard players remove . lightningtick 1
execute if score . playing matches 1 if score . lightningtick matches 20 as @a at @s run playsound minecraft:lgm.thunder_ weather @a
execute if score . playing matches 1 if score . lightningtick matches 20 as @p at @s positioned ^ ^ ^50 run summon lightning_bolt ~ ~ ~
stopsound @a weather entity.lightning_bolt.thunder

#TIMER
execute if score . playing matches 1 run scoreboard players add tick timer 1
execute if score . playing matches 1 if score tick timer matches 20.. run scoreboard players remove . timer 1
execute if score . playing matches 1 if score tick timer matches 20.. run scoreboard players set tick timer 0

bossbar add timer "timer"
bossbar set timer players @a
bossbar set timer color white
execute if score . playing matches 1 run bossbar set timer visible true
execute if score . playing matches 1 run bossbar set timer max 500
execute if score . playing matches 1 store result bossbar timer value run scoreboard players get . timer
execute if score . playing matches 1 run bossbar set timer name [{"text":"Time: ","color":"white"},{"score":{"name":".","objective":"timer"}}]
execute if score . playing matches 0 run bossbar set timer visible false
execute if score . playing matches 1 if score tick timer matches 1 if score . timer matches 60 run playsound minecraft:lgm.time_reminder weather @a
execute if score . playing matches 1 if score . timer matches ..0 run function draw

#GHOST SPECIAL THING
execute if score . playing matches 1 as @a[tag=ghost] at @s run function checkspecial

#BATTERY
execute if score . playing matches 1 as @a[tag=player] at @s if entity @e[tag=battery,distance=..0.5] run function pickbattery

#BATTERY SPAWNS
execute if score . playing matches 1 if score . timer matches 400 if score tick timer matches 10 run function checkbatteryplace
execute if score . playing matches 1 if score . timer matches 350 if score tick timer matches 10 run function checkbatteryplace
execute if score . playing matches 1 if score . timer matches 300 if score tick timer matches 10 run function checkbatteryplace
execute if score . playing matches 1 if score . timer matches 250 if score tick timer matches 10 run function checkbatteryplace
execute if score . playing matches 1 if score . timer matches 200 if score tick timer matches 10 run function checkbatteryplace
execute if score . playing matches 1 if score . timer matches 150 if score tick timer matches 10 run function checkbatteryplace
execute if score . playing matches 1 if score . timer matches 100 if score tick timer matches 10 run function checkbatteryplace

#GHOST HOTBAR TEXT
execute if score . playing matches 1 as @a[tag=ghost] run function ghosthotbar

#OTHER
effect give @a saturation 2 255 true
effect give @a regeneration 2 255 true
gamerule fallDamage false
execute if block -20 -59 -49 birch_button[powered=true] run particle falling_water -20 -58 -48.8 0.2 0.2 0.2 0.1 10
execute if score . playing matches 1 run effect give @a[tag=ghost] jump_boost 2 128 true
execute if score . playing matches 1 run effect give @a[tag=player,scores={lighting=1}] glowing 1 1 true
execute if score . introtick matches 0.. run scoreboard players remove . introtick 1
execute if score . introtick matches 0 run function start
execute if score startlaugh dummy matches 0.. run scoreboard players remove startlaugh dummy 1
execute if score startlaugh dummy matches 0 as @a[tag=player] at @s run playsound minecraft:lgm.ghost_laugh_ weather @s

execute if score . playing matches 1 run scoreboard players add @a[tag=ghost] runsoundtick 1
execute if score . playing matches 1 as @a[tag=ghost] at @s if score @s runsoundtick matches 5.. if score @s dmgrun matches 1..96 run playsound minecraft:lgm.ghost_damage_run weather @a
execute if score . playing matches 1 as @a[tag=ghost] if score @s runsoundtick matches 5.. run scoreboard players set @s runsoundtick 0

execute if score . playing matches 1 as @a[tag=ghost] if score @s dmgrun matches 1..96 run stopsound @a weather lgm.ghost_burning
execute as @e[tag=chair] at @s run tp @e[tag=chaircart] ~ ~0.4 ~ ~ ~
effect give @e[type=villager] invisibility 99999 1 true

execute if score . playing matches 1 as @a[tag=ghost] if score @s dmgrun matches 1.. run effect give @s speed 1 1 true
execute if score . playing matches 1 as @a[tag=ghost] unless score @s dmgrun matches 1.. run effect clear @s speed
execute if score . playing matches 1 run effect give @a[tag=ghost] night_vision 1 255 true

team join nametag @a

execute if score . playing matches 1 if score . lightningtick matches ..20 run effect give @a[tag=player] night_vision 1 255 true
execute if score . playing matches 1 unless score . lightningtick matches ..20 run effect clear @a[tag=player] night_vision

#HUB ROLES
tag @a remove addplayer
tag @a remove addghost
execute positioned -60 -60 -58 run tag @a[distance=..0.5] add addplayer
execute positioned -58 -60 -58 run tag @a[distance=..0.5] add addghost
tag @a[tag=!addplayer,tag=!addghost] remove addcool

execute as @e[tag=addplayer,tag=!addcool] run function roles/player
execute as @e[tag=addghost,tag=!addcool] run function roles/ghost

#EXIT SETTINGS AREA
execute positioned -54 -60 -38 if entity @p[distance=..0.5] run playsound minecraft:lgm.ns_2 weather @p ~ ~ ~ 100000 1
execute positioned -54 -60 -38 run tp @a[distance=..0.5] -56 -60 -54 90 0

#HUB MAPS
tag @a remove map1
tag @a remove map2
tag @a remove map3
tag @a remove map4
execute positioned -57 -60 -50 run tag @a[distance=..0.45] add map1
execute positioned -58 -60 -50 run tag @a[distance=..0.45] add map2
execute positioned -59 -60 -50 run tag @a[distance=..0.45] add map3
execute positioned -60 -60 -50 run tag @a[distance=..0.45] add map4
tag @a[tag=!map1,tag=!map2,tag=!map3,tag=!map4] remove mapcool

execute as @a[tag=map1,tag=!mapcool] run function maps/main_floor
execute as @a[tag=map2,tag=!mapcool] run function maps/the_basement
execute as @a[tag=map3,tag=!mapcool] run function maps/research_lab
execute as @a[tag=map4,tag=!mapcool] run function maps/rooftop

#AI PLAYERS
execute if score . playing matches 1 as @e[tag=aiplayer] at @s run function aitick

#DEAD PLAYER REVIVING
execute as @e[tag=deadplayer] at @s run function deadplayertick
execute as @a if score @s revivesound matches 1.. run scoreboard players remove @s revivesound 1

#ARMORS IN STORAGE
execute if score armors settings matches 1 as @e[tag=armorshake,tag=!shaken] at @s positioned ^ ^ ^2 if entity @a[tag=ghost,distance=..2] run playsound minecraft:lgm.armor_shake weather @a
execute if score armors settings matches 1 as @e[tag=armorshake] at @s positioned ^ ^ ^2 if entity @a[tag=ghost,distance=..2] run tag @s add shaken
effect clear @e[tag=armorshake,tag=!shaken] glowing
effect give @e[tag=armorshake,tag=shaken] glowing 1 1 true
execute if score armors settings matches 1 as @e[tag=shaken] run scoreboard players add @s dummy 1
execute if score armors settings matches 1 as @e[tag=shaken] if score @s dummy matches 2 run scoreboard players set @s dummy 0
execute if score armors settings matches 1 as @e[tag=shaken] at @s if score @s dummy matches 0 run tp @s ^0.1 ^ ^
execute if score armors settings matches 1 as @e[tag=shaken] at @s if score @s dummy matches 1 run tp @s ^-0.1 ^ ^

execute as @a if score @s battery matches ..0 run scoreboard players set @s battery 0

#CONVEYORS
execute if score . playing matches 1 if score conveyors settings matches 1 as @a[tag=player] at @s if block ~ ~-0.5 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.1
execute if score . playing matches 1 if score conveyors settings matches 1 as @a[tag=player] at @s if block ~ ~-0.5 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.1
execute if score . playing matches 1 if score conveyors settings matches 1 as @a[tag=player] at @s if block ~ ~-0.5 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.1 ~ ~
execute if score . playing matches 1 if score conveyors settings matches 1 as @a[tag=player] at @s if block ~ ~-0.5 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.1 ~ ~

#DONT LEAVE MY HUB!
execute unless score . playing matches 1 positioned -59 -60 -46 run tp @a[distance=20..] -57 -60 -54

team join player @e[tag=player]
team join ghost @e[tag=ghost]
team join revive @e[tag=deadplayer]

team leave @e[tag=!ghost,tag=!player,tag=!deadplayer]