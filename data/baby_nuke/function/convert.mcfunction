tag @s add bn_checked
tag @s add bn_baby
data merge entity @s {ExplosionRadius:30b,Fuse:60s,ignited:0b,CustomName:{text:'Baby Nuke',color:'red',italic:false},CustomNameVisible:0b}
attribute @s minecraft:scale base set 0.5
attribute @s minecraft:movement_speed base set 0.35
team join bn_red @s
effect give @s minecraft:glowing infinite 0 true
scoreboard players set @s bn_fuse 0
particle minecraft:dust{color:[1.0,0.02,0.02],scale:1.0} ~ ~0.5 ~ 0.3 0.25 0.3 0.01 12 force
scoreboard players set @s bn_fx 0

# AI Pathfinder library initialises entities tagged ai.pathfinding.
tag @s add ai.pathfinding
scoreboard players set @s bn_nav 0
# Sprint through waypoints. Keep native creeper AI available for players.
scoreboard players set @s ai.baseMovementSpeed 220
scoreboard players set @s ai.baseSprintSpeed 340
scoreboard players set @s ai.baseJumpStrength 410
# AI Pathfinder initializes these values on its next global tick.
# bn_setup resets its default roam mode once initialization is complete.
