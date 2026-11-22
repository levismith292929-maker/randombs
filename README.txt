ASPECT OF THE END — Minecraft Java 26.2

This pack implements:
- A continuous raycast preview while the marked diamond sword is in your main hand.
- An end_rod particle marker at the top-center of the block you are aiming at.
- Right-click/hold detection through the minecraft:using_item advancement trigger.
- Reusable right-click activation (the use advancement is revoked immediately), up to 64 blocks away, using ^ ^ ^0.1 steps.
- Portal particles and the minecraft:entity.shulker.teleport sound at the destination.

RECIPE
Craft it with the recipe aspectoftheend:aote (ender pearl, diamond sword, ender pearl in a row). tick.mcfunction runs `recipe give QWDad aspectoftheend:aote`.
The item has these components:

minecraft:custom_data={item:aote}
minecraft:consumable={consume_seconds:10000,animation:"none",has_consume_particles:false}

It must be a diamond sword. It should also have the custom name "Aspect of the End" and enchantment glint.

INSTALL
1. Put the folder (or ZIP) into your world's datapacks folder.
2. Run /reload.
3. Hold the correctly tagged Aspect of the End in your MAIN HAND to see the preview.
4. Right-click to teleport.

NOTES
- The preview and teleport raycasts stop at the first solid/targetable block. They pass through air, replaceable plants and flowers, water, lava, fire, and soul fire.
- Blocks in the `aote:raycast_ignored` tag are passed through; you can edit that tag to customize what the raycast ignores.
- The destination is the top-center of the block hit. Make sure there is room above it.
- The previous build had a tick-advancement setup issue that could prevent repeat use. This build uses the datapack tick function tag instead. It is still an untested draft; please test it in-game and send any errors you see.

ASPECT OF THE DRAGON
Netherite sword with custom_data={item:dragon}. Recipe aspectoftheend:aotd (flint and steel, diamond sword, flint and steel in a row).
Right-click: breathes flame from your mouth in the direction you look, a series of solid flame rings that travel 5 blocks (0.5 blocks per tick), widening as they go. Any mob whose hitbox touches the breath while it travels (except QWDad) takes 10 dragon_breath damage once (tagged aote_hit, removed when the breath ends).

HYPERION (Implosion scroll only)
Base item: repeating command block (can't be placed in survival, so it only works as the Hyperion). Recipe aspectoftheend:hyperion: obsidian, diamond sword, obsidian in a row. The recipe result carries all the components: custom_data={item:hyperion}, gold name, lore, item_model iron_sword, glint, and the consumable component.
Right-click (Implosion): no teleport. Explosion particles and sound at your feet, and 20 damage (player_explosion, credited to QWDad) to every living non-player mob within 5 blocks. 3 tick cooldown shared with the other swords (aote_cd); holding does not spam.

ASTRAEA (Wither Shield scroll only)
Base item: command block (impulse), same idea. Recipe aspectoftheend:astraea (placeholder): crying obsidian, diamond sword, crying obsidian in a row. The recipe result carries all the components: custom_data={item:astraea}, light purple name, lore, item_model iron_sword, glint, and the consumable component.
Right-click (Wither Shield): 5 seconds of Resistance I plus Absorption III (6 hearts), a wither ambient sound, and four dark orbs (dust, soul fire, smoke particles) spiralling around you for 5 seconds, driven by a marker tagged aote_orb that follows QWDad and turns 20 degrees per tick. Using it again replaces the old orbs. Same 3 tick cooldown.

All four swords (Aspect of the End, Aspect of the Dragon, Hyperion, Astraea) have lore explaining how to use them. Lore comes from the recipe result, so older copies need to be crafted again.

THE TERMINATOR
Looks like a bow (it is a chain command block, which can't be placed in survival, with the bow item model and no glint and the same right-click setup as the other two items), custom_data={item:terminator}. Recipe aspectoftheend:terminator: iron ingots around a bow (jukebox shape); the bow is just an ingredient. Items made before v26 (real bows, or the v25 stick) and no longer work; craft a new one.
Right-click: instantly fires 3 arrows (the middle one straight, the others 10 degrees to each side), no drawing and no ammo needed. No cooldown: holding right-click fires 3 arrows every tick (20 volleys per second). The arrows glow, are on fire, are crits, and deal 5.5 base damage (same as the old power 6). They fly at 3 blocks per tick, like a fully drawn bow. Only QWDad can use it.
Arrows home in on living mobs within 40 blocks that arrows can hit (never QWDad; not items, armor stands, projectiles, endermen, etc. - see tag aote:non_targets). Homing only starts 0.3 seconds (6 ticks) after the arrow is fired; before that it flies straight.
Targeting: the target is re-picked every tick. Mobs that are already dead or dying are ignored. Mobs that were just hurt are skipped while any unhurt mob is in range, so extra multishot arrows spread out to other enemies instead of piling onto one. If the only mobs left were just hurt, the arrow aims at the nearest one.
Arrows never stop homing: if their target dies, they re-pick the next nearest mob on the next tick. If an arrow gets stuck in a block it is pushed 1.5 blocks per tick toward the target until it is free.
Arrows disappear on hit (PierceLevel 0). As a safety net, an arrow that already had a target is also removed if (a) every living mob in range is gone, or (b) the only mobs left were hurt this tick or last and one is within 5 blocks (the arrow hit, bounced or passed through). They give up after 10 seconds. 
