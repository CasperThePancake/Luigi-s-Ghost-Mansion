scoreboard players set playercount dummy 0
execute as @a[tag=player] run scoreboard players add playercount dummy 1

tag @a remove 1
tag @a remove 2
tag @a remove 3
tag @a remove 4
tag @a[tag=player,tag=!1,tag=!2,tag=!3,tag=!4,limit=1,sort=random] add 1
tag @a[tag=player,tag=!1,tag=!2,tag=!3,tag=!4,limit=1,sort=random] add 2
tag @a[tag=player,tag=!1,tag=!2,tag=!3,tag=!4,limit=1,sort=random] add 3
tag @a[tag=player,tag=!1,tag=!2,tag=!3,tag=!4,limit=1,sort=random] add 4

#MAIN FLOOR (1)
execute if score . map matches 1 run tp @a[tag=ghost] -16 -60 -35
execute if score . map matches 1 run tp @a[tag=1] -3 -60 -19
execute if score . map matches 1 run tp @a[tag=2] -25 -60 -19
execute if score . map matches 1 run tp @a[tag=3] -25 -60 -52
execute if score . map matches 1 run tp @a[tag=4] -3 -60 -52

#THE BASEMENT (2)
execute if score . map matches 2 run tp @a[tag=ghost] -12 -60 8
execute if score . map matches 2 run tp @a[tag=1] -25 -60 -12
execute if score . map matches 2 run tp @a[tag=2] -5 -60 -12
execute if score . map matches 2 run tp @a[tag=3] -5 -60 25
execute if score . map matches 2 run tp @a[tag=4] -25 -60 25

#RESEARCH LAB (3)
execute if score . map matches 3 run tp @a[tag=ghost] -11 -60 56
execute if score . map matches 3 run tp @a[tag=1] -24 -60 38
execute if score . map matches 3 run tp @a[tag=2] -8 -60 38
execute if score . map matches 3 run tp @a[tag=3] -8 -60 71
execute if score . map matches 3 run tp @a[tag=4] -24 -60 71

#ROOFTOP (4)
execute if score . map matches 4 run tp @a[tag=ghost] -16 -59 95
execute if score . map matches 4 run tp @a[tag=1] -23 -59 83
execute if score . map matches 4 run tp @a[tag=2] -9 -59 83
execute if score . map matches 4 run tp @a[tag=3] -9 -59 107
execute if score . map matches 4 run tp @a[tag=4] -23 -59 107