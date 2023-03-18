scoreboard objectives add playing dummy
scoreboard players set . playing 0

scoreboard objectives add battery dummy
scoreboard players set @a battery 100

scoreboard objectives add distance dummy
scoreboard players set @a distance 10

scoreboard objectives add beeptimer dummy

scoreboard objectives add health dummy

scoreboard objectives add deathcool dummy

gamerule maxEntityCramming -1

scoreboard objectives add deathflicker dummy

scoreboard objectives add lighting dummy

scoreboard objectives add lamp_on minecraft.used:carrot_on_a_stick

scoreboard objectives add lamptick dummy

scoreboard objectives add ghostcheck dummy

scoreboard objectives add dummy dummy

scoreboard objectives add ghostcool dummy

scoreboard objectives add dmgrun dummy

scoreboard objectives add ghostvisible dummy

scoreboard objectives add lightlevel dummy
scoreboard objectives add skylevel dummy

scoreboard objectives add rand dummy

scoreboard objectives add lightningtick dummy

scoreboard objectives add sprinting custom:sprint_one_cm

scoreboard objectives add timer dummy

scoreboard objectives add sneaking custom:sneak_time

scoreboard objectives add charging dummy

scoreboard objectives add introtick dummy

scoreboard objectives add runsoundtick dummy

scoreboard objectives add map dummy

scoreboard objectives add settings dummy
scoreboard players set health_ghost settings 100
scoreboard players set health_player settings 3
scoreboard players set ai_players settings 1
scoreboard players set timer settings 500
scoreboard players set conveyors settings 1
scoreboard players set armors settings 1

scoreboard objectives add deadid dummy
scoreboard players set . deadid 0

scoreboard objectives add deadrevive dummy
scoreboard objectives add revivesound dummy

team add nametag
team modify nametag nametagVisibility never

scoreboard objectives add aidistance dummy

team add player "player"
team add ghost "ghost"
team add revive "revive"

team modify player color green
team modify ghost color dark_red
team modify revive color gray