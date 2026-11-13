# Baby Nuke Creepers

A Minecraft Java 26.3 server-side datapack that occasionally transforms naturally spawned creepers into half-sized, red-glowing **Baby Nukes**.

They hunt players, animals, and hostile mobs with help from the [AI Pathfinder](https://modrinth.com/datapack/pathfinding) library, beep increasingly quickly as their fuse burns, and detonate with **ExplosionRadius 30** (vanilla creeper: 3).

## Installation

1. Install the separately patched **AI Pathfinder v1.2 MC26.3 Fixed v2** dependency (the unpatched upstream v1.2 fails to load on 26.3).
2. Install this repository's files as a datapack ZIP with `pack.mcmeta` at the ZIP root, or copy them directly to a world datapack folder.
3. Remove older Baby Nuke pack editions. Run `/reload`.

**No client mods or client resource pack required.** Red appearance uses glowing outline and particles; the creeper's actual texture is unchanged.

## Test

```mcfunction
/execute positioned ~ ~ ~5 run function baby_nuke:spawn
```

## Configuration

```mcfunction
/scoreboard players set #natural bn_config 0
/scoreboard players set #natural bn_config 1
/scoreboard players set #chance bn_config 400
```

Natural conversions default to 400 out of 100,000 creeper spawns (0.4%, or 1/250). The current build hunts prey approximately 2.4–12 blocks away and refreshes routes every 30 ticks. **The discussed increase to 16 blocks is not included yet.**

## Cautions

An explosion of power 30 is enormously destructive. Test away from builds; pathfinding and edge cases are not exhaustively verified. The dependency's original project is [officialbarden/ai-pathfinding](https://github.com/officialbarden/ai-pathfinding) (GPL-3.0-only). The separately fixed Pathfinder version is required for the server setup discussed here.

Based on the Baby Nuke **Pathfinder Hunt Fix v2** datapack, the version tested with successful zombie pursuit and detonation.
