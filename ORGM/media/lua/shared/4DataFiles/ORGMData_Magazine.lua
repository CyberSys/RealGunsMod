--[[- This file contains all default magazine data.

All calls made by this script are to `ORGM.Magazine.register`. See the documention there.

@script ORGMData_Magazine.lua
@author Fenris_Wolf
@release 3.09
@copyright 2018 **File:** shared/4DataFiles/ORGMData_Magazine.lua

]]
local Magazine = ORGM.Magazine
local MagazineGroup = Magazine.MagazineGroup
local MagazineType = Magazine.MagazineType
local Flags = Magazine.Flags

MagazineGroup:new("MagGroup_Pistols")
MagazineGroup:new("MagGroup_SubMachineGuns")
MagazineGroup:new("MagGroup_Rifles")


MagazineGroup:new("MagGroup_AutomagV",              { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_50AE' })
MagazineGroup:new("MagGroup_Beretta_92_early",      { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_9x19mm' })
MagazineGroup:new("MagGroup_Beretta_92",            { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_9x19mm' })
MagazineGroup:new("MagGroup_BrenTen",               { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_10x25mm' })
MagazineGroup:new("MagGroup_Browning_HiPower",      { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_9x19mm' })
MagazineGroup:new("MagGroup_1911",                  { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_45ACP' })
MagazineGroup:new("MagGroup_1911_9x19mm",           { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_9x19mm' })
MagazineGroup:new("MagGroup_1911_10x25mm",          { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_10x25mm' })
MagazineGroup:new("MagGroup_1911_38Super",          { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_38Super' })
MagazineGroup:new("MagGroup_CZ75_9x19mm",           { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_9x19mm' })
MagazineGroup:new("MagGroup_DesertEagle_44Magnum",  { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_44Magnum' })
MagazineGroup:new("MagGroup_DesertEagle_50AE",      { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_50AE' })
MagazineGroup:new("MagGroup_FN57",                  { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_57x28mm' })
MagazineGroup:new("MagGroup_Glock_9x19mm",          { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_9x19mm' })
MagazineGroup:new("MagGroup_Glock_10x25mm",         { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_10x25mm' })
MagazineGroup:new("MagGroup_Glock_45ACP",           { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_45ACP' })
MagazineGroup:new("MagGroup_Glock_40SW",            { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_40SW' })
MagazineGroup:new("MagGroup_Mark23",                { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_45ACP' })
MagazineGroup:new("MagGroup_CT45",                  { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_45ACP' })
MagazineGroup:new("MagGroup_CT380",                 { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_380ACP' })
MagazineGroup:new("MagGroup_CT9",                   { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_9x19mm' })
MagazineGroup:new("MagGroup_CT40",                  { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_40SW' })
MagazineGroup:new("MagGroup_Kahr_P_Series",         { Groups = { MagGroup_Pistols = 1 } })
MagazineGroup:new("MagGroup_KalTec_P32",            { Groups = { MagGroup_Pistols = 1 } })
MagazineGroup:new("MagGroup_Ruger_MarkII",          { Groups = { MagGroup_Pistols = 1 } })
MagazineGroup:new("MagGroup_Ruger_SR_Series",       { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_9x19mm' })
MagazineGroup:new("MagGroup_SigSauer_P226",         { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_40SW' })
MagazineGroup:new("MagGroup_Springfield_XD",        { Groups = { MagGroup_Pistols = 1 }, ammo_group = 'AmmoGroup_40SW' })
MagazineGroup:new("MagGroup_Taurus_PT38S",          { Groups = { MagGroup_Pistols = 1 } })
MagazineGroup:new("MagGroup_Taurus_Millennium_38Super", { Groups = { MagGroup_Pistols = 1 } })
MagazineGroup:new("MagGroup_P22",                   { Groups = { MagGroup_Pistols = 1 } })
MagazineGroup:new("MagGroup_PP",                    { Groups = { MagGroup_Pistols = 1 } })
MagazineGroup:new("MagGroup_PPK",                   { Groups = { MagGroup_Pistols = 1 } })

MagazineGroup:new("MagGroup_AM180",                 { Groups = { MagGroup_SubMachineGuns = 1 } })
MagazineGroup:new("MagGroup_FNP90",                 { Groups = { MagGroup_SubMachineGuns = 1 } })
MagazineGroup:new("MagGroup_Thompson",              { Groups = { MagGroup_SubMachineGuns = 1 }, ammo_group = 'AmmoGroup_45ACP' })
MagazineGroup:new("MagGroup_Mac10_45ACP",           { Groups = { MagGroup_SubMachineGuns = 1 }, ammo_group = 'AmmoGroup_45ACP' })
MagazineGroup:new("MagGroup_Mac10_9x19mm",          { Groups = { MagGroup_SubMachineGuns = 1 }, ammo_group = 'AmmoGroup_9x19mm' })
MagazineGroup:new("MagGroup_Mac11_380ACP",          { Groups = { MagGroup_SubMachineGuns = 1 }, ammo_group = 'AmmoGroup_380ACP' })
MagazineGroup:new("MagGroup_Uzi_45ACP",             { Groups = { MagGroup_SubMachineGuns = 1 }, ammo_group = 'AmmoGroup_45ACP' })
MagazineGroup:new("MagGroup_Uzi_9x19mm",            { Groups = { MagGroup_SubMachineGuns = 1 }, ammo_group = 'AmmoGroup_9x19mm' })
MagazineGroup:new("MagGroup_Skorpion_vz61_32ACP",   { Groups = { MagGroup_SubMachineGuns = 1 }, ammo_group = 'AmmoGroup_32ACP' })


MagazineGroup:new("MagGroup_AK",     			    { Groups = { MagGroup_Rifles = 1 }, ammo_group = 'AmmoGroup_762x39mm' })
MagazineGroup:new("MagGroup_AK556",                 { Groups = { MagGroup_Rifles = 1 }, ammo_group = 'AmmoGroup_556x45mm' })                 { Groups = { MagGroup_Rifles = 1 } })
--Still need to make the AK mags
MagazineGroup:new("MagGroup_ArcticWarfare",         { Groups = { MagGroup_Rifles = 1 }, ammo_group = 'AmmoGroup_308Winchester' })
MagazineGroup:new("MagGroup_AR10",                  { Groups = { MagGroup_Rifles = 1 }, ammo_group = 'AmmoGroup_762x51mm' })
MagazineGroup:new("MagGroup_AR10_762x39mm",         { Groups = { MagGroup_Rifles = 1 }, ammo_group = 'AmmoGroup_762x39mm' })
MagazineGroup:new("MagGroup_STANAG",                { Groups = { MagGroup_Rifles = 1 }, ammo_group = 'AmmoGroup_556x45mm' })
MagazineGroup:new("MagGroup_BLR",                   { Groups = { MagGroup_Rifles = 1 } })


MagazineType:new("Mag_AutomagV_x5", {
    Groups = { MagGroup_AutomagV = 1 },
    ammo_group = "AmmoGroup_50AE",
    max_capacity = 5,
    features = Flags.BOX,
    weight = 0.2,
    image = "Mag_AutomagV",
})
MagazineType:new("Mag_Beretta_92_early_x15", {
    Groups = { MagGroup_Beretta_92_early = 1 },
    ammo_group = "AmmoGroup_9x19mm",
    max_capacity = 15,
    features = Flags.BOX,
    weight = 0.2,
    image = "Mag_Beretta_92",
})
MagazineType:newCollection("Mag_Beretta_92", {
        ammo_group = 'AmmoGroup_9x19mm',
        image = "Mag_Beretta_92",
        features = Flags.BOX,
    },{
        x15 = {
            max_capacity = 15,
            weight = 0.2,
            Groups = { MagGroup_Beretta_92 = 4 },
        },
        x32 = {
            max_capacity = 32,
            weight = 0.3,
            Groups = { MagGroup_Beretta_92 = 1 },
        },
    }
)
MagazineType:new("Mag_BrenTen_x12", {
    Groups = { MagGroup_BrenTen = 1 },
    ammo_group = "AmmoGroup_10x25mm",
    max_capacity = 12,
    features = Flags.BOX,
    weight = 0.2,
    image = "Mag_BrenTen",
})
MagazineType:newCollection("Mag_Browning_HiPower", {
    ammo_group = 'AmmoGroup_9x19mm',
    image = "Mag_Browning_HiPower",
    features = Flags.BOX,
    },{
        x13 = {
            max_capacity = 13,
            weight = 0.2,
            Groups = { MagGroup_Browning_HiPower = 1 },
        },
    }
)
MagazineType:newCollection("Mag_1911", {
    ammo_group = 'AmmoGroup_45ACP',
    image = "Mag_1911",
    features = Flags.BOX,
    },{
        x7 = {
            max_capacity = 7,
            weight = 0.2,
            Groups = { MagGroup_1911 = 1 },
        },
    }
)
MagazineType:newCollection("Mag_1911_9x19mm", {
    ammo_group = 'AmmoGroup_9x19mm',
    image = "Mag_1911_9x19mm",
    features = Flags.BOX,
    },{
        x9 = {
            max_capacity = 9,
            weight = 0.2,
            Groups = { MagGroup_1911_9x19mm = 1 },
        },
    }
)
MagazineType:newCollection("Mag_1911_10x25mm", {
    ammo_group = 'AmmoGroup_10x25mm',
    image = "Mag_1911_10x25mm",
    features = Flags.BOX,
    },{
        x9 = {
            max_capacity = 9,
            weight = 0.2,
            Groups = { MagGroup_1911_10x25mm = 1 },
        },
    }
)
MagazineType:newCollection("Mag_1911_38Super", {
    ammo_group = 'AmmoGroup_38Super',
    image = "Mag_1911_38Super",
    features = Flags.BOX,
    },{
        x9 = {
            max_capacity = 9,
            weight = 0.2,
            Groups = { MagGroup_1911_38Super = 1 },
        },
    }
)
MagazineType:newCollection("Mag_CZ75_9x19mm", {
    ammo_group = 'AmmoGroup_9x19mm',
    image = "Mag_CZ75",
    features = Flags.BOX,
    },{
        x15 = {
            max_capacity = 15,
            weight = 0.2,
            Groups = { MagGroup_CZ75_9x19mm = 1 },
        },
    }
)
MagazineType:newCollection("Mag_DesertEagle_44Magnum", {
    ammo_group = 'AmmoGroup_44Magnum',
    image = "Mag_DesertEagle_44Magnum",
    features = Flags.BOX,
    },{
        x8 = {
            max_capacity = 8,
            weight = 0.2,
            Groups = { MagGroup_DesertEagle_44Magnum = 1 },
        },
    }
)
MagazineType:newCollection("Mag_DesertEagle_50AE", {
    ammo_group = 'AmmoGroup_50AE',
    image = "Mag_DesertEagle_50AE",
    features = Flags.BOX,
    },{
        x7 = {
            max_capacity = 7,
            weight = 0.2,
            Groups = { MagGroup_DesertEagle_50AE = 1 },
        },
    }
)
MagazineType:newCollection("Mag_FN57", {
    ammo_group = 'AmmoGroup_57x25mm',
    image = "Mag_FN57",
    features = Flags.BOX,
    },{
        x20 = {
            max_capacity = 20,
            weight = 0.2,
            Groups = { MagGroup_FN57 = 1 },
        },
    }
)
MagazineType:newCollection("Mag_Glock_9x19mm", {
    ammo_group = 'AmmoGroup_9x19mm',
    image = "Mag_Glock_9x19mm",
    features = Flags.BOX,
    },{
        x10 = {
            max_capacity = 10,
            weight = 0.2,
            Groups = { MagGroup_Glock_9x19mm = 3 },
        },
        x17 = {
            max_capacity = 17,
            weight = 0.2,
            Groups = { MagGroup_Glock_9x19mm = 4 },
        },
        Gen1_x17 = { -- tends to stick/buldge
            max_capacity = 17,
            weight = 0.2,
            Groups = { MagGroup_Glock_9x19mm = 2 },
        },
        x33 = {
            max_capacity = 33,
            weight = 0.2,
            Groups = { MagGroup_Glock_9x19mm = 1 },
        },
    }
)
MagazineType:newCollection("Mag_Glock_10x25mm", {
    ammo_group = 'AmmoGroup_10x25mm',
    image = "Mag_Glock_10x25mm",
    features = Flags.BOX,
    },{
        x10 = {
            max_capacity = 10,
            weight = 0.2,
            Groups = { MagGroup_Glock_10x25mm = 1 },
        },
        x15 = {
            max_capacity = 15,
            weight = 0.2,
            Groups = { MagGroup_Glock_10x25mm = 1 },
        },
        Gen1_x15 = { -- tends to stick/buldge
            max_capacity = 15,
            weight = 0.2,
            Groups = { MagGroup_Glock_10x25mm = 1 },
        },
    }
)
MagazineType:newCollection("Mag_Glock_45ACP", {
    ammo_group = 'AmmoGroup_45ACP',
    image = "Mag_Glock_45ACP",
    features = Flags.BOX,
    },{
        x10 = {
            max_capacity = 10,
            weight = 0.2,
            Groups = { MagGroup_Glock_45ACP = 1 },
        },
        x13 = {
            max_capacity = 13,
            weight = 0.2,
            Groups = { MagGroup_Glock_45ACP = 1 },
        },
        x30 = { -- extended version for the kriss vector
            max_capacity = 30,
            weight = 0.2,
            Groups = { MagGroup_Glock_45ACP = 1 },
        },
        Gen1_x13 = { -- tends to stick/buldge
            max_capacity = 13,
            weight = 0.2,
            Groups = { MagGroup_Glock_45ACP = 1 },
        },
    }
)
MagazineType:newCollection("Mag_Glock_40SW", {
    ammo_group = 'AmmoGroup_40SW',
    image = "Mag_Glock_40SW",
    features = Flags.BOX,
    },{
        x10 = {
            max_capacity = 10,
            weight = 0.2,
            Groups = { MagGroup_Glock_40SW = 1 },
        },
        x15 = {
            max_capacity = 15,
            weight = 0.2,
            Groups = { MagGroup_Glock_40SW = 1 },
        },
        Gen1_x15 = { -- tends to stick/buldge
            max_capacity = 15,
            weight = 0.2,
            Groups = { MagGroup_Glock_40SW = 1 },
        },
    }
)
MagazineType:newCollection("Mag_Mark23", {
    ammo_group = 'AmmoGroup_45ACP',
    image = "Mag_Mark23",
    features = Flags.BOX,
    },{
        x12 = {
            max_capacity = 12,
            weight = 0.2,
            Groups = { MagGroup_Mark23 = 1 },
        },
    }
)
MagazineType:new("Mag_CT380_x7", {
    image = "Mag_Kahr_CT_Series",
    features = Flags.BOX,
    ammo_group = 'AmmoGroup_380ACP',
    max_capacity = 7,
    Groups = { MagGroup_CT380 = 1 },
    weight = 0.2, -- 0.059534 empty
})
MagazineType:new("Mag_CT40_x7", {
    image = "Mag_Kahr_CT_Series",
    features = Flags.BOX,
    ammo_group = 'AmmoGroup_40SW',
    max_capacity = 7,
    Groups = { MagGroup_CT40 = 1 },
    weight = 0.2, -- 0.059534 empty
})
MagazineType:new("Mag_CT9_x8", {
    image = "Mag_Kahr_CT_Series",
    features = Flags.BOX,
    ammo_group = 'AmmoGroup_9x19mm',
    max_capacity = 8,
    Groups = { MagGroup_CT9 = 1 },
    weight = 0.2, -- 0.059534 empty
})
MagazineType:new("Mag_CT45_x7", {
    image = "Mag_Kahr_CT_Series",
    features = Flags.BOX,
    ammo_group = 'AmmoGroup_45ACP',
    max_capacity = 7,
    Groups = { MagGroup_CT45 = 1 },
    weight = 0.2, -- 2.4oz mag (0.068) empty
})


--
MagazineType:newCollection("Mag_Uzi_45ACP", {
        ammo_group = 'AmmoGroup_45ACP',
        image = "Mag_Uzi",
    },{
        x20 = {
            features = Flags.BOX,
            max_capacity = 30,
            weight = 0.2,
            Groups = { MagGroup_Uzi_45ACP = 1 },
        },
    }
)

MagazineType:newCollection("Mag_Skorpion_vz61_32ACP", {
        ammo_group = 'AmmoGroup_32ACP',
        image = "Mag_Skorpion_vz61",
    },{
        x20 = {
            features = Flags.BOX,
            max_capacity = 20,
            weight = 0.2,
            Groups = { MagGroup_Skorpion_vz61_32ACP = 1 },
        },
    }
)

MagazineType:newCollection("Mag_ArcticWarfare", {
        ammo_group = 'AmmoGroup_308Winchester',
        image = "Item_Mag_AIAW",
    },{
        x5 = {
            features = Flags.BOX,
            max_capacity = 5,
            weight = 0.2,
            Groups = { MagGroup_ArcticWarfare = 1 },
        },
    }
)

MagazineType:newCollection("Mag_AR10", {
        ammo_group = 'AmmoGroup_762x51mm',
        image = "Mag_AR10",
    },{
        x20 = {
            features = Flags.BOX,
            max_capacity = 20,
            weight = 0.2,
            Groups = { MagGroup_AR10 = 1 },
        },
    }
)
MagazineType:newCollection("Mag_AR10_762x39mm", {
        ammo_group = 'AmmoGroup_762x39mm',
        image = "Mag_AR10",
    },{
        x20 = {
            features = Flags.BOX,
            max_capacity = 20,
            weight = 0.2,
            Groups = { MagGroup_AR10 = 1 },
        },
    }
)


MagazineType:newCollection("Mag_STANAG", {
        ammo_group = 'AmmoGroup_556x45mm',
        image = "Mag_STANAG",
    },{
        x5 = {
            features = Flags.BOX,
            max_capacity = 5,
            weight = 0.2,
            Groups = { MagGroup_STANAG = 10 },
        },
        x10 = {
            features = Flags.BOX,
            max_capacity = 10,
            weight = 0.2,
            Groups = { MagGroup_STANAG = 15 },
        },
        x20 = {
            features = Flags.BOX,
            max_capacity = 20,
            weight = 0.2,
            Groups = { MagGroup_STANAG = 20 },
        },
        x30 = {
            features = Flags.BOX,
            max_capacity = 30,
            weight = 0.2,
            Groups = { MagGroup_STANAG = 40 },
        },
        x40 = {
            features = Flags.BOX,
            max_capacity = 40,
            weight = 0.2,
            Groups = { MagGroup_STANAG = 10 },
        },
        x50 = {
            features = Flags.BOX,
            max_capacity = 50,
            weight = 0.2,
            Groups = { MagGroup_STANAG = 4 },
        },
        x60 = {
            features = Flags.CASKET,
            max_capacity = 60,
            weight = 0.2,
            Groups = { MagGroup_STANAG = 2 },
        },
        x100 = {
            features = Flags.CASKET,
            max_capacity = 100,
            weight = 0.2,
            Groups = { MagGroup_STANAG = 1 },
        },
    }
)

--[[

register("AKMMag",
    { ammo_group = 'AmmoGroup_762x39mm', max_capacity = 30, }
)
register("AM180Mag",
    { ammo_group = 'AmmoGroup_22LR', max_capacity = 177, }
)
register("AR10Mag",
    { ammo_group = 'AmmoGroup_762x51mm', max_capacity = 20, }
)
register("BLRMag",
    { ammo_group = 'AmmoGroup_308Winchester', max_capacity = 4, }
)
register("FNFALAMag",
    { ammo_group = 'AmmoGroup_762x51mm', max_capacity = 20, }
)
register("FNFALMag",
    { ammo_group = 'AmmoGroup_308Winchester', max_capacity = 20, }
)
register("FNP90Mag",
    { ammo_group = 'AmmoGroup_57x28mm', max_capacity = 50, }
)
register("GarandClip",
    { ammo_group = 'AmmoGroup_3006Springfield', max_capacity = 8, }
)
register("HK91Mag",
    { ammo_group = 'AmmoGroup_308Winchester', max_capacity = 20, }
)
register("HKG3Mag",
    { ammo_group = 'AmmoGroup_762x51mm', max_capacity = 20, }
)
register("HKMP5Mag",
    { ammo_group = 'AmmoGroup_9x19mm', max_capacity = 30, }
)
register("HKSL8Mag",
    { ammo_group = 'AmmoGroup_223Remington', max_capacity = 10, }
)
register("HKUMPMag",
    { ammo_group = 'AmmoGroup_45ACP', max_capacity = 25, }
)
register("KahrCT40Mag",
    { ammo_group = 'AmmoGroup_40SW', max_capacity = 7, }
)
register("KahrP380Mag",
    { ammo_group = 'AmmoGroup_380ACP', max_capacity = 6, }
)
register("KTP32Mag",
    { ammo_group = 'AmmoGroup_32ACP', max_capacity = 7, }
)
register("L96Mag",
    { ammo_group = 'AmmoGroup_762x51mm', max_capacity = 5, }
)
register("LENo4Mag",
    { ammo_group = 'AmmoGroup_762x51mm', max_capacity = 10, }
)
register("LENo4StripperClip",
    { ammo_group = 'AmmoGroup_762x51mm', max_capacity = 5, }
)
register("M1216Mag",
    { ammo_group = 'AmmoGroup_12g', max_capacity = 16, ejectSound = 'ORGMShotgunRoundIn', insertSound = 'ORGMShotgunRoundIn', }
)
register("M1903StripperClip",
    { ammo_group = 'AmmoGroup_3006Springfield', max_capacity = 5, }
)
register("M1A1Mag",
    { ammo_group = 'AmmoGroup_45ACP', max_capacity = 30, }
)
register("M21Mag",
    { ammo_group = 'AmmoGroup_762x51mm', max_capacity = 20, }
)
register("M249Belt",
    { ammo_group = 'AmmoGroup_556x45mm', max_capacity = 200, }
)
register("Mac10Mag",
    { ammo_group = 'AmmoGroup_45ACP', max_capacity = 30, }
)
register("Mac11Mag",
    { ammo_group = 'AmmoGroup_380ACP', max_capacity = 32, }
)
register("Mini14Mag",
    { ammo_group = 'AmmoGroup_223Remington', max_capacity = 20, }
)
register("MosinStripperClip",
    { ammo_group = 'AmmoGroup_762x54mm', max_capacity = 5, }
)
register("R25Mag",
    { ammo_group = 'AmmoGroup_308Winchester', max_capacity = 4, }
)
register("Rem788Mag",
    { ammo_group = 'AmmoGroup_3030Winchester', max_capacity = 3, }
)
register("Rug1022Mag",
    { ammo_group = 'AmmoGroup_22LR', max_capacity = 25, }
)
register("RugerMKIIMag",
    { ammo_group = 'AmmoGroup_22LR', max_capacity = 10, }
)
register("RugerSR9Mag",
    { ammo_group = 'AmmoGroup_9x19mm', max_capacity = 17, }
)
register("SIG550Mag",
    { ammo_group = 'AmmoGroup_556x45mm', max_capacity = 30, }
)
register("SIGP226Mag",
    { ammo_group = 'AmmoGroup_40SW', max_capacity = 12, }
)
register("SkorpionMag",
    { ammo_group = 'AmmoGroup_32ACP', max_capacity = 20, }
)
register("SKSStripperClip",
    { ammo_group = 'AmmoGroup_762x39mm', max_capacity = 10, }
)
register("SpeedLoader10mm6",
    { ammo_group = 'AmmoGroup_10x25mm', max_capacity = 6, }
)
register("SpeedLoader3576",
    { ammo_group = 'AmmoGroup_357Magnum', max_capacity = 6, }
)
register("SpeedLoader385",
    { ammo_group = 'AmmoGroup_38Special', max_capacity = 5, }
)
register("SpeedLoader386",
    { ammo_group = 'AmmoGroup_38Special', max_capacity = 6, }
)
register("SpeedLoader446",
    { ammo_group = 'AmmoGroup_44Magnum', max_capacity = 6, }
)
register("SpeedLoader4546",
    { ammo_group = 'AmmoGroup_454Casull', max_capacity = 6, }
)
register("SpeedLoader456",
    { ammo_group = 'AmmoGroup_45ACP', max_capacity = 6, }
)
register("SpeedLoader45C6",
    { ammo_group = 'AmmoGroup_45Colt', max_capacity = 6, }
)
register("Spr19119Mag",
    { ammo_group = 'AmmoGroup_9x19mm', max_capacity = 9, }
)
register("SR25Mag",
    { ammo_group = 'AmmoGroup_762x51mm', max_capacity = 20, }
)
register("STANAGMag",
    { ammo_group = 'AmmoGroup_556x45mm', max_capacity = 30, }
)
register("SVDMag",
    { ammo_group = 'AmmoGroup_762x54mm', max_capacity = 10, }
)
register("Taurus38Mag",
    { ammo_group = 'AmmoGroup_38Super', max_capacity = 10, }
)
register("TaurusP132Mag",
    { ammo_group = 'AmmoGroup_32ACP', max_capacity = 10, }
)
register("UziMag",
    { ammo_group = 'AmmoGroup_9x19mm', max_capacity = 32, }
)
register("VEPR12Mag",
    { ammo_group = 'AmmoGroup_12g', max_capacity = 8, ejectSound = 'ORGMShotgunRoundIn', insertSound = 'ORGMShotgunRoundIn', }
)
register("WaltherP22Mag",
    { ammo_group = 'AmmoGroup_22LR', max_capacity = 10, }
)
register("WaltherPPKMag",
    { ammo_group = 'AmmoGroup_380ACP', max_capacity = 6, }
)
register("XD40Mag",
    { ammo_group = 'AmmoGroup_40SW', max_capacity = 9, }
)
]]
-- ORGM[14] = "353134363"
ORGM.log(ORGM.INFO, "All default magazines registered.")
