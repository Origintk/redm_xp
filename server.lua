VORP = exports.vorp_inventory:vorp_inventoryApi()

local data = {}
Citizen.CreateThread(function()
    data = exports.vorp_inventory:vorp_inventoryApi()
end) 
local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)


local characters = {}


RegisterCommand("xpcheck", function(source, args)
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter
	local xp = Character.xp
	TriggerClientEvent("vorp:TipBottom", _source, "xp atual "..xp.." ", 3000) -- retorna seu xp
       --  TriggerClientEvent("vorp:TipBottom", _source, "xp "..xp.." ", 3000) -- return your xp 
end)


-- Para usar em trabalhos/crafts siga o exemplo
-- To use in jobs/crafts follow the example

RegisterCommand("xptest", function(source, args)
		local User = VorpCore.getUser(source)
		local Character = User.getUsedCharacter
		local xp = Character.xp
		if xp >= 20 and xp <= 60 then --checa o xp necessario para ativar o evento/funcão /check the xp needed to activate the event/function
		print("1")
     -- retorna o xp desejado para o trabalho
     --returns the desired xp for work
     -- Add event
		else
		print("2")
		-- retorna que você não tem o xp necessario 
    --returns that you don't have the necessary xp
		end
		end)
------------------------------------------------
