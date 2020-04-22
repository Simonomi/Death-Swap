# tellraw @p ["",{"text":"Yes","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"/tellraw @p {\"text\":\"Confirmed!\",\"color\":\"green\"}"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Confirm","color":"green"}]}}},{"text":"/","color":"dark_gray","bold":"false"},{"text":"No","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/tellraw @p {\"text\":\"Cancelled\",\"color\":\"red\"}"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Cancel","color":"red"}]}}}]
execute as @a[tag=Player1Tag,scores={deaths=1..}] run title @a times 20 60 20
execute as @a[tag=Player1Tag,scores={deaths=1..}] run title @a title {"text":"Game Over","color":"red"}
execute as @a[tag=Player1Tag,scores={deaths=1..}] run title @a subtitle {"text":"Player 2 Wins!","color":"red"}
execute as @a[tag=Player1Tag,scores={deaths=1..}] run tag @e[type=armor_stand,name=timer] add gameOver
execute as @a[tag=Player1Tag,scores={deaths=1..}] run scoreboard players set @s deaths 0

execute as @a[tag=Player2Tag,scores={deaths=1..}] run title @a times 20 60 20
execute as @a[tag=Player2Tag,scores={deaths=1..}] run title @a title {"text":"Game Over","color":"blue"}
execute as @a[tag=Player2Tag,scores={deaths=1..}] run title @a subtitle {"text":"Player 1 Wins!","color":"blue"}
execute as @a[tag=Player2Tag,scores={deaths=1..}] run tag @e[type=armor_stand,name=timer] add gameOver
execute as @a[tag=Player2Tag,scores={deaths=1..}] run scoreboard players set @s deaths 0

scoreboard players add @e[type=armor_stand,name=timer,tag=!gameOver] timer 1
scoreboard players add @e[type=minecraft:armor_stand,name=timer,tag=!gameOver,scores={timer=400..}] timer2 1

execute as @e[type=minecraft:armor_stand,name=timer,tag=!gameOver,scores={timer2=200..}] run function deathswap:random
scoreboard players set @e[type=armor_stand,name=timer,tag=!gameOver,scores={timer2=200..}] timer2 0
