--[[- Callback functions for various shared events.

All events are hooked in `ORGMEvents.lua` and call these functions.
It is unlikely that you will need to call any of these functions manually.


@module ORGM.Callbacks
@copyright 2018
@author Fenris_Wolf
@release 4.0

]]
local Logger = require(ENV_RFF_PATH .. 'interface/logger')

local Callbacks = { }

--[[- Checks the values in the ORGM.Settings table and ensures they conform to expected values.

For invalid values it will set to defaults and logs errors.

This is triggered by Events.OnGameBoot.

]]
Callbacks.readConfigFile = function()
    Config.readConfig()
end



--[[- Loads any shared compatibility patches for mods.

This is triggered by Events.OnGameBoot.

]]
Callbacks.loadPatches = function()
    Logger.info("Event: All shared patches injected")
end

--[[- Sets up any backwards compatibility patches.

This is triggered by Events.OnGameBoot.

]]
Callbacks.loadBackPatches = function()
end

--[[- Injects any overwrite functions

This is triggered by Events.OnGameBoot.

]]
Callbacks.loadOverWrites = function()
    -- clear out the old reload manager hooks.
    Events.OnPlayerUpdate.Remove(aaa.startRackingHook);
    Events.OnPlayerUpdate.Remove(aaa.startReloadHook); -- no point adding 2 events OnPlayerUpdate, a single one will do :P

    Hook.Attack.Remove(aaa.checkLoadedHook);
--    Hook.Attack.Add(Manager.attack)

    Events.OnWeaponSwingHitPoint.Remove(aaa.fireShotHook);
--    Events.OnWeaponSwingHitPoint.Add(Manager.fire)
end

return Callbacks
