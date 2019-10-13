local Player = require(ENV_RFF_PATH .. 'interface/player')

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

return Player
