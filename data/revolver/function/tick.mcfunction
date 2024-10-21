# Give tag to every player who shoots
execute as @a run execute if score @s revo_crossbowshot > @s revo_crossbowshotcopy run tag @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{revo:1b}}}}] add revolvershot

# Make a copy of crossbow shoot count(used for crossbow shooting detection)
execute as @a run scoreboard players operation @s revo_crossbowshotcopy = @s revo_crossbowshot

# Handle shot, if a shooter exists
execute if entity @a[tag=revolvershot] run function revolver:private/handle_shot

# Edit ammo value of every charged revolver with 0 ammo
execute as @a[predicate=revolver:player_holds_revo_charged,nbt={SelectedItem:{components:{"minecraft:custom_data":{ammo:0b}}}}] run item modify entity @s weapon.mainhand revolver:ammo_to4