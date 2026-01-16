advancement revoke @s only pocket_dimension:leave_rift

# set default value
data modify storage pocket_dimension:temp spawn_location set value {posX: 0.0d, posY: 100.0d, posZ: 0.0d, yaw: 0.0f, pitch: 0.0f, dimension: "minecraft:overworld"}

#try to write world spawn from storage
data modify storage pocket_dimension:temp spawn_location set from storage pocket_dimension:temp world_spawn

# try to recreate location by respawn point
data modify storage pocket_dimension:temp spawn_location.dimension set from entity @s respawn.dimension
data modify storage pocket_dimension:temp spawn_location.posX set from entity @s respawn.pos[0]
data modify storage pocket_dimension:temp spawn_location.posY set from entity @s respawn.pos[1]
data modify storage pocket_dimension:temp spawn_location.posZ set from entity @s respawn.pos[2]
data modify storage pocket_dimension:temp spawn_location.pitch set from entity @s respawn.pitch
data modify storage pocket_dimension:temp spawn_location.yaw set from entity @s respawn.yaw

# teleport
function pocket_dimension:leave_rift_follow with storage pocket_dimension:temp spawn_location
