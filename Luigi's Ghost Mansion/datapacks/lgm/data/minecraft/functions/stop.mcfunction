scoreboard players set . playing 0
gamemode adventure @a
tag @a remove player
tag @a remove ghost
tag @a remove spectator
tp @a -56 -60 -54
title @a actionbar ""
clear @a
effect clear @a
kill @e[tag=battery]
time set noon
stopsound @a weather lgm.ghost_burning
stopsound @a voice
scoreboard players set . introtick -1

kill @e[tag=aiplayer]
kill @e[tag=deadplayer]