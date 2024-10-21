scoreboard objectives remove revo_crossbowshot
scoreboard objectives remove revo_crossbowshotcopy
scoreboard objectives remove revo_ammo

datapack disable "file/revolver_pack.zip"
datapack disable "file/revolver_pack"
tellraw @a [{"text": "Revolver Pack uninstalled"}]
