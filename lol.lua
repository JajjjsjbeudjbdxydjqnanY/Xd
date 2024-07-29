local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
local authorizedClientIds = {
 "31003434-1542-4ce5-a238-461898a0bd95",
 "7217cdd8-63db-414c-baf2-9c2ff6ec6711",
 "0bb003b6-7c0e-4d91-8946-dee3cbec4ef4",
 "88431caa-4d05-4d6e-ac93-3596f6c8f598",
 "4a880ab2-a9ed-431c-8172-b65b775662f7",
 "4e77904c-2994-4acc-9f9d-3c24415c3360",
 "4d7e39f7-7e3d-40cf-b090-41246ce1487a",
 "cd0f13b9-ccab-49c0-abae-80f8d4ba4da4",
 "13bb61c1-d6da-48ec-a2c0-0f6c65dc0399",
 "0a2976c7-0710-4515-9188-045acf3f16b6",
 "ec6cf697-a35b-4a4a-af95-e5c97a076775",
 "05748bdd-3a4e-42d3-adc5-93eb5dc8e4c6",
 "60aa080a-de73-4677-9cc7-516bc5e79ea1",
 "cfadb7c1-9871-438f-bb6e-391194f87895",
 "54783e61-b194-4314-a1a3-ae21ad33b67e"
}
if table.find(authorizedClientIds, hwid) then
 local LOAD_TIME = tick()
local queueonteleport = queue_on_teleport or queueonteleport
local setclipboard = toclipboard or setrbxclipboard or setclipboard
local clonefunction = clonefunc or clonefunction
local hookfunction =
	hookfunc or replacecclosure or detourfunction or replacefunc or replacefunction or replaceclosure or detour_function or
	hookfunction
local setthreadidentity = set_thread_identity or setthreadcaps or setthreadidentity
local firetouchinterests = fire_touch_interests or firetouchinterests
local getnamecallmethod = get_namecall_method or getnamecallmethod
local setnamecallmethod = set_namecall_method or setnamecallmethod
local restorefunction = restorefunction or restoreclosure or restorefunc

local a = Instance.new("Part")
for b, c in pairs(getreg()) do
	if type(c) == "table" and #c then
		if rawget(c, "__mode") == "kvs" then
			for d, e in pairs(c) do
				if e == a then
					getgenv().InstanceList = c;
					break
				end
			end
		end
	end
end
local f = {}
function f.invalidate(g)
	if not InstanceList then
		return
	end
	for b, c in pairs(InstanceList) do
		if c == g then
			InstanceList[b] = nil;
			return g
		end
	end
end
if not cloneref then
	getgenv().cloneref = f.invalidate
end

getrenv().Visit = cloneref(game:GetService("Visit"))
getrenv().MarketplaceService = cloneref(game:GetService("MarketplaceService"))
getrenv().HttpRbxApiService = cloneref(game:GetService("HttpRbxApiService"))
getrenv().HttpService = cloneref(game:GetService("HttpService"))
local CoreGui = cloneref(game:GetService("CoreGui"))
local ContentProvider = cloneref(game:GetService("ContentProvider"))
local RunService = cloneref(game:GetService("RunService"))
local Stats = cloneref(game:GetService("Stats"))
local Players = cloneref(game:GetService("Players"))
local NetworkClient = cloneref(game:GetService("NetworkClient"))
local VirtualUser = cloneref(game:GetService("VirtualUser"))
local ProximityPromptService = cloneref(game:GetService("ProximityPromptService"))
local Lighting = cloneref(game:GetService("Lighting"))
local AssetService = cloneref(game:GetService("AssetService"))
local TeleportService = cloneref(game:GetService("TeleportService"))
local NetworkSettings = settings().Network
local UserGameSettings = UserSettings():GetService("UserGameSettings")
getrenv().getgenv = clonefunction(getgenv)

getgenv().stealth_call = function(script)
	getrenv()._set = clonefunction(setthreadidentity)
	local old
	old = hookmetamethod(game, "__index", function(a, b)
		task.spawn(function()
			_set(7)
			task.wait(0.1)
			local went, error = pcall(function()
				loadstring(script)()
			end)
			print(went, error)
			if went then
				local check = Instance.new("LocalScript")
				check.Parent = Visit
			end
		end)
		hookmetamethod(game, "__index", old)
		return old(a, b)
	end)
