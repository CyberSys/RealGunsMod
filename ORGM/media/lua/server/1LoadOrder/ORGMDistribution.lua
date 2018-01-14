--[[ ORGMDistributions

    This file controls spawning of weapons and ammo.

]]


local Server = ORGM.Server

--[[ AllRoundsTable

    A list of all rounds to use when spawning random ammo
    This table is automatically built on startup from ORGM.AmmoTable
]]
local AllRoundsTable = { }
local AllRepairKitsTable = { }
local AllComponentsTable = { } 
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

--[[ Rnd(maxValue)
    
    Returns a value between 1 and maxValue (including lower and upper values)

]]
local Rnd = function(maxValue)
    return ZombRand(maxValue) + 1;
end


--[[ Server.spawnReloadable(container, itemType, ammoType, spawnChance, maxCount, isLoaded)

    Spawns a reloadable weapon or magazine.  It called by Server.spawnFirearm and Server.spawnMagazine.
    
    container is a ItemContainer object.
    itemType is the name of the gun or magazine (without the ORGM. prefix)
    ammoType is the bullets to load into the gun if isLoaded = true. (A key from ORGM.AmmoTable)
    spawnChance is the % chance to spawn the item.
    maxCount is the max number of items to spawn. A random # is chosen between 1 and maxCount
    isLoaded is true/false. controls if the gun/magazine is loaded with ammoType

    returns false if nothing is spawned, true if the reloadable spawned

]]
Server.spawnReloadable = function(container, itemType, ammoType, spawnChance, maxCount, isLoaded)
    -- ZomboidGlobals.WeaponLootModifier
    -- 0.2 extremely rare, 0.6 rare, 1.0 normal, 2.0 common, 4 abundant
    ORGM.log(ORGM.DEBUG, "Server.spawnReloadable called for " .. itemType .. " with " .. spawnChance .. "% chance.")
    
    if Rnd(100) > math.ceil(spawnChance) then return false end
    local count = Rnd(maxCount)
    
    local itemOrgmData = nil
    local isFirearm = false

    if ORGM.MagazineTable[itemType] then
        isFirearm = false
        itemOrgmData = ORGM.MagazineTable[itemType]
    elseif ORGM.FirearmTable[itemType] then
        isFirearm = true
        itemOrgmData = ORGM.FirearmTable[itemType]
    else
        ORGM.log(ORGM.ERROR, "Tried to spawn reloadable " .. itemType .. " but item is not a registered firearm or magazine.")
        return nil
    end

    
    for i=1, count do
        local additem = ItemPicker.tryAddItemToContainer(container, itemOrgmData.moduleName .. '.' .. itemType)
        if not additem then return false end
        ORGM.log(ORGM.DEBUG, "Spawned " .. itemOrgmData.moduleName .. '.' .. itemType)
        if isFirearm then
            ORGM.setupGun(ReloadUtil:getWeaponData(itemType), additem)
            if isLoaded then additem:setCondition(Rnd(additem:getConditionMax())) end
        else
            ORGM.setupMagazine(ReloadUtil:getClipData(itemType), additem)
        end
        local data = additem:getModData()
        local maxammo = data.maxCapacity
        local fill = 0

        if data.roundChambered ~= nil then
            maxammo = maxammo + 1
        end
        
        if isLoaded then
            if Rnd(100) >= 30*ORGM.Settings.AmmoSpawnModifier then fill = Rnd(maxammo) end 
        end
        
        if fill > 0 then
            if data.roundChambered ~= nil then
                data.roundChambered = 1
                data.lastRound = ammoType
                fill = fill - 1
            end
            
            for i=1, fill do
                data.magazineData[i] = ammoType
            end
            data.currentCapacity = fill
            data.loadedAmmo = ammoType
        end
        if WeaponUpgrades[additem:getType()] then
            ItemPicker.doWeaponUpgrade(additem)
        end

    end
    return true
end


