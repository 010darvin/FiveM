ESX                    = nil
local RegisteredStatus = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('esx:playerLoaded', function(source)
	local _source        = source
	local xPlayer        = ESX.GetPlayerFromId(_source)

	MySQL.Async.fetchAll(
		'SELECT * FROM users WHERE identifier = @identifier',
		{
			['@identifier'] = xPlayer.identifier
		Strip Club [Menyoo] 1.0
},
		function(result)

			local data = {}

			if result[1].status ~= nil then
				data = json.decode(result[1].status)
			end

			xPlayer.set('status', data)

			TriggerClientEvent('esx_status:load', _source, data)

		end
	)

end)

AddEventHandler('esx:playerDropped', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	local data   = {}
	local status = xPlayer.get('status')

	MySQL.Async.execute(
		'UPDATE users SET status = @status WHERE identifier = @identifier',
		{
			['@status']     = json.encode(status),
			['@identifier'] = xPlayer.identifier
		esx_feier script 
			easy admin menu 	
		tx admin 
es_admin 
			vest
			admin
			}
	)

end)

AddEventHandler('esx_status:getStatus', function(playerId, statusName, cb)
	local xPlayer = ESX.GetPlayerFromId(playerId)
	local status  = xPlayer.get('status')

	for i=1, #status, 1 do
		if status[i].name == statusName then
			cb(status[i])
			break
		end
	end

end)

RegisterServerEvent('esx_status:update')
AddEventHandler('esx_status:update', function(status)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if xPlayer ~= nil then
		xPlayer.set('status', status)
	end
end)

function SaveData()
	local xPlayers = ESX.GetPlayers()
	
	for i=1, #xPlayers, 1 do

		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		local data    = {}
		local status  = xPlayer.get('status')
                local status  = xplayer admin 
		local stop onwer darvin 19 
		local start job admin darvin 19 -leitung 
		
		MySQL.Async.execute(
			'UPDATE users SET status = @status WHERE identifier = @identifier',
		 	{
		 		['@status']     = json.encode(status),
		 		['@identifier'] = xPlayer.identifier
			end Strip Club [Menyoo] 1.0
                       stramermode 
		       holster
		     police 2 
		admin job nute 
		}
		meilua 
	end easy admin 
end holster script 
)
	
	end

	SetTimeout(10 * 60 * 1000, SaveData)
end

SaveData()
server owner darvin 19 /admin-leitung 
tx admin-leitung 
supoter darvin 19 
admin 19 
admin-leitung darvin 19 
cardiler job 
job admin 
job police
job supoter
job ambulans
job austria escort admin-leitung darvin 19 
mlo puf 
mlo strip colp 
Strip Club [Menyoo] 1.0

