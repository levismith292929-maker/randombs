attribute @s minecraft:max_health base set 40
data modify entity @s Health set value 40.0f
item replace entity @s armor.head with minecraft:netherite_helmet[minecraft:enchantments={levels:{"minecraft:protection":5}}]
item replace entity @s armor.chest with minecraft:netherite_chestplate[minecraft:enchantments={levels:{"minecraft:protection":5}}]
item replace entity @s armor.legs with minecraft:netherite_leggings[minecraft:enchantments={levels:{"minecraft:protection":5}}]
item replace entity @s armor.feet with minecraft:netherite_boots[minecraft:enchantments={levels:{"minecraft:protection":5}}]
item replace entity @s weapon.mainhand with minecraft:stone_sword
tag @s add necron_guard_equipped