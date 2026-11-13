# One-time manual ignition, so prey can trigger detonation too.
data merge entity @s {ignited:1b}
scoreboard players set @s bn_fuse 1
playsound minecraft:block.note_block.bit master @a[distance=..36] ~ ~ ~ 1 0.8

# Stop generating new paths during countdown.
scoreboard players set @s ai.State 0
