local Firearm = require(ENV_RFF_PATH .. 'interface/firearm')

Firearm.getInstance = function(game_item)
    return game_item:getModData()
end

Firearm.setDamage = function(game_item, value)
    -- TODO: normalize values, etc
    --game_item:setMinDamage(value)
    --game_item:setMaxDamage(value)
    --game_item:setDoorDamage(value)
    --game_item:setTreeDamage(value)
    
end

Firearm.setRange = function(game_item, value)
    -- TODO: normalize values, etc
    --game_item:setRange(value)
end

Firearm.setAccuracy = function(game_item, value)
    -- TODO: normalize values, etc
    -- set per level as well.
    game_item:setHitChance(value)
    -- edit crit chance 
    -- game_item:setCriticalChance(value)
end

Firearm.setRecoil = function(game_item, value)
    -- TODO: normalize values, etc
    game_item:setRecoilDelay(value)
end

Firearm.setWeight = function(game_item, value)
    -- TODO: normalize values, etc
    game_item:setWeight(value)
    game_item:setWeaponWeight(value)
    game_item:setActualWeight(value)
end

Firearm.setReactionTime = function(game_item, value)
    -- TODO: normalize values, etc
    -- swingtime?
    game_item:setSwingTime(value)
end

Firearm.setRateOfFire = function(game_item, value)
    -- TODO: normalize values, etc
    -- rate of fire doesnt serve much purpose for pz.
    -- its all swingtime and recoil
end

return Firearm
