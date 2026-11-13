# Pathfinder has finished setting base values. Switch off its default wandering mode.
# Keep its movement logic active, but only route toward our chosen prey.
tag @s add bn_ai_ready
scoreboard players set @s ai.Mode 0
scoreboard players set @s ai.State 2
scoreboard players set @s ai.baseMovementSpeed 220
scoreboard players set @s ai.baseSprintSpeed 340
scoreboard players set @s ai.MovementSpeed 340
scoreboard players set @s ai.baseJumpStrength 410
scoreboard players set @s ai.JumpStrength 410
scoreboard players set @s bn_nav 30