--[[ Server.spawnFirearm(container, gunType, ammoType, spawnChance, maxCount, isLoaded)
    
    A wrapper function for Server.spawnReloadable()

    container is a ItemContainer object.
    gunType is the name of the gun to spawn magazines for (without the ORGM. prefix)
    ammoType is the bullets to load into the gun if isLoaded = true. (A key from ORGM.AmmoTable)
    spawnChance is the % chance to spawn the item.
    maxCount is the max number of items to spawn. A random # is chosen between 1 and maxCount
    isLoaded is true/false. controls if the gun/magazine is loaded with ammoType

    returns nil
    
]]
Server.spawnFirearm = function(container, gunType, ammoType, spawnChance, maxCount, isLoaded)
    spawnChance = spawnChance * ZomboidGlobals.WeaponLootModifier * ORGM.Settings.FirearmSpawnModifier
    Server.spawnReloadable(container, gunType, ammoType, spawnChance, maxCount, isLoaded)
end


--[[ Server.spawnMagazine(container, gunType, ammoType, spawnChance, maxCount, isLoaded)
    
    A wrapper function for Server.spawnReloadable(), spawning magazines for the gun specified by gunType

    container is a ItemContainer object.
    gunType is the name of the gun to spawn magazines for (without the ORGM. prefix)
    ammoType is the bullets to load into the gun if isLoaded = true. (A key from ORGM.AmmoTable)
    spawnChance is the % chance to spawn the item.
    maxCount is the max number of items to spawn. A random # is chosen between 1 and maxCount
    isLoaded is true/false. controls if the gun/magazine is loaded with ammoType

    returns nil
    
]]
Server.spawnMagazine = function(container, gunType, ammoType, spawnChance, maxCount, isLoaded)
    spawnChance = spawnChance * ZomboidGlobals.WeaponLootModifier * ORGM.Settings.MagazineSpawnModifier
    local weaponData = ORGM.FirearmTable[gunType]
    local magType = weaponData.ammoType
    if ORGM.MagazineTable[magType] ~= nil then -- gun uses mags
        Server.spawnReloadable(container, magType, ammoType, spawnChance, maxCount, isLoaded)
    end
    
    local magType = weaponData.speedLoader
    if ORGM.MagazineTable[magType] ~= nil then -- gun uses speedloaders
        Server.spawnReloadable(container, magType, ammoType, spawnChance, maxCount, isLoaded)
    end
    
end


--[[ Server.spawnItem(container, itemType, spawnChance, maxCount)

    Generic spawn function for non-reloadable items (ie: ammo or repair stuff).
    
    container is a ItemContainer object.
    itemType is the name of the item (WITH the module prefix)
    spawnChance is the % chance to spawn the item.
    maxCount is the max number of items to spawn. A random # is chosen between 1 and maxCount
    
    returns nil

]]
Server.spawnItem = function(container, itemType, spawnChance, maxCount)
    ORGM.log(ORGM.DEBUG, "Server.spawnItem called for " .. itemType .. " with " .. spawnChance .. "% chance.")
    if Rnd(100) > math.ceil(spawnChance) then return end
    local count = Rnd(maxCount)
    for i=1, count do
        if not ItemPicker.tryAddItemToContainer(container, itemType) then return end
    end
end


Server.spawnAmmo = function(container, ammoType, spawnChance, maxCount)
    spawnChance = spawnChance * ZomboidGlobals.WeaponLootModifier * ORGM.Settings.AmmoSpawnModifier
    Server.spawnItem(container, ORGM.AmmoTable[ammoType].moduleName .. '.' .. ammoType, spawnChance, maxCount)
end

Server.spawnAmmoBox = function(container, ammoType, spawnChance, maxCount)
    spawnChance = spawnChance * ZomboidGlobals.WeaponLootModifier * ORGM.Settings.AmmoSpawnModifier
    Server.spawnItem(container, ORGM.AmmoTable[ammoType].moduleName .. '.' .. ammoType .. '_Box', spawnChance, maxCount)
end

Server.spawnAmmoCan = function(container, ammoType, spawnChance, maxCount)
    spawnChance = spawnChance * ZomboidGlobals.WeaponLootModifier * ORGM.Settings.AmmoSpawnModifier
    Server.spawnItem(container, ORGM.AmmoTable[ammoType].moduleName .. '.' .. ammoType .. '_Can', spawnChance, maxCount)
end


