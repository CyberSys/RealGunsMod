local ModelLoader = {}
local Logger = require(ENV_RFF_PATH .. "interface/logger")
local loadStaticZomboidModel = loadStaticZomboidModel

--[[- Loads a 3d model. Trigged by OnGameBoot event in `ORGMClientEvents.lua`

@tparam string name the name alias for the model
@tparam[opt] string model the file name. defaults to the name argument if nil.
@tparam[opt] string texture the texture file name. defaults to the name argument if nil.
]]
ModelLoader.addModel = function(name, model, texture)
    if not model then model = name end
    if not texture then texture = name end

    local dir = getDir("ORGM")
    local modelPrefix = dir .. "/media/models/weapons_"
    loadStaticZomboidModel("weapons_".. name, modelPrefix .. model .. ".txt", "Objects_".. texture)
end

--[[-Loads all 3d models. Trigged by OnGameBoot Event in client/ORGMClientEventHooks.lua
]]
ModelLoader.loadModels = function()

    -- revolvers
    ModelLoader.addModel("coltanaconda", "coltanaconda", "coltpython") -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('coltpython') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('coltsaa') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('rugalaskan') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('rugblackhawk') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('ruggp100') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('rugredhawk') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('rugsecsix', 'rugsecsix', 'swm10') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('rugblackhawk') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('swm10') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('swm19') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('swm252', 'swm29', 'swm19') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('swm29', 'swm29', 'swm19') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('swm36', 'swm36', 'swm10c') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('swm610', 'swm610', 'swm19c') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('taurusraging') -- 3.09, credits to Filibuster Rhymes

    -- pistols
    ModelLoader.addModel("automagv") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('bbpistol') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('beretta92') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('brenten') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('browninghp') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel("colt38s", "colt38s", "m1911") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("coltdelta") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("cz75") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("deagle") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("deaglexix") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('fn57') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('glock17') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('glock20', 'glock20', 'glock17') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('glock21', 'glock21', 'glock17') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('glock22', 'glock17', 'glock17') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel("hkmk23") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("kahrct40") -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel("kahrp380", "kahrp380", "kahrct40") -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('ktp32') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('m1911') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('rugermkii') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('rugersr9', 'rugersr9', "kahrct40") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('sigp226') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("spr19119", "coltdelta", "m1911") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('taurus38', 'sigp226', 'taurus38') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("taurusp132", "taurusp132", "kahrct40") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('waltherp22') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('waltherppk') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('xd40', 'glock17', 'xd40') -- 3.09.2, credits to Filibuster Rhymes


    -- smgs
    ModelLoader.addModel('am180') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('beretta93r') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel("fnp90") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('glock18c', 'glock17', 'glock18c') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel("hkmp5") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("hkump") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("ktplr", "ktplr", "m16") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("kriss") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("krissciv", "krissciv", 'kriss') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("m1a1") -- 3.09.2, credits to Filibuster Rhymes
    --ModelLoader.addModel("m1a1_gold", "m1a1", "m1a1_gold") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("mac10") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("mac11", "mac11", "mac10") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('skorpion') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("uzi") -- 3.09.2, credits to Filibuster Rhymes

    -- rifles
    ModelLoader.addModel("aiaw308", 'l96', "aiaw308") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('akm') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('akmn') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('ar10') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('ar15', 'ar15', 'm16') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel("bbgun") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("blr") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('enfield') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('fnfal') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel("garand") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("henrybb") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("hk91", "hk91") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("hkg3") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("hksl8") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('lsr') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel("l96") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('m16') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('m1903') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel("m21") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("m249") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('m4c') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel("marlin60") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('mini14') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('mosin') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('r25') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel("rem700") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("rem788", "rem700", "rem788") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("rug1022") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("sa80") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("sig550") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("sig551", "sig551", "sig550") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('sks') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('sr25') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel("svd") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("winm70", "rem700", "winm70") -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel("winm94") -- 3.09.2, credits to Filibuster Rhymes

    -- shotguns
    ModelLoader.addModel('benellim3') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('benellim3so', 'benellim3so', 'benellim3') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('benellixm1014', 'benellixm1014', 'benellim3') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('hawk982') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('ithaca37') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('ithaca37so', 'ithaca37so', 'ithaca37') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('m1216') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('moss590') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('moss590a1', 'moss590a1', 'moss590') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('rem870') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('rem870so', 'rem870so', 'rem870') -- 3.09, credits to Filibuster Rhymes
    ModelLoader.addModel('silverhawk') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('silverhawkso', 'silverhawkso', 'silverhawk') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('win1887') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('win1887so', 'win1887so', 'win1887') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('striker') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('spas12') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('stevens320', 'stevens320', 'hawk982') -- 3.09.2, credits to Filibuster Rhymes
    ModelLoader.addModel('vepr12') -- 3.09.2, credits to Filibuster Rhymes


    Logger.info("All 3d models loaded.")
end

Events.OnGameBoot.Add(ModelLoader.loadModels)
return ModelLoader
