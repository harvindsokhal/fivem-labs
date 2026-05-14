fx_version("cerulean")
game("gta5")

author("Harvind Sokhal")
description("A clean standalone notification system for FiveM")
version("0.1.0")

lua54("yes")

shared_scripts({
	"shared/config.lua",
})

client_scripts({
	"client/main.lua",
})

server_scripts({
	"server/main.lua",
})

exports({
	"Notify",
})
