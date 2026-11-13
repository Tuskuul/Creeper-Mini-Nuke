# Native Fuse:60s controls actual detonation. These timings shape a rising beep cadence.
scoreboard players add @s bn_fuse 1
execute if score @s bn_fuse matches 17 run playsound minecraft:block.note_block.bit master @a[distance=..36] ~ ~ ~ 1 0.9
execute if score @s bn_fuse matches 29 run playsound minecraft:block.note_block.bit master @a[distance=..36] ~ ~ ~ 1 1.0
execute if score @s bn_fuse matches 39 run playsound minecraft:block.note_block.bit master @a[distance=..36] ~ ~ ~ 1 1.1
execute if score @s bn_fuse matches 45 run playsound minecraft:block.note_block.bit master @a[distance=..36] ~ ~ ~ 1 1.2
execute if score @s bn_fuse matches 49 run playsound minecraft:block.note_block.bit master @a[distance=..36] ~ ~ ~ 1 1.3
execute if score @s bn_fuse matches 52 run playsound minecraft:block.note_block.bit master @a[distance=..36] ~ ~ ~ 1 1.4
execute if score @s bn_fuse matches 55 run playsound minecraft:block.note_block.bit master @a[distance=..36] ~ ~ ~ 1 1.5
execute if score @s bn_fuse matches 57 run playsound minecraft:block.note_block.bit master @a[distance=..36] ~ ~ ~ 1 1.7
execute if score @s bn_fuse matches 59 run playsound minecraft:block.note_block.bit master @a[distance=..36] ~ ~ ~ 1 1.9
