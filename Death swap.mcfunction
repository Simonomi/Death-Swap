gamerule commandBlockOutput false
kill @e[type=armor_stand,name=Player1]
kill @e[type=armor_stand,name=Player2]
kill @e[type=commandblock_minecart]
tp @a 0 100 0
advancement revoke @a everything
clear @a
time set day
effect @a regeneration 1 255 true
effect @a saturation 1 255 true

scoreboard players tag @a remove Player1tag
scoreboard players tag @a remove Player2tag

scoreboard players tag @r add Player1tag
scoreboard players tag @a[tag=!Player1tag,c=1] add Player2tag

fill 0 100 0 0 101 0 minecraft:air
setblock 0 99 0 minecraft:stone
setworldspawn 0 100 0
spawnpoint @a 0 100 0

fill 1 0 1 -1 3 -1 minecraft:stone
setblock 0 0 0 minecraft:redstone_block
setblock 0 1 0 minecraft:activator_rail

summon commandblock_minecart 0 3 0 {Tags:["delay"],PortalCooldown:1200,Command:"function death%20swap:random"}

spreadplayers 0 0 10000 1000000 false @a

gamerule gameLoopFunction death%20swap:loop
