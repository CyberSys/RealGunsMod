
local RFF = require("rff/init")

local Interface = RFF.Interface
local Firearm = Interface.Firearm
local Logger = Interface.Logger

do  -- bitwise flag handling for pz's kahlua
    require "1LoadOrder/BitNumber"
    local Bit = Interface.Bit
    Bit.band = BitNumber.bit32.band
    Bit.bor = BitNumber.bit32.bor
    Bit.bxor = BitNumber.bit32.bxor

end

do
    local Player = Interface.Player
    
    Player.getInventory = function(game_player)
        return game_player:getInventory()
    end

    Player.getPosition = function(game_player)
        return nil
    end

    Player.getFirearm = function(game_player)
        return game_player:getPrimaryHandItem()
    end

    Player.playSound = function(game_player, sound_file)
        return game_player:playSound(sound_file, false)
    end

end

do -- setup configuration function injections
    local Config = RFF.Config
    
    Config.readConifg = function()
        Logger.debug("Config: Reading ORGM.ini")

        local file = getFileReader("ORGM.ini", true)
        if not file then return end
        for key, value in pairs(Config.getOptionsTable()) do
            value.wasLoaded = nil -- set the wasLoaded flag to nil
        end
        while true do repeat
            local line = file:readLine()
            if line == nil then
                file:close()
                return
            end
            line = string.gsub(line, "^ +(.+) +$", "%1", 1)
            if line == "" or string.sub(line, 1, 1) == ";" then break end
            
            for key, value in string.gmatch(line, "(%w+) *= *(.+)") do
                local option = Config.option(key)
                if not option then
                    Logger.warn("Config: Invalid setting in ORGM.ini ("..line..")")
                    break
                end
                if option.type == "boolean" and value == "true" then
                    value = true
                elseif option.type == "boolean" and value == "false" then
                    value = false
                elseif option.type == "integer" or option.type == "float" then
                    value = tonumber(value)
                end
                option.wasLoaded = true -- option was loaded from the config, so flag it for saving later
                Config.set(key, value)
            end
        until true end
    end

    Config.writeConfig = function()
        if isClient() then return end -- dont overwrite a clients file with the servers settings
        Logger.debug("Settings: Writing ORGM.ini")
        local file = getFileWriter("ORGM.ini", true, false)
        if not file then
            Logger.error("Settings: Failed to write Lua/ORGM.ini")
            return
        end
        for key, value in pairs(Config.getSettingsTable()) do
            local option = Config.option(key)
            if option and (option.wasLoaded or value ~= option.default) then
                file:write(key .. " = ".. tostring(value) .. "\r\n")
            end
        end
        file:close()
    end
end