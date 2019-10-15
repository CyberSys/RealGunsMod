--[[- Command Handler Functions.

These are triggered by `ORGM.Server.Callbacks.clientCommand` in response to a
OnClientCommand event.

It is unlikely that you will need to call any of these functions manually.

@module ORGM.Server.CommandHandler
@author Fenris_Wolf
@release v4.0-alpha
@copyright 2018

]]
local Config = require(ENV_RFF_PATH .. 'config')
local Logger = require(ENV_RFF_PATH .. 'interface/logger')
local CommandHandler = {}
--[[- Callback for the "requestSettings" client command.

Sends a server command telling the clients to update their ORGM.Settings table with the server's version.

@tparam IsoPlayer player object that sent the command.
@tparam variable args data to be passed onto the command call.

]]
CommandHandler.requestSettings = function(player, args)
    Logger.info("Sending Settings to ".. (player and player:getUsername() or ""))
    sendServerCommand('orgm', 'updateSettings', Config.getSettingsTable())
end

return CommandHandler
