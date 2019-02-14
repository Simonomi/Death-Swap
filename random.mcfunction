scoreboard objectives add Randomcloud dummy

summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:random_effect_cloud,Duration:1,Particle:take}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:random_effect_cloud,Duration:1,Particle:take}
scoreboard players tag @r[type=area_effect_cloud,name=random_effect_cloud] add output

scoreboard players set @r[type=area_effect_cloud,name=random_effect_cloud] Randomcloud 1
scoreboard objectives add RandomOutput dummy

execute @e[type=area_effect_cloud,name=random_effect_cloud,tag=output,score_Randomcloud_min=1] ~ ~ ~ function death%20swap:swap

kill @e[type=minecraft:area_effect_cloud,name=random_effect_cloud,r=0]

summon commandblock_minecart 0 3 0 {Tags:["delay"],PortalCooldown:600,Command:"function death%20swap:random"}