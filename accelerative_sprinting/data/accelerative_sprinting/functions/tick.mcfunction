execute as @a[predicate=!accelerative_sprinting:sprinting] run scoreboard players set @s as_sprint 0
execute as @a[predicate=!accelerative_sprinting:sprinting] run attribute @s minecraft:generic.movement_speed base set 0.1
execute as @a[predicate=accelerative_sprinting:sneaking] run scoreboard players set @s as_sprint 0
execute as @a[predicate=accelerative_sprinting:sneaking] run attribute @s minecraft:generic.movement_speed base set 0.1
execute as @a[predicate=accelerative_sprinting:sprinting, predicate=!accelerative_sprinting:sneaking] run function accelerative_sprinting:set_speed
execute as @a[predicate=accelerative_sprinting:sprinting, predicate=!accelerative_sprinting:sneaking] run scoreboard players add @s as_sprint 1
execute at @a[nbt={ActiveEffects:[{Id:17b, ShowParticles: 0b}]}] run particle minecraft:falling_water ~ ~1 ~ 0.15 0.5 0.15 0 1 normal
