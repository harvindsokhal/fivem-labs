print("[hs_notify] Server loaded successfully")

RegisterCommand("servernotify", function(source)
	if source == 0 then
		print("[hs_notify] This command must be run by a player in-game")
		return
	end

	TriggerClientEvent("hs_notify:client:notify", source, "info", "Hello from the server!", 5000)
end, false)
