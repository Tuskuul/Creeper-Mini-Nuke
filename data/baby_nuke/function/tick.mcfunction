# Classify each creeper once. Never touch existing other creeper customizations afterward.
execute if score #natural bn_config matches 1 as @e[type=minecraft:creeper,tag=!bn_checked] at @s run function baby_nuke:roll
execute if score #natural bn_config matches 0 as @e[type=minecraft:creeper,tag=!bn_checked] run tag @s add bn_checked
# Baby nuke mob processing; only near players, avoids needless sound far away.
execute as @e[type=minecraft:creeper,tag=bn_baby] at @s run function baby_nuke:mob_tick
