summon minecraft:armor_stand 0 0 0 {CustomName:'"random_number"',Marker:1,NoGravity:1}
summon minecraft:armor_stand 0 0 0 {CustomName:'"random_number"',Marker:1,NoGravity:1}
summon minecraft:armor_stand 0 0 0 {CustomName:'"random_number"',Marker:1,NoGravity:1}
summon minecraft:armor_stand 0 0 0 {CustomName:'"random_number"',Marker:1,NoGravity:1}
summon minecraft:armor_stand 0 0 0 {CustomName:'"random_number"',Marker:1,NoGravity:1}

tag @e[sort=random,limit=1,type=armor_stand,name=random_number] add tagone
tag @e[sort=random,limit=1,type=armor_stand,name=random_number] add tagtwo

execute as @e[type=armor_stand,name=random_number,tag=tagone,tag=tagtwo] run function deathswap:swap

kill @e[type=minecraft:armor_stand,name=random_number]
