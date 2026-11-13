# Admin helper: uses caller's current execute position.
summon minecraft:creeper ~ ~ ~ {Tags:["bn_spawned","bn_checked"]}
execute as @e[type=minecraft:creeper,tag=bn_spawned,sort=nearest,limit=1,distance=..2] run function baby_nuke:convert
tag @e[type=minecraft:creeper,tag=bn_spawned,distance=..2] remove bn_spawned
