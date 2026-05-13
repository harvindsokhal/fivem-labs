RegisterCommand("hello", function()
	print("[hs_hello] Hello from client")

	TriggerEvent("chat:addMessage", {
		args = { "hs_hello", "Hello from your first FiveM resource!" },
	})
end, false)
