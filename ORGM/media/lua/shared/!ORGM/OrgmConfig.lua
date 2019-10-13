
local Config = require(ENV_RFF_PATH .. 'config')
local Logger = require(ENV_RFF_PATH .. 'interface/logger')


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
    Logger.debug("Config: Writing ORGM.ini")
    local file = getFileWriter("ORGM.ini", true, false)
    if not file then
        Logger.error("Config: Failed to write Lua/ORGM.ini")
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

return Config
