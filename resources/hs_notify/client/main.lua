local function normaliseType(notificationType)
	if Config.Types[notificationType] then
		return notificationType
	end

	return "info"
end

local function Notify(notificationType, message, duration)
	local safeType = normaliseType(notificationType)
	local typeConfig = Config.Types[safeType]
	local safeDuration = duration or Config.DefaultDuration

	if not message or message == "" then
		message = "No message provided"
	end

	TriggerEvent("chat:addMessage", {
		args = {
			typeConfig.prefix,
			message,
		},
	})

	if Config.Debug then
		print(("[hs_notify] type=%s duration=%s message=%s"):format(safeType, safeDuration, message))
	end
end

exports("Notify", Notify)

RegisterNetEvent("hs_notify:client:notify", function(notificationType, message, duration)
	Notify(notificationType, message, duration)
end)

RegisterCommand("notifytest", function()
	Notify("success", "hs_notify is working!", 5000)
end, false)

RegisterCommand("notifyerror", function()
	Notify("error", "This is an error notification.", 5000)
end, false)

RegisterCommand("notifyinfo", function()
	Notify("info", "This is an info notification.", 5000)
end, false)

RegisterCommand("notifywarning", function()
	Notify("warning", "This is a warning notification.", 5000)
end, false)
