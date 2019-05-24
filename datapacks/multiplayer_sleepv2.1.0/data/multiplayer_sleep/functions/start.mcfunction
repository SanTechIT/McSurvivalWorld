advancement revoke @s only multiplayer_sleep:sleep tick

execute if data entity @s SleepingY run tag @s add inBed

execute if entity @s[tag=inBed] run function multiplayer_sleep:in_bed

scoreboard players reset @s[tag=!inBed] multSleep.count
scoreboard players reset @s[tag=!inBed] multSleep.tmp
execute if entity @s[tag=!inBed] run advancement revoke @a only multiplayer_sleep:toast
advancement revoke @s[tag=!inBed] only multiplayer_sleep:sleep
tag @s[tag=inBed] remove inBed