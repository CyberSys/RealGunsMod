--[[- Callback Functions.

All events are hooked in `ORGMServerEvents.lua` and call these functions.

It is unlikely that you will need to call any of these functions manually.

@module ORGM.Server.Callbacks
@author Fenris_Wolf
@release v3.09
@copyright 2018 **File:** server/1LoadOrder/ORGMServerCallbacks.lua

]]
local Callbacks = {}
local CommandHandler = require("!ORGM/OrgmServerCommands")
local table = table


local tostring = tostring
local ipairs = ipairs
local pairs = pairs
local isServer = isServer

Callbacks.removeBaseFirearms = function()

end


--[[- Loads any compatibility patches.

Triggered on the OnDistributionMerge event.

]]
Callbacks.loadPatches = function()
    -- nothing to do here
    ORGM.log(ORGM.INFO, "All server compatibility patches injected")
end

--[[- Calls functions that need to be checked when onKeyPressed is triggered.

]]
Callbacks.keyPress = function(key)
    Server.itemBindingHandler(key)
end


Callbacks.onFillContainer = function(roomName, containerType, container)
    Server.Spawn.fillContainer(roomName, containerType, container)
end

--[[- Handles command requests from the clients in MP.

Triggered by the OnClientCommand event.

If the module name is 'orgm'
and the `ORGM.Server.CommandHandler` has a function with the name that
matches the command string argument, it calls that function.

@tparam string module name of the command module.
@tparam string command name of the command to run.
@tparam IsoPlayer player player that sent the command.
@tparam variable args data to be passed onto the command call.

]]
Callbacks.clientCommand = function(module, command, player, args)
    --print("Server got command: "..tostring(module)..":"..tostring(command).." - " ..tostring(isServer()))
    if not isServer() then return end
    if module ~= "orgm" then return end
    ORGM.log(ORGM.INFO, "Server got ClientCommand "..tostring(command))
    if CommandHandler[command] then CommandHandler[command](player, args) end
end


Events.OnPostDistributionMerge.Add(Callbacks.removeBaseFirearms)
Events.OnFillContainer.Add(Callbacks.onFillContainer)
Events.OnDistributionMerge.Add(Callbacks.loadPatches)
-- remove PZ's default itemBindingHandler
Events.OnKeyPressed.Remove(ItemBindingHandler.onKeyPressed)
Events.OnKeyPressed.Add(Callbacks.keyPress)
Events.OnClientCommand.Add(Callbacks.clientCommand)

return Callbacks
