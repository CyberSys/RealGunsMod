--[[- ORGM Rechambered

The core ORGM table of ORGM Rechambered.

All functions and tables can be accessed via the global table named ORGM.
This mod's core philosophy is to place as little as possible in the global
namespace for performance reasons as Zomboid's lua global namespace is already
heavily polluted.
Because of this, you should always pull the ORGM table (or it's sub-tables)
into the local namespace.

    local ORGM = ORGM

## Example
    -- pull tables into local namespace
    local ORGM = ORGM
    local Firearm = ORGM.Firearm
    local Cylinder = ORGM.ReloadableWeapon.Cylinder
    local Hammer = ORGM.ReloadableWeapon.Hammer

    -- Spin the cylinder and cock the hammer for a IsoPlayer.
    local function spinAndCock(playerObj)
        local item = Firearm.getFirearm(playerObj)
        if not item return end
        -- check if its rotary fed
        if not Firearm.isRotary(item) then return end
        -- rotate the cylinder
        Cylinder.rotate(item:getModData(), nil, playerObj, true, item)
        -- Can't cock a double action only
        if Firearm.Hammer.isDAO() then return end
        Hammer.cock(item:getModData(), playerObj, true, item)
    end

@module ORGM
@release 4
@author Fenris_Wolf
@copyright 2018

]]

-- Functions are not listed in this file, they are loaded into it by the other files in the mod.

local ORGM = { }
ORGM.Config = require('!ORGM/OrgmConfig')
ORGM.Callbacks = require('!ORGM/OrgmCallbacks')

local Const = require(ENV_RFF_PATH .. 'constants')

ORGM.Firearm = require(ENV_RFF_PATH .. 'firearm/init')
ORGM.Ammo = require(ENV_RFF_PATH .. 'ammo/init')
ORGM.Component = require(ENV_RFF_PATH .. 'component/init')
ORGM.Magazine = require(ENV_RFF_PATH .. 'magazine/init')
ORGM.Malfunctions = require(ENV_RFF_PATH .. 'malfunctions')
ORGM.Logger = require(ENV_RFF_PATH .. 'interface/logger')


  
--- Modules
-- @section Modules

--- Contains all ORGM server-side functions, see: `ORGM.Server`
ORGM.Server = { }
ORGM.Server.Spawn = { }
ORGM.Server.Spawn.RoomHandlers = { }
ORGM.Server.CommandHandler = { }
ORGM.Server.Callbacks = { }

--- Contains all ORGM client-side functions, see: `ORGM.Client`.
ORGM.Client = { }
ORGM.Client.CommandHandler = { }
ORGM.Client.Callbacks = { }
ORGM.Client.Menu = { }


--- Contains all maintance functions, see: `ORGM.Maintance`.
ORGM.Maintance = { }



--[[
--- Constants
-- @section Constants

--- Author of the mod.
ORGM.AUTHOR = "Original mod by ORMtnMan, Rechambered by Fenris_Wolf"
]]

--- this table is used to track build #'s for backwards compatibility. All guns will be stamped with a index
-- number - the build it was last used in. A table exists changes to firearms (name = buildnumber). If the
-- gun build id < lastChanged build id then the gun needs to be reset to default values (fixed for the
-- new version.)
ORGM.BUILD_HISTORY = {
    "2.00-alpha", "2.00-beta-rc1", "2.00-beta-rc2", "2.00-beta-rc3", "2.00-beta-rc4", "2.00-beta-rc5", "2.00-beta-rc6", -- 7
    "2.00-stable", "2.01-stable", "2.02-stable", "2.03-stable", -- 11
    "3.00-alpha", "3.00-beta-rc1", "3.00-beta-rc2", "3.00-stable", "3.01-stable", "3.02-stable", "3.03-stable","3.04-stable","3.05-stable",-- 20
    "3.06-stable", "3.07-beta", "3.07-stable", "3.08-stable", -- 24
    "3.09-beta-rc1", "3.09-stable", "3.09.1-stable", "3.09.2-stable", -- 28
    "4.00-alpha", -- 29
}
--- Set automatically. The current version number.
ORGM.BUILD_ID = #ORGM.BUILD_HISTORY

--- tooltip Constants
-- @section ToolTipStyle
Const.TIPFULL = 1
Const.TIPDYNAMIC = 2
Const.TIPCLASSIC = 3
Const.TIPNUMERIC = 4

--- String Tables
-- @section StringTable

--- Contains string names for actionType constants.
ORGM.ActionTypeStrings = {"Auto", "Bolt", "Lever", "Pump", "Break", "Rotary"}

--- Contains string names for triggerType constants.
ORGM.TriggerTypeStrings = {"SingleAction", "DoubleAction", "DoubleActionOnly"}

--- Contains string names for autoType constants.
ORGM.AutoActionTypeStrings = {"Blowback", "Delayed Blowback", "Short Gas Piston", "Long Gas Piston", "Direct Impingement Gas", "Long Recoil", "Short Recoil"}


--- @section end

ORGM.Logger.info("ORGM Rechambered Core Loaded v" .. ORGM.BUILD_HISTORY[ORGM.BUILD_ID])
if getModInfoByID("ORGM") then 
    ORGM.Logger.info("Workshop ID is "..tostring(getModInfoByID("ORGM"):getWorkshopID()))
end

return ORGM
