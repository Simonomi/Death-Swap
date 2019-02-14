kill @e[type=commandblock_minecart,tag=delay_end]
scoreboard players tag @e[type=commandblock_minecart,tag=delay] add delay_end {PortalCooldown:0}
tp @e[type=commandblock_minecart,tag=delay_end] 0 1 0
