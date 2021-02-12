ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--color variables-- (all color codes are in DECIMAL)
local blue = "55807"
local red = "16711680"
local yellow = "16776960"
local orange = "16740096"
local green = "32768"
local limeGreen = "3329330"
local black = "000000"
local grey = "8421504" 




--embed variables--
local text = "By Wave Designs©🌊" --optional

local imageURL = "https://cdn.discordapp.com/attachments/738870917316214875/809789473848033340/Wave-3D.gif" --image for your embed (optional)

local message = "\n**Connect: F8 & 127.0.0.1**\n" --the text (description) of the server up message 

local title = "**SERVER UP**" --the title of the embed

local webhook = "https://discord.com/api/webhooks/809810861430013963/zMVF48uw7OeiV7WRP3jFw-017Wj4xUbM3jcGJ8B4ObVqTNZsdpYYLeoQOInpR5jf8oxH"

local serverUPmsg = "" --the serverup message set it as you want

local botName = "Wave Designs" -- the name of the bot
AddEventHandler('onResourceStart', function(resource)
    local description = {
        {
            ["color"] = blue, 
            ["title"] = title,
            ["description"] = message,
            ["thumbnail"] = {
                ["url"] = imageURL,
            },
            ["footer"] = {
                ["text"] = text,
            }
        },
    }
	if resource == GetCurrentResourceName() then
        Citizen.Wait(1000)
        PerformHttpRequest(webhook, function (err, text, headers) end, 'POST', json.encode({username = botName, content = serverUPmsg, embeds = description}), { ['Content-Type'] = 'application/json' })
    end
end)

--I.G ο λόγος που "παίζω" με vars (local = ...) ειναι για την ασφάλεια του script στο server side (no dumping) και οχι σε φαση (Config)για την υποκλοπη του webhook και μπει καποιο spam bot--
