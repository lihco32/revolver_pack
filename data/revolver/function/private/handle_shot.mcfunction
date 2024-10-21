# Shooter is holding a revolver

# Save ammo value
execute as @a[tag=revolvershot] store result score @s revo_ammo run data get entity @s SelectedItem.components."minecraft:custom_data".ammo

# Modify the crossbow
execute as @a[tag=revolvershot, scores={revo_ammo=1}] run item modify entity @s weapon.mainhand revolver:ammo_to0
execute as @a[tag=revolvershot, scores={revo_ammo=2}] run item modify entity @s weapon.mainhand revolver:ammo_to1
execute as @a[tag=revolvershot, scores={revo_ammo=3}] run item modify entity @s weapon.mainhand revolver:ammo_to2
execute as @a[tag=revolvershot, scores={revo_ammo=4}] run item modify entity @s weapon.mainhand revolver:ammo_to3

# Remove shooter's tag
tag @a[tag=revolvershot] remove revolvershot