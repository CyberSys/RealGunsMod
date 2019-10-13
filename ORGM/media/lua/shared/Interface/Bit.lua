-- bitwise flag handling for pz's kahlua
require "3rdParty/BitNumber"
local Bit = require(ENV_RFF_PATH .. 'interface/bit32')

Bit.band = BitNumber.bit32.band
Bit.bor = BitNumber.bit32.bor
Bit.bxor = BitNumber.bit32.bxor

return Bit
