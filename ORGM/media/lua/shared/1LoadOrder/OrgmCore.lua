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
@release 3.10
@author Fenris_Wolf.
@copyright 2018 **File:** shared/1LoadOrder/ORGMCore.lua

]]

-- Functions are not listed in this file, they are loaded into it by the other files in the mod.

ORGM = { }
ENV_RFF_PATH = 'rff'
local RFF = require('rff/init')
local Config = require('rff/Config')
local Const = require('rff/Const')

ORGM.Firearm = require('rff/firearm/init')
ORGM.Ammo = require('rff/ammo/init')
ORGM.Component = require('rff/component/init')
ORGM.Magazine = require('rff/magazine/init')
ORGM.Malfunctions = require('rff/malfunctions')
ORGM.Logger = require('rff/interface/logger')

  
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

--- Contains all callback functions, see: `ORGM.Callbacks`.
ORGM.Callbacks = { }


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


Config.add("RemoveBaseFirearms", {type='boolean', default=true})
Config.add("DamageMultiplier", {type='float', min=0.1, default=0.6})
Config.add("DefaultHitChance", {type='integer', min=0, max=100, default=40})
Config.add("DefaultAimingHitMod", {type='integer', min=0, max=100, default=7})
Config.add("DefaultCriticalChance", {type='integer', min=0, max=100, default=20})
Config.add("DefaultAimingCritMod", {type='integer', min=0, max=100, default=10})
Config.add("LimitYear", {type='integer', min=0, default=0, nilAllowed=true })
Config.add("DisableFullAuto", {type='boolean', default=false})
Config.add("ToolTipStyle", {type='integer', min=1, max=4, default=1})
Config.add("Debug", {type='boolean', default=false, show=false})

--- @section end

Logger.info("ORGM Rechambered Core Loaded v" .. ORGM.BUILD_HISTORY[ORGM.BUILD_ID])
if getModInfoByID("ORGM") then 
    Logger.info("Workshop ID is "..tostring(getModInfoByID("ORGM"):getWorkshopID()))
end
