--[[
    This file contains all component/upgrade data.
]]

--[[  ORGM.registerComponent(name, definition)
    
    Registers a component/upgrade type with ORGM.
    
    name = string name of the component/upgrade (without module prefix)
    definition = a table. Valid table keys/value pairs are:
        moduleName = nil, or string module name this item is from. If nil, ORGM is used
    
]]
local register = ORGM.registerComponent

register('2xScope', { lastChanged = 22, CriticalChance = 10, SwingTime = 0.2, HitChance = 6, MaxRange = 4, MinRange = 2, AimingTime = -4 } )
register('4xScope', { lastChanged = 22, CriticalChance = 15, SwingTime = 0.4, HitChance = 12, MaxRange = 8, MinRange = 4, AimingTime = -8 } )
register('8xScope', { lastChanged = 22, CriticalChance = 20, SwingTime = 0.7, HitChance = 24, MaxRange = 16, MinRange = 8, AimingTime = -16 } )
register('FibSig', { lastChanged = 22, HitChance = 5 } )
register('Foregrip', { lastChanged = 22, RecoilDelay = -5 } )
register('FullCh', { lastChanged = 22, MaxRange = 5, MaxDamage = 0.2, MinAngle = 0.05 } )
register('HalfCh', { lastChanged = 22, MaxRange = 3, MaxDamage = 0.10, MinAngle = 0.025 } )
register('PistolLas', { lastChanged = 22, CriticalChance = 10, SwingTime = -0.1, HitChance = 10, AimingTime = 10 } )
register('PistolTL', { lastChanged = 22,} )
register('RDS', { lastChanged = 22, CriticalChance = 10, SwingTime = 0.1, HitChance = 8, MaxRange = 2 } )
register('Recoil', { lastChanged = 22, RecoilDelay = -3 } )
register('Reflex', { lastChanged = 22, AimingTime = 10, HitChance = 5 } )
register('RifleLas', { lastChanged = 22, CriticalChance = 10, SwingTime = -0.1, HitChance = 10, AimingTime = 10 } )
register('RifleTL', { lastChanged = 22,} )
register('Rifsling', { lastChanged = 22,} )
register('SkeletalStock', { lastChanged = 22,} )
register('CollapsingStock', { lastChanged = 22,} )

ORGM.log(ORGM.INFO, "All default components/upgrades registered.")