summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,CustomName:Player2,Marker:1}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,CustomName:Player1,Marker:1}

tp @e[type=armor_stand,name=Player1] @a[tag=Player1tag]
tp @e[type=armor_stand,name=Player2] @a[tag=Player2tag]

tp @a[tag=Player1tag] @e[type=armor_stand,name=Player2]
tp @a[tag=Player2tag] @e[type=armor_stand,name=Player1]

kill @e[type=armor_stand,name=Player1]
kill @e[type=armor_stand,name=Player2]
