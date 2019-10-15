--[[- Command Handler Functions.

These are triggered by `ORGM.Client.Callbacks.serverCommand` in response to a
OnServerCommand event.

It is unlikely that you will need to call any of these functions manually.

@module ORGM.Client.CommandHandler
@author Fenris_Wolf
@release v3.09
@copyright 2018 **File:** server/1LoadOrder/ORGMClientCommands.lua

]]

local Logger = require(ENV_RFF_PATH .. "interface/logger") 
local Config = require(ENV_RFF_PATH .. "config")
local CommandHandler = {}

local pairs = pairs
local tostring = tostring

--[[- Callback for the "updateSettings" server command.

@tparam variable args data to be passed onto the command call.

]]

CommandHandler.updateSettings = function(args)
    Config.applyTempSetting(args)
end


return CommandHandler
