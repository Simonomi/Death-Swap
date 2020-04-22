gamerule commandBlockOutput false
scoreboard objectives add deaths deathCount
setworldspawn 0 100 0


gamemode survival @a
clear @a
effect clear @a
effect give @a minecraft:instant_health 1 255 true
effect give @a minecraft:saturation 5 255 true
spreadplayers 0 0 100000 200000 false @a
time set day
advancement revoke @a everything
gamerule doImmediateRespawn true

tag @a remove Player1Tag
tag @a remove Player2Tag
tag @r add Player1Tag
tag @a[tag=!Player1Tag] add Player2Tag

team remove Blue
team remove Red
team add Blue {"text":"Player 1"}
team modify Blue color blue
team add Red {"text":"Player 2"}
team modify Red color red
team join Blue @a[tag=Player1Tag]
team join Red @a[tag=Player2Tag]


kill @e[type=armor_stand,name=timer]
summon minecraft:armor_stand 0 0 0 {CustomName:'"timer"',Marker:1,NoGravity:1}
scoreboard objectives add timer dummy
scoreboard objectives add timer2 dummy
scoreboard players set @e[type=armor_stand,name=timer] timer 0
scoreboard players set @e[type=armor_stand,name=timer] timer2 0
