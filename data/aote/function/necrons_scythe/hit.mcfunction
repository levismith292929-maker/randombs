# Runs as one target found along the scythe's path.
# Tag first so overlapping sample points cannot hit the same target twice.
tag @s add necron_scythe_hit
damage @s 20 minecraft:magic by @a[name=QWDad,limit=1]
