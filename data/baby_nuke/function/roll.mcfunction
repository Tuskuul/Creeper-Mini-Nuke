tag @s add bn_checked
execute store result score @s bn_roll run random value 1..100000
# Default chance is 1/250, tunable with #chance score (1..100000).
execute if score @s bn_roll <= #chance bn_config run function baby_nuke:convert