end

local function touch(x)
	x = x:FindFirstAncestorWhichIsA("Part")
	if x then
		if firetouchinterest then
			task.spawn(function()
				firetouchinterest(x, Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), 1)
				wait()
				firetouchinterest(x, Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), 0)
			end)
		end
		x.CFrame = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
	end
end

for i, v in pairs(game.RobloxReplicatedStorage:GetDescendants()) do
	pcall(function()
		v:Destroy()
	end)
end

task.spawn(function()	
	local discord = loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

	local win = discord:Window("rdx222 sniper🚀", "http://www.roblox.com/asset/?id=17247294032")
	local serv = win:Server("ugc sniper", "http://www.roblox.com/asset/?id=17247294032")
	local main = serv:Channel("Main")

local sniper2 = serv:Channel("Other Snipers")

local remotes = serv:Channel("Remotes")

local ugc = serv:Channel("Ugc")

 local tools = serv:Channel("Tools")



	main:Toggle("Start Sniper 🤑", false, function(bool)
		if bool then
			getrenv()._set = clonefunction(setthreadidentity)
			local old
			old = hookmetamethod(game, "__index", function(a, b)
				task.spawn(function()
					_set(7)
					task.wait()
					getgenv().promptpurchaserequestedv2 = MarketplaceService.PromptPurchaseRequestedV2:Connect(
					function(...)
						local startTime = tick()
						t = {...}
						local assetId = t[2]
						local idempotencyKey = t[5]
						local purchaseAuthToken = t[6]
						local info = MarketplaceService:GetProductInfo(assetId)
						local productId = info.ProductId
						local price = info.PriceInRobux
						local collectibleItemId = info.CollectibleItemId
						local collectibleProductId = info.CollectibleProductId
						print("Double checking if we got the right info...")
						print("PurchaseAuthToken: " .. purchaseAuthToken)
						print("IdempotencyKey: " .. idempotencyKey)
						print("CollectibleItemId: " .. collectibleItemId)
						print("CollectibleProductId: " .. collectibleProductId)
						print("ProductId (SHOULD BE 0): " .. productId)
						print("Price: " .. price)
						print("-------------------------------------------------------")
						warn("FIRST PURCHASE ATTEMPT")
						for i, v in pairs(MarketplaceService:PerformPurchase(Enum.InfoType.Asset, productId, price,
							tostring(game:GetService("HttpService"):GenerateGUID(false)), true, collectibleItemId,
							collectibleProductId, idempotencyKey, tostring(purchaseAuthToken))) do
							print(i, v)
						end
						local endTime = tick()
						local duration = 0
						print("Bought Item! Took " .. tostring(duration) .. " seconds")
						local input = loadstring(game:HttpGet('https://pastebin.com/raw/dYzQv3d8'))()
						input.press(Enum.KeyCode.F9)
					end)
				end)
				hookmetamethod(game, "__index", old)
				return old(a, b)
			end)
		else
			getgenv().promptpurchaserequestedv2:Disconnect()
		end
	end)

	-- Nuevo toggle agregado debajo de "Ugc sniper"
	local autoClickActive = false
	main:Toggle("Ugc Sniper v2 (auto clicker) 💫", false, function(bool)
		autoClickActive = bool

		if autoClickActive then
			task.spawn(function()
				local player = game.Players.LocalPlayer
				local screenSize = game:GetService("GuiService"):GetScreenResolution(Enum.RenderPriority.First)
				local centerX = screenSize.X / 2 + 150
				local centerY = screenSize.Y / 2 + 120

				while autoClickActive do
					game:GetService("VirtualInputManager"):SendMouseButtonEvent(centerX, centerY, 0, true, game, 1)
					wait(0.000000000000000000000001)
					game:GetService("VirtualInputManager"):SendMouseButtonEvent(centerX, centerY, 0, false, game, 1)
					wait(0.000000000000000000000001)
				end
			end)
		end
	end)



	local ClickingSpeed = 0
	local loopActive = false

	local actic = false
	main:Toggle("Auto Close Error", false, function(bool)
		actic = bool
		if actic then
			while actic do
				local pp = game.CoreGui.PurchasePrompt.ProductPurchaseContainer.Animator:FindFirstChild("Prompt")
				if pp and pp.AlertContents and pp.AlertContents.Footer and pp.AlertContents.Footer.Buttons and not pp.AlertContents.Footer.Buttons:FindFirstChild("2") then
					if pp.AlertContents.Footer.Buttons:FindFirstChild("1") then
						local b1 = pp.AlertContents.Footer.Buttons[1].AbsolutePosition
						game:GetService("VirtualInputManager"):SendMouseButtonEvent(b1.X + 55, b1.Y + 65.5, 0, true, game, 1)
						wait()
						game:GetService("VirtualInputManager"):SendMouseButtonEvent(b1.X + 55, b1.Y + 65.5, 0, false, game, 1)
					end
				end
				wait()
				
				if actic == false then
					break
				end
			end
		end
	end)

main:Button("Auto Close Robux", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/OneCreatorX/OneCreatorX/main/Scripts/Generales/AutoC.lua"))()
	end)

main:Button("Hide Player 🕳️", function()
				_G.Fu = true
while _G.Fu and  task.wait() do

for i,v in pairs(game.Players:GetPlayers()) do
if v.Name ~= game.Players.LocalPlayer.Name and v.Character then
v.Character:Destroy()
end
end
end
	end)


    sniper2:Label(
        "Rdx Sniper no prompt needed and basically instant, like  xolo, death sniper and mewt ")
    local snipeid = 123456789
   sniper2:Textbox("Enter the Id of the item you want Snipe", "Enter a UGC Item Id...", false, function(t)
        snipeid = tonumber(t)
    end)
    local snpespeed = 0.15
    sniper2:Textbox("Enter the Speed of the Sniper", "Enter a Speed...", false, function(t)
        snpespeed = tonumber(t)
    end)
    local buylimit = 1
    local amountbought = 0
    sniper2:Textbox("Enter the Buy Limit!", "Enter a Limit...", false, function(t)
        buylimit = tonumber(t)
    end)
    local freecheck = false
    sniper2:Toggle("Check if its free", freecheck, function(bool)
        freecheck = bool
    end)
    local booleanbooby
    local info
    local xd = 0
    local breakLoopp = false
    sniper2:Toggle("Enable Rdx Sniper (No Prompt Needed)", false, function(bool)
        amountbought = 0
        booleanbooby = bool
        breakLoopp = false
        if booleanbooby == true then
            xd = 0
            info = game:GetService("MarketplaceService"):GetProductInfo(snipeid)
            local output = ""
            if type(info) == "table" then
                for i, v in pairs(info) do
                    if type(v) ~= "table" then
                        output = output .. tostring(i) .. ": " .. tostring(v) .. "\n"
                    end
                    if type(v) == "table" then
                        for x, d in pairs(v) do
                            output = output .. tostring(x) .. ": " .. tostring(d) .. "\n"

                        end
                    end
                end
            end
            discord:Notification("Rdx Sniper Started!", "Information Grabbed:\n" .. tostring(output), "Close!")
        end
        while booleanbooby == true and not breakLoopp do
            info = game:GetService("MarketplaceService"):GetProductInfo(snipeid)
            pcall(function()
                xd = xd + 1
                print("Sniping! Checks: " .. tostring(xd))
                if info.IsForSale == true then
                    local starttickxd = tick()
                    local data = '{"collectibleItemId":"' .. tostring(info.CollectibleItemId) ..
                                     '","collectibleProductId":"' .. tostring(info.CollectibleProductId) ..
                                     '","expectedCurrency":1,"expectedPrice":' .. tostring(info.PriceInRobux) ..
                                     ',"idempotencyKey":"' ..
                                     tostring(game:GetService("HttpService"):GenerateGUID(false)) ..
                                     '","expectedSellerId":' .. tostring(info.Creator.Id) .. ',"expectedSellerType":"' ..
                                     tostring(info.Creator.CreatorType) ..
                                     '","expectedPurchaserType":"User","expectedPurchaserId":' ..
                                     tostring(game.Players.LocalPlayer.UserId) .. '}'
                    print(data)
                    -- setclipboard(data)
                    if freecheck == true then
                        if info.PriceInRobux == 0 then
                            _post("https://apis.roblox.com/marketplace-sales/v1/item/" ..
                                      tostring(info.CollectibleItemId) .. "/purchase-item", data);
                            amountbought = amountbought + 1
                        end
                    else
                        _post(
                            "https://apis.roblox.com/marketplace-sales/v1/item/" .. tostring(info.CollectibleItemId) ..
                                "/purchase-item", data);
                        amountbought = amountbought + 1
                    end
                    wait();
                    local endtickxd = tick()
                    local durationxd =  endtickxd- starttickxd
                    print("Bought Item! Took " .. tostring(durationxd) .. " seconds")
                    task.wait(1);
                end
            end)
            if amountbought >= buylimit then
                breakLoopp = true
            end
            task.wait(snpespeed)
        end
     end)



ugc:Textbox(
    "Item stock (view console) by rdx222",
    "put item id",
    true,
    function(itemId)
        local url = "https://rblx.zanixon.my.id/api/catalog/item?id=" .. itemId
        local response = game:HttpGet(url)
        
        local data = game:GetService("HttpService"):JSONDecode(response)
        
        if data.status then



print("Name: " .. tostring(data.data.name))

            print("Stock: " .. tostring(data.data.unitsAvailableForConsumption))
            print("Total Stock: " .. tostring(data.data.totalQuantity))

print("Limit per user: " .. tostring(data.data.quantityLimitPerUser))
print("-------------------------------------")
        else
            print("Failed to retrieve data or invalid item ID")
        end
    end
)


ugc:Seperator()


ugc:Label("\nFake Prompts")
ugc:Label("This prompts a UGC item but buying it will error.")
ugc:Textbox("Enter the Id of the item you wanna prompt!", "Enter a UGC Item Id...", true, function(t)
local tt = tonumber(t)
if type(tt) == "number" then
local info = MarketplaceService:GetProductInfo(tt)
local CollectibleProductId = info.CollectibleProductId
local CollectibleItemId = info.CollectibleItemId
local Price = info.PriceInRobux
getrenv()._set = clonefunction(setthreadidentity)
local old old = hookmetamethod(game, "__index", function(a, b) task.spawn(function() _set(7) task.wait()
-- MarketplaceService:PromptCollectiblesPurchase(Players.LocalPlayer, tt, CollectibleItemId, '', CollectibleProductId, Price)
MarketplaceService:PromptPurchase(Players.LocalPlayer, tt)
end) hookmetamethod(game, "__index", old) return old(a, b) end)
task.wait(0.2)
pcall(function() Visit:FindFirstChild("LocalScript"):Destroy() end)
else
discord:Notification("Error", "You must enter an Item ID.", "Okay!")
end
end)

ugc:Seperator()

ugc:Toggle("Anti Afk 🌙💤", false, function(bool)
					if bool == true then
						Players.LocalPlayer.Idled:connect(function()
							VirtualUser:CaptureController()
							VirtualUser:ClickButton2(Vector2.new())
						end)
					end
				end)


ugc:Button("Low Server", function()
        local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"

local _place = game.PlaceId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
function ListServers(cursor)
   local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
   return Http:JSONDecode(Raw)
end

local Server, Next; repeat
   local Servers = ListServers(Next)
   Server = Servers.data[1]
   Next = Servers.nextPageCursor
until Server

TPS:TeleportToPlaceInstance(_place,Server.id,game:GetService('Players').LocalPlayer)
    end)

ugc:Button("Teleport Avento Ugc Sniper", function()
        TeleportService:Teleport(16068855539, Players.LocalPlayer)
    end)
   

remotes:Label("\nFires all remotes in the game as an attempt to prompt the item.\nWarning: This can be risky and can fire a decoy remote!\n")
remotes:Textbox("UGC Limited Item ID", "Enter Item ID that you wanna be included in the arguments...", true, function(t)
local tt = tonumber(t)
if type(tt) == "number" then
getgenv().limitedidforfiringremotewithwyvern = tt
discord:Notification("Success", "The script now remembers that the Item ID = " .. tostring(tt) .. "!", "Okay!")
else
discord:Notification("Error", "That's... not an Item ID.", "Okay!")
end
end)
remotes:Dropdown("Remote Arguments...",{"No Arguments/Blank","LocalPlayer","Your Username","UGC Item ID","UGC Item ID, LocalPlayer","LocalPlayer, UGC Item ID","'UGC' as a string","UGC Item ID, 'true' boolean","'true' boolean","literal lua code to prompt item","loadstring prompt item"}, function(x)
if not getgenv().limitedidforfiringremotewithwyvern then
discord:Notification("Error", "You must put a Limited Item ID at the first textbox before firing... Or just set it to blank if you're using this not for the purpose of UGC hunting.", "Okay!")
else
local id = getgenv().limitedidforfiringremotewithwyvern
local fire = function(args)
local count = 0
for i, v in pairs(game:GetDescendants()) do
if v:IsA("RemoteEvent") or v:IsA("UnreliableRemoteEvent") then
count = count + 1
task.spawn(function() v:FireServer(args) end)
elseif v:IsA("RemoteFunction") then
count = count + 1
task.spawn(function() v:InvokeServer(args) end)
end
end
discord:Notification("Success", "Fired " .. count .. " RemoteEvents and RemoteFunctions!", "Okay!")
end
local _fire = function(args, args2)
local count = 0
for i, v in pairs(game:GetDescendants()) do
if v:IsA("RemoteEvent") or v:IsA("UnreliableRemoteEvent") then
count = count + 1
task.spawn(function() v:FireServer(args, args2) end)
pcall(function() v:FireServer(args, args2) end)
elseif v:IsA("RemoteFunction") then
count = count + 1
task.spawn(function() v:InvokeServer(args, args2) end)
end
end
discord:Notification("Success", "Fired " .. count .. " RemoteEvents and RemoteFunctions", "Okay!")
end
if x == "No Arguments/Blank" then
fire(" ")
elseif x == "LocalPlayer" then
fire(game.Players.LocalPlayer)
elseif x == "Your Username" then
fire(tostring(game.Players.LocalPlayer))
elseif x == "UGC Item ID" then
fire(id)
elseif x == "UGC Item ID, LocalPlayer" then
_fire(id, game.Players.LocalPlayer)
elseif x == "LocalPlayer, UGC Item ID" then
_fire(game.Players.LocalPlayer, id)
elseif x == "'UGC' as a string" then
fire("UGC")
elseif x == "UGC Item ID, 'true' boolean" then
_fire(id, true)
elseif x == "'true' boolean" then
fire(true)
elseif x == "literal lua code to prompt item" then
fire('game:GetService("MarketplaceService"):PromptPurchase(game.Players.' .. tostring(game.Players.LocalPlayer) .. ', ' .. tostring(id) .. ')')
elseif x == "loadstring prompt item" then
fire('loadstring(`game:GetService("MarketplaceService"):PromptPurchase(game.Players.' .. tostring(game.Players.LocalPlayer) .. ', ' .. tostring(id) .. ')`)()')
end
end
end)
remotes:Seperator()
remotes:Label("\nThis will block client communication with the server.\nUseful for bypassing clientsided anticheats!\n")
remotes:Toggle("Block All RemoteEvents and RemoteFunctions", false, function(bool)
if bool then
local Methods = {
    "FireServer",
    "fireserver",
    "InvokeServer",
    "invokeserver",
    "Fire",
    "fire",
    "Invoke",
    "invoke"
}

getgenv().Toggleblock = true
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", newcclosure(function(...)
local Self = ...
if table.find(Methods, getnamecallmethod()) then
if Toggle and Self then
return
end
end
return OldNameCall(...)
end))
else
getgenv().Toggleblock = false
end
end)



tools:Button("just a script (ikura0)", function()
        loadstring(Game:HttpGet("https://raw.githubusercontent.com/JustAScripts/UniversalScript/Ikura/StopExploting"))()
    end)

tools:Button("adonis check (ikura0)", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAScripts/Favorable/main/AdonisChecker.Lua",true))()
end)

tools:Button("Infinite yield", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
