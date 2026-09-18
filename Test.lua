
local Api = {
    Players = game:GetService("Players"),
    Run = game:GetService("RunService"),
    Uis = game:GetService("UserInputService"),
    Vim = game:GetService("VirtualInputManager"),
    Tween = game:GetService("TweenService"),
    Core = gethui and gethui() or cloneref(game:GetService("CoreGui")),
    Light = game:GetService("Lighting"),
    Http = game:GetService("HttpService"),
    Market = game:GetService("MarketplaceService"),
    Rep = game:GetService("ReplicatedStorage"),
    Text = game:GetService("TextService"),
    Localization = game:GetService("LocalizationService"),

    Player = game:GetService("Players").LocalPlayer,
    Name = game:GetService("Players").LocalPlayer.Name,
    Camera = workspace.CurrentCamera,
    PlaceId = game.PlaceId,

    Mouse = game:GetService("Players").LocalPlayer:GetMouse(),
    Screen = Instance.new("ScreenGui"),

    Mobile = game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").MouseEnabled,
    Executor = identifyexecutor() or getexecutorname() or "Unknown",
    Request = (syn and syn.request) or (psm and psm.request) or request,

    Esp = {},
    Crosshair = {},
    Circle = {},
}

local Load = {
    Notlib = "https://raw.githubusercontent.com/setrawmetatable/Ui/refs/heads/main/Notif",
    Crosshair = "https://raw.githubusercontent.com/setrawmetatable/Extra/refs/heads/main/Crosshair",
    Esp = "https://raw.githubusercontent.com/setrawmetatable/Extra/refs/heads/main/Esp.lua",
    Visual = "https://raw.githubusercontent.com/setrawmetatable/Extra/refs/heads/main/Visual",
}

local Function = {
    {name = "Drawing", present = type(Drawing) == "table" or type(Drawing) == "userdata"},
    {name = "hookmetamethod", present = type(hookmetamethod) == "function"},
    {name = "getnamecallmethod", present = type(getnamecallmethod) == "function"},
    {name = "checkcaller", present = type(checkcaller) == "function"},
    {name = "getgc", present = type(getgc) == "function" and pcall(getgc) and type(getgc()) == "table"},
}

Api.Kick = function(text)
    Api.Player:Kick(text)
    return
end

Api.CheckSupport = function()
    for i, sup in ipairs(Function) do
        if not sup.present then
            Api.Kick("[Executor unsupported] " .. Api.Executor .. " is not supported")
            return false
        end
    end
    return true
end

Api.Random = function()
	local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
	local name = ""
	local lenght = math.random(5, 10)
	for i = 1, lenght do
		local rand = math.random(1, #chars)
		name = name .. string.sub(chars, rand, rand)
	end
	return name
end

Api.Notification = function(text, time)
    Load.Notlib.Notify("<font color='#00BFFF'>" .. text .. "</font>", 3)
end

Api.CheckDevice = function()
    if Api.mobile then
        Api.Kick("[Device unsupported] Mobile is not supported")
        return true
    end
    return false
end

Api.Crash = function()
    while true do
        Instance.new("Part").Parent = workspace
        local function z() z() end
        z()
    end
end

Api.JoinDiscord = function()
    if Api.Request then
        pcall(function()
            Api.Request({
                Url = "http://127.0.0.1:6463/rpc?v=1",
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json",
                    ["Origin"] = "https://discord.com"
                },
                Body = Api.Http:JSONEncode({
                    cmd = "INVITE_BROWSER",
                    args = {code = "Gc5QkQCdFA"},
                    nonce = Api.Http:GenerateGUID(true)
                })
            })
        end)
    end
end

function Api:LoadEsp()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/setrawmetatable/Extra/refs/heads/main/Esp.lua"))()
    -- loadstring(game:HttpGet("https://raw.githubusercontent.com/setrawmetatable/Extra/refs/heads/main/Visual"))()
    if getgenv().Esp then
        Api.Esp = getgenv().Esp
    end
end

function Api:LoadCircle()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/setrawmetatable/Extra/refs/heads/main/Crosshair"))()
    if getgenv().Settings then
        Api.Crosshair = getgenv().Settings.Crosshair
        Api.Circle = getgenv().Settings.Circle
    end
end

return Api
