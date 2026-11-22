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

NECRON'S SCYTHE
Custom weapon with custom_data={item:necrons_scythe}. Recipe aspectoftheend:necrons_scythe: iron ingots around a bow. The result is a chain command block using the bow item model, named "Necron's Scythe", and configured as a right-click item.
Right-click: creates a diagonal sweep-attack particle slash 3 blocks ahead in the direction QWDad is looking. Everything in the 3-block attack zone (a 3-block-long, 3-block-wide/deep spherical area centered 1.5 blocks ahead) except QWDad takes 20 magic damage credited to QWDad. 5-second (100 tick) cooldown. Only QWDad can use it.
