RegisterCommand("hello", function()
	exports["hs_notify"]:Notify("success", "Hello from hs_hello using hs_notify!", 5000)
end, false)
