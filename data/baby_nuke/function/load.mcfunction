# Reload-safe setup.
scoreboard objectives add bn_roll dummy
scoreboard objectives add bn_fuse dummy
scoreboard objectives add bn_fx dummy
team add bn_red
team modify bn_red color red
team modify bn_red seeFriendlyInvisibles false
# Datapack enable/disable naturally-spawning conversions via score.
scoreboard objectives add bn_config dummy
execute unless score #natural bn_config matches 0..1 run scoreboard players set #natural bn_config 1
execute unless score #chance bn_config matches 1..100000 run scoreboard players set #chance bn_config 400

# Path refresh timer for A* integration
scoreboard objectives add bn_nav dummy
