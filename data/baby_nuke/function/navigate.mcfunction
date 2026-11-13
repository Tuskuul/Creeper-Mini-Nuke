# Called as / at the baby creeper.
scoreboard players set @s bn_nav 0
# Keep A* paths short to reduce server cost. The nearby prey selector includes players.
execute at @e[type=#baby_nuke:prey,tag=!bn_baby,sort=nearest,limit=1,distance=2.4..12] run function ai:api/pathfind