--[[ Server.spawnRandomBox(container, spawnChance)

    Spawns a random box of ammo

    container is a ItemContainer object.
    spawnChance is the % chance to spawn the item.

    returns nil

]]
Server.spawnRandomBox = function(container, spawnChance, maxCount)
    Server.spawnAmmoBox(container, AllRoundsTable[Rnd(#AllRoundsTable)], spawnChance, maxCount)
end


--[[ Server.spawnRandomCan(container, spawnChance)

    Spawns a random can of ammo

    container is a ItemContainer object.
    spawnChance is the % chance to spawn the item.

    returns nil

]]
Server.spawnRandomCan = function(container, spawnChance, maxCount)
    Server.spawnAmmoCan(container, AllRoundsTable[Rnd(#AllRoundsTable)], spawnChance, maxCount)
end

Server.spawnRepairKit = function(container, spawnChance, maxCount)
    spawnChance = spawnChance * ZomboidGlobals.WeaponLootModifier * ORGM.Settings.RepairKitSpawnModifier
    local choice = AllRepairKitsTable[Rnd(#AllRepairKitsTable)]
    Server.spawnItem(container, ORGM.RepairKitTable[choice].moduleName .. '.' .. choice, spawnChance, maxCount)
end

Server.spawnFirearmPart = function(container, spawnChance, maxCount)
    spawnChance = spawnChance * ZomboidGlobals.WeaponLootModifier * ORGM.Settings.ComponentSpawnModifier
    local choice = AllComponentsTable[Rnd(#AllComponentsTable)]
    Server.spawnItem(container, ORGM.ComponentTable[choice].moduleName .. '.' .. choice, spawnChance, maxCount)
end

--[[ Server.selectFirearm(civilian, police, military)
    
    Chooses a gun from the ORGM.FirearmRarityTable and appropriate ammo type.

    civilian is the chance of using the civilian table (int weight value)
    police is the chance of using the police table (int weight value)
    military is the chance of using the military table (int weight value)
    
    returns a table with 2 keys: .gun and .ammo

]]
Server.selectFirearm = function(civilian, police, military)
    -----------------------
    -- select the table
    civilian = civilian * ORGM.Settings.CivilianFirearmSpawnModifier
    police = police * ORGM.Settings.PoliceFirearmSpawnModifier
    military = military * ORGM.Settings.MilitaryFirearmSpawnModifier
    local roll = Rnd(civilian + police + military)
    local gunTbl = nil
    if roll <= civilian then -- civ
        gunTbl = ORGM.FirearmRarityTable.Civilian
        ORGM.log(ORGM.DEBUG, "Selecting firearm from civilian table")
    elseif roll <= civilian + police then -- police
        gunTbl = ORGM.FirearmRarityTable.Police
        ORGM.log(ORGM.DEBUG, "Selecting firearm from police table")
    else  -- military
        gunTbl = ORGM.FirearmRarityTable.Military
        ORGM.log(ORGM.DEBUG, "Selecting firearm from military table")
    end
    
    -----------------------
    -- select the rarity
    roll = Rnd(100)
    local rarity = "Common"
    if roll < 80 then -- common
        rarity = "Common"
    elseif roll < 96 and #gunTbl.Rare > 0 then
        rarity = "Rare"
    elseif #gunTbl.VeryRare > 0 then
        rarity = "VeryRare"
    end
    ORGM.log(ORGM.DEBUG, "Selecting " .. rarity .." firearm")
    gunTbl = gunTbl[rarity]
    
    local gunType = gunTbl[Rnd(#gunTbl)] -- randomly pick a gun
    ORGM.log(ORGM.DEBUG, "Selected " .. tostring(gunType))

    local weaponData = ORGM.FirearmTable[gunType]
    
    --print("spawning="..gunType)
    local ammoType = weaponData.ammoType
    if ORGM.MagazineTable[ammoType] then -- ammoType is a mag, get its default ammo
        ammoType = ORGM.MagazineTable[ammoType].ammoType
    end
    
    local altTable = ORGM.AlternateAmmoTable[ammoType]
    if Rnd(100) > 50 then
        ammoType = altTable[Rnd(#altTable)]
    else 
        ammoType = altTable[1]
    end

    return {gun = gunType, ammo = ammoType}
end


--[[ Server.addToCorpse(container)
    
    Function called when spawning items on corpses.

    container is a ItemContainer object.

    returns nil

]]
Server.addToCorpse = function(container)
    local choice = Server.selectFirearm(80, 14, 6)
    Server.spawnFirearm(container, choice.gun, choice.ammo, 3, 1, true) -- has gun
    Server.spawnMagazine(container, choice.gun, choice.ammo, 1, 3, true) -- has mags
    Server.spawnAmmo(container, choice.ammo, 3, 15) -- loose shells
    Server.spawnAmmoBox(container, choice.ammo, 1, 1) -- has box
end


--[[ Server.addToCivRoom(container)

    Adds a gun to a civilian room: bedrooms, gas stations, etc.

    container is a ItemContainer object.

    returns nil

]]
Server.addToCivRoom = function(container)
    local choice = Server.selectFirearm(80, 14, 6)
    Server.spawnFirearm(container, choice.gun, choice.ammo, 3, 1, true) -- has gun
    Server.spawnMagazine(container, choice.gun, choice.ammo, 1, 1, true) -- has mags
    Server.spawnAmmo(container, choice.ammo, 2, 29) -- loose shells
    Server.spawnAmmoBox(container, choice.ammo, 1, 1) -- has box
    Server.spawnFirearmPart(container, 1, 1) -- has a mod
    Server.spawnRepairKit(container, 1, 1) -- has repair stuff
end



-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------

--[[ onFillContainer.Add

    Called when filling a container with loot. Controls the spawn chances.
    
]]

Server.onFillContainer = function(roomName, containerType, container)
    -- pull functions into local namespace
    local addToCorpse = Server.addToCorpse
    local addToCivRoom = Server.addToCivRoom
    local spawnFirearm = Server.spawnFirearm
    local spawnMagazine = Server.spawnMagazine
    local spawnAmmoBox = Server.spawnAmmoBox
    local spawnAmmoCan = Server.spawnAmmoCan
    local spawnRandomBox = Server.spawnRandomBox
    local spawnRandomCan = Server.spawnRandomCan
    local spawnFirearmPart = Server.spawnFirearmPart
    local spawnRepairKit = Server.spawnRepairKit
    
    -- room control
    if roomName == "all" and containerType == "inventorymale" then
        addToCorpse(container)
    elseif roomName == "all" and containerType == "inventoryfemale" then
        addToCorpse(container)
    elseif roomName == "bedroom" and containerType == "wardrobe" then
        addToCivRoom(container)
    elseif roomName == "zippeestore" and containerType == "counter" then
        addToCivRoom(container)
    elseif roomName == "fossoil" and containerType == "counter" then
        addToCivRoom(container)
    elseif roomName == "gasstore" and containerType == "counter" then
        addToCivRoom(container)
    elseif roomName == "bar" and containerType == "counter" then
        addToCivRoom(container)
    elseif roomName == "policestorage" then
        local count = Rnd(3)
        while count ~= 0 do
            local choice = Server.selectFirearm(0, 70, 30)
            spawnFirearm(container, choice.gun, choice.ammo, 60, 1, false)
            spawnMagazine(container, choice.gun, choice.ammo, 80, 2, false)

            spawnAmmoBox(container, choice.ammo, 80, 4)
            spawnAmmoCan(container, choice.ammo, 20, 1)
            spawnFirearmPart(container, 30, 2)
            spawnRepairKit(container, 40, 2)
            if Rnd(10) > 4 then count = count -1 end
        end
    elseif roomName == "gunstore" then
        if containerType == "locker" then
            spawnRandomBox(container, 70)
            spawnRandomBox(container, 60)
            spawnRandomBox(container, 50)
            spawnRandomBox(container, 40)
            spawnRandomBox(container, 30)
            spawnRandomCan(container, 10)
            spawnRandomCan(container, 5)
            spawnRepairKit(container, 20, 2)
            
        elseif containerType == "counter" then
            spawnRandomBox(container, 70)
            spawnRandomBox(container, 60)
            spawnRandomBox(container, 50)
            spawnRandomBox(container, 40)
            spawnRandomBox(container, 30)
            spawnRandomCan(container, 10)
            spawnRandomCan(container, 5)
            spawnRepairKit(container, 20, 2)
            
        elseif containerType == "displaycase" or containerType == "metal_shelves" then
            local choice = Server.selectFirearm(85, 10, 5)
            spawnFirearm(container, choice.gun, choice.ammo, 60, 1, false)
            spawnMagazine(container, choice.gun, choice.ammo, 40, 2, false)
            choice = Server.selectFirearm(85, 10, 5)
            spawnFirearm(container, choice.gun, choice.ammo, 40, 1, false)
            spawnMagazine(container, choice.gun, choice.ammo, 30, 2, false)
            spawnFirearmPart(container, 40, 2)
            spawnRepairKit(container, 30, 2)
        end
    elseif roomName == "gunstorestorage" then --and containerType == "metal_shelves" then
        local choice = Server.selectFirearm(85, 10, 5)
        spawnFirearm(container, choice.gun, choice.ammo, 60, 1, false)
        spawnMagazine(container, choice.gun, choice.ammo, 40, 2, false)
        choice = Server.selectFirearm(85, 10, 5)
        spawnFirearm(container, choice.gun, choice.ammo, 40, 1, false)
        spawnMagazine(container, choice.gun, choice.ammo, 30, 2, false)
        spawnFirearmPart(container, 40, 2)
        spawnRepairKit(container, 30, 2)

        spawnRandomBox(container, 70)
        spawnRandomBox(container, 60)
        spawnRandomBox(container, 50)
        spawnRandomBox(container, 40)
        spawnRandomBox(container, 30)
        spawnRandomCan(container, 10)
        spawnRandomCan(container, 5)
        spawnRepairKit(container, 20, 2)
    
    elseif roomName == "storageunit" and containerType == "crate" then
        local choice = Server.selectFirearm(85, 10, 5)
        spawnFirearm(container, choice.gun, choice.ammo, 10, 1, false)
        spawnMagazine(container, choice.gun, choice.ammo, 5, 3, false)
        choice = Server.selectFirearm(85, 10, 5)
        spawnFirearm(container, choice.gun, choice.ammo, 10, 1, false)
        spawnMagazine(container, choice.gun, choice.ammo, 5, 3, false)
        spawnFirearmPart(container, 5, 2)
        spawnFirearmPart(container, 2, 2)
        spawnRepairKit(container, 10, 2)

        if Rnd(100) <= 3 then
            spawnRandomBox(container, 70)
            spawnRandomBox(container, 60)
            spawnRandomBox(container, 50)
            spawnRandomBox(container, 40)
            spawnRandomBox(container, 30)
            spawnRandomCan(container, 10)
            spawnRandomCan(container, 5)
            spawnRepairKit(container, 20, 2)
        end

    elseif roomName == "garagestorage" and containerType == "smallbox" then
        local choice = Server.selectFirearm(85, 10, 5)
        spawnFirearm(container, choice.gun, choice.ammo, 10, 1, false)
        spawnMagazine(container, choice.gun, choice.ammo, 5, 3, false)
        choice = Server.selectFirearm(85, 10, 5)
        spawnFirearm(container, choice.gun, choice.ammo, 10, 1, false)
        spawnMagazine(container, choice.gun, choice.ammo, 5, 3, false)
        spawnFirearmPart(container, 5, 2)
        spawnFirearmPart(container, 2, 2)
        spawnRepairKit(container, 10, 2)

        if Rnd(100) <= 3 then
            spawnRandomBox(container, 70)
            spawnRandomBox(container, 60)
            spawnRandomBox(container, 50)
            spawnRandomBox(container, 40)
            spawnRandomBox(container, 30)
            spawnRandomCan(container, 10)
            spawnRandomCan(container, 5)
            spawnRepairKit(container, 20, 2)
        end

    elseif roomName == "hunting" and (containerType == "metal_shelves" or containerType == "locker") then
        local choice = Server.selectFirearm(85, 10, 5)
        spawnFirearm(container, choice.gun, choice.ammo, 30, 1, false)
        spawnMagazine(container, choice.gun, choice.ammo, 10, 3, false)
        
        choice = Server.selectFirearm(85, 10, 5)
        spawnFirearm(container, choice.gun, choice.ammo, 20, 1, false)
        spawnMagazine(container, choice.gun, choice.ammo, 8, 3, false)
        spawnFirearmPart(container, 15, 2)
        spawnFirearmPart(container, 2, 1)
        spawnRepairKit(container, 20, 2)

        spawnRandomBox(container, 70)
        spawnRandomBox(container, 60)
        spawnRandomBox(container, 50)
        spawnRandomBox(container, 40)
        spawnRandomBox(container, 30)
        spawnRandomCan(container, 10)
        spawnRandomCan(container, 5)
        spawnRepairKit(container, 20, 2)

    end
end



Server.insertIntoRarityTables = function(name, definition)
    if definition.isCivilian then
        if ORGM.FirearmRarityTable.Civilian[definition.isCivilian] ~= nil then
            table.insert(ORGM.FirearmRarityTable.Civilian[definition.isCivilian], name)
        else
            ORGM.log(ORGM.ERROR, "Invalid civilian rarity for " .. name .. " (" .. definition.isCivilian .. ")")
        end
    end
    if definition.isPolice then
        if ORGM.FirearmRarityTable.Police[definition.isPolice] ~= nil then
            table.insert(ORGM.FirearmRarityTable.Police[definition.isPolice], name)
        else
            ORGM.log(ORGM.ERROR, "Invalid police rarity for " .. name .. " (" .. definition.isPolice .. ")")
        end                
    end
    if definition.isMilitary then
        if ORGM.FirearmRarityTable.Military[definition.isMilitary] ~= nil then
            table.insert(ORGM.FirearmRarityTable.Military[definition.isMilitary], name)
        else
            ORGM.log(ORGM.ERROR, "Invalid military rarity for " .. name .. " (" .. definition.isMilitary .. ")")
        end                
    end
end

--[[  Server.buildRarityTables()

    Purges and recalculates the ORGM.FirearmRarityTable. This must be called if another mod edit the weapon rarity values for any
    firearms after the OnGameBoot event has been triggered.

]]
Server.buildRarityTables = function()
    ORGM.log(ORGM.INFO, "Recalculating Firearm Rarity Tables")
    ORGM.FirearmRarityTable = {
        Civilian = { Common = {},Rare = {}, VeryRare = {} },
        Police = { Common = {}, Rare = {}, VeryRare = {} },
        Military = { Common = {}, Rare = {}, VeryRare = {} },
    }
    for name, definition in pairs(ORGM.FirearmTable) do
        Server.insertIntoRarityTables(name, definition)
    end
end


Server.buildUpgradeTables = function()
    local modItems = {}
    for name, definition in pairs(ORGM.ComponentTable) do
        modItems[name] = InventoryItemFactory.CreateItem(definition.moduleName..'.' .. name)    
    end
    -- loop through once, clearing all old data for ORGM guns
    for gunName, gunDef in pairs(ORGM.FirearmTable) do
        WeaponUpgrades[gunName] = {}
    end
    -- build the WeaponUpgrades table
    for gunName, gunDef in pairs(ORGM.FirearmTable) do
        local gunItem = getScriptManager():FindItem(gunDef.moduleName .. '.' .. gunName)
        for modName, modItem in pairs(modItems) do
            if modItem:getMountOn():contains(gunItem:getDisplayName()) then
                table.insert(WeaponUpgrades[gunName], modItem:getModule() .. '.' .. modName)
                ORGM.log(ORGM.DEBUG, "Added upgrade option "..modItem:getModule() .. '.' .. modName .. " to " .. gunDef.moduleName .. '.' .. gunName)
            end
        end
    end
    ORGM.log(ORGM.INFO, "WeaponUpgrades table built.")
end

Server.buildSpawnTables = function()
    -- build the AllRoundsTable
    AllRoundsTable = { }
    for name, def in pairs(ORGM.AmmoTable) do
        table.insert(AllRoundsTable, name)
    end
    AllComponentsTable = { }
    for name, def in pairs(ORGM.ComponentTable) do
        table.insert(AllComponentsTable, name)
    end
    AllRepairKitsTable = { }
    for name, def in pairs(ORGM.RepairKitTable) do
        table.insert(AllRepairKitsTable, name)
    end
    ORGM.log(ORGM.INFO, "Spawn tables built.")
end