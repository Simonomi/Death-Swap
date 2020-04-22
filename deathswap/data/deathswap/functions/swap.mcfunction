summon minecraft:armor_stand 0 0 0 {NoGravity:1,CustomName:'"Player1"',Marker:1}
summon minecraft:armor_stand 0 0 0 {NoGravity:1,CustomName:'"Player2"',Marker:1}

tp @e[type=armor_stand,name=Player1] @a[tag=Player1Tag,limit=1]
tp @e[type=armor_stand,name=Player2] @a[tag=Player2Tag,limit=1]

tp @a[tag=Player1Tag] @e[type=armor_stand,name=Player2,limit=1]
tp @a[tag=Player2Tag] @e[type=armor_stand,name=Player1,limit=1]

kill @e[type=armor_stand,name=Player1]
kill @e[type=armor_stand,name=Player2]

scoreboard players set @e[type=armor_stand,name=timer] timer 0
scoreboard players set @e[type=armor_stand,name=timer] timer2 0
