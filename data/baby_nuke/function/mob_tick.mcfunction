# Red haze, 4 times per second. Team color makes the glowing outline red.
scoreboard players add @s bn_fx 1
execute if score @s bn_fx matches 5.. run particle minecraft:dust{color:[1.0,0.02,0.02],scale:0.9} ~ ~0.4 ~ 0.28 0.2 0.28 0.01 4 normal
execute if score @s bn_fx matches 5.. run scoreboard players set @s bn_fx 0
# The dependency initializes newly tagged AI mobs in roaming mode.
# Apply our hunting settings ONLY after ai.values.ready appears.
execute if entity @s[tag=ai.values.ready,tag=!bn_ai_ready] run function baby_nuke:hunt_setup
# Do not let Pathfinder resume random roaming after initialization.
execute if entity @s[tag=bn_ai_ready] if score @s bn_fuse matches 0 run scoreboard players set @s ai.Mode 0
# Call A* at most once every 30 ticks per baby, and only for nearby targets.
# Pathfinder itself moves the actual creeper through calculated waypoints.
scoreboard players add @s bn_nav 1
execute if entity @s[tag=bn_ai_ready] if score @s bn_fuse matches 0 if score @s bn_nav matches 30.. if entity @e[type=#baby_nuke:prey,tag=!bn_baby,distance=2.4..12,limit=1] run function baby_nuke:navigate
# Keep AI from planning more paths after ignition.
execute if score @s bn_fuse matches 1.. run scoreboard players set @s ai.Mode 0
# Arm for either players or mobs, and lock the 3-second fuse.
execute if score @s bn_fuse matches 0 if entity @a[distance=..2.4,gamemode=!spectator] run function baby_nuke:arm
execute if score @s bn_fuse matches 0 if entity @e[type=#baby_nuke:prey,tag=!bn_baby,distance=..2.4,limit=1] run function baby_nuke:arm
execute if score @s bn_fuse matches 1.. run function baby_nuke:fuse_tick
