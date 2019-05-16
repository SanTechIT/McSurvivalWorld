advancement grant @s only multiplayer_sleep:sleep sleeping
scoreboard players add @s multSleep.count 1
execute if entity @s[scores={multSleep.count=99}] run function multiplayer_sleep:announce
execute if entity @s[scores={multSleep.count=110}] run function multiplayer_sleep:check_skip