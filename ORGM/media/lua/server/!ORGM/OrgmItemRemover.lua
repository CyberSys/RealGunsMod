
local ItemRemover = {}

require 'Items/SuburbsDistributions'
require 'Items/Distributions'

local RemoveTable = {
    "Pistol", "Shotgun", "Sawnoff", "VarmintRifle", "HuntingRifle",
    "Bullets9mm", "ShotgunShells", "223Bullets", "308Bullets",
    "BulletsBox", "ShotgunShellsBox", "223Box", "308Box",
    "HuntingRifleExtraClip", "IronSight", "x2Scope", "x4Scope", "x8Scope",
    "AmmoStraps", "Sling", "FiberglassStock", "RecoilPad", "Laser",
    "RedDot", "ChokeTubeFull", "ChokeTubeImproved"
}


local removeFromThisTable = function(thisTable)
    local index=1
    while index <= #thisTable do
        local thisItem = thisTable[index]
        local removed = false
        for _, removeItem in ipairs(RemoveTable) do
            if thisItem == removeItem or thisItem == "Base." .. removeItem then
                ORGM.log(ORGM.VERBOSE, "Spawn: Removing  " .. tostring(thisItem))
                table.remove(thisTable, index)
                table.remove(thisTable, index)
                removed = true
                break
            end
        end
        if not removed then
            index = index + 1
        end
    end
end

local recurseTable = function(thisTable, keys)
    for _, key in ipairs(keys) do
        if not thisTable[key] then return nil end
        thisTable = thisTable[key]
    end
    return thisTable
end
--[[- Removes vanilla firearms and ammo from the Distributions tables.

Triggered on the OnPostDistributionMerge event if ORGM.Settings.RemoveBaseFirearms is true

]]
ItemRemover.removeBaseFirearms = function()
    if not ORGM.Settings.RemoveBaseFirearms then return end

    for roomName, room in pairs(SuburbsDistributions) do
        ORGM.log(ORGM.VERBOSE, "Spawn: Removing Distributions for " .. tostring(roomName))
        if room.items ~= nil then
            removeFromThisTable(room.items)
        else
            for containerName, container in pairs(room) do
                if container.items ~= nil then
                    ORGM.log(ORGM.VERBOSE, "Spawn: Removing from " .. tostring(containerName))
                    removeFromThisTable(container.items)
                end
            end
        end
    end

    if VehicleDistributions then
        -- recursive table levels to look for vanilla guns
        local vTables = {
            {'Police','TruckBed','items'},
            {'RangerTruckBed', 'items'},
            {'SurvivalistTruckBed', 'items'},
            {'Seat', 'items'},
            {'GloveBox', 'items'},
            {'MilitaryGear', 'items'},
        }
        for _, vtab in ipairs(vTables) do repeat
            local thisTable = recurseTable(VehicleDistributions, vtab)
            if not thisTable then break end
            ORGM.log(ORGM.VERBOSE, "Spawn: Removing from VehicleDistributions" .. table.concat(vtab, '.'))
            removeFromThisTable(thisTable)
        until true end
    end
end


return ItemRemover
