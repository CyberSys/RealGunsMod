--[[
    This file contains all the default firearm data
]]

--[[  ORGM.registerFirearm(name, definition)

    Registers a firearm type with ORGM.
    
    name = string name of the firearm (without module prefix)
    definition = a table containing the firearm stats. Valid table keys/value pairs are:
        moduleName = nil, or string module name this item is from. If nil, ORGM is used
        actionType = ORGM.AUTO | ORGM.BOLT | ORGM.LEVER | ORGM.PUMP | ORGM.BREAK | ORGM.ROTARY
        triggerType = ORGM.SINGLEACTION | ORGM.DOUBLEACTION | ORGM.DOUBLEACTIONONLY
        lastChanged = nil| integer > 0 <= ORGM.BUILD_ID, the ORGM version this firearm was 
            last changed in (see shared\1LoadOrder\ORGMCore.lua)
        rackTime = nil | integer > 0, if nil then ORGM.Settings.DefaultRackTime is used
        reloadTime = nil | integer > 0, if nil then ORGM.Settings.DefaultReloadTime is used
        selectFire = nil | ORGM.SEMIAUTOMODE | ORGM.FULLAUTOMODE
        speedLoader = nil | string name of registered magazine
        isCivilian = nil | "Common" | "Rare" | "VeryRare"
        isPolice = nil | "Common" | "Rare" | "VeryRare"
        isMilitary = nil | "Common" | "Rare" | "VeryRare"
        
        -- sound options
        soundProfile = string name of a key in ORGM.SoundProfiles (see shared\1LoadOrder\ORGMCore.lua)
        
        -- these sound keys are automatically set by the soundProfile, but can be over written.
        -- they are all nil or the string name of a sound file in media/sound/*.ogg
        clickSound = nil | filename
        insertSound = nil | filename
        ejectSound = nil | filename
        rackSound = nil | filename
        openSound = nil | filename
        closeSound = nil | filename
        cockSound = nil | filename
        
        -- firearm details, these string fill out the 'Inspection' window.  
        classification = nil | string, the 'type' of weapon (Revolver, Assault Rifle, etc)
        country = nil | string, the initial country of manufacture
        manufacturer = nil | string, the initial company (or factory) of manufacture
        year = nil | integer, the initial year of manufacture, this is used by ORGM.Settings.LimitYear
        description = nil | string, background information

]]
local register = ORGM.registerFirearm

register("ColtAnac", {
    actionType = ORGM.ROTARY,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Revolver",
    isCivilian = "Common",
    speedLoader = 'SpeedLoader446',
    
    classification = "Revolver",
    year = 1990,
    country = "United States",
    manufacturer = "Colt's Manufacturing Company",
    description = "The Colt Anaconda is a large frame double-action revolver featuring a full length under-barrel ejection-rod lug and six round cylinder, designed and produced by the Colt's Manufacturing Company. Chambered for the powerful .44 Magnum and .45 Colt centerfire ammunition cartridges, the Anaconda marked the Hartford, Connecticut firm’s first foray into the popular large-bore Magnum pistol market.",
    serialnumber = "MM#####",
})
register("ColtPyth", {
    actionType = ORGM.ROTARY,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Revolver",
    isCivilian = "Common",
    speedLoader = 'SpeedLoader3576', 
    
    classification = "Revolver",
    year = 1955,
    country = "United States",
    manufacturer = "Colt's Manufacturing Company",
    description = "The Colt Python is a .357 Magnum caliber revolver formerly manufactured by Colt's Manufacturing Company of Hartford, Connecticut. It is sometimes referred to as a 'Combat Magnum'. Built on Colt's large I-frame. Pythons have a reputation for accuracy, smooth trigger pull, and a tight cylinder lock-up.",
    -- serial pattern varies by year
    serialnumber = "######"
})
register("ColtSAA", {
    actionType = ORGM.ROTARY,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Revolver",
    isCivilian = "Rare",
    
    classification = "Revolver",
    year = 1873,
    country = "United States",
    manufacturer = "Colt's Manufacturing Company",
    description = "The Colt Single Action Army, also known as the Single Action Army, SAA, Model P, Peacemaker, M1873, and Colt .45 is a single-action revolver with a revolving cylinder holding six metallic cartridges. It was designed for the U.S. government service revolver trials of 1872 by Colt's Patent Firearms Manufacturing Company (today's Colt's Manufacturing Company) and was adopted as the standard military service revolver until 1892.\n" ..
        "The Colt SAA has been offered in over 30 different calibers and various barrel lengths. Its overall appearance has remained consistent since 1873. Colt has discontinued its production twice, but brought it back due to popular demand. The revolver was popular with ranchers, lawmen, and outlaws alike, but as of the early 21st century, models are mostly bought by collectors and re-enactors. Its design has influenced the production of numerous other models from other companies.\n"..
        "The Colt SAA 'Peacemaker' revolver is a famous piece of Americana known as 'The Gun That Won the West'."
})
register("RugAlas", {
    actionType = ORGM.ROTARY,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Revolver",
    isCivilian = "Rare",
    speedLoader = 'SpeedLoader4546', 

    classification = "Revolver",
    year = 2005,
    country = "United States",
    manufacturer = "Sturm, Ruger & Co.",
    description = "Introduced in 2005, the Ruger Alaskan is Ruger's first short-barrelled, big-bore revolver, conceived by Ruger president Steve Sanetti and intended for defense against large, dangerous animals. The ​2 1⁄2-inch barrel on the Alaskan ends at the end of the frame, and the scope bases are omitted. The interchangeable front sight is replaced with a pinned-in ramp sight, but the adjustable rear sight is retained. The Alaskan is available in .44 Magnum, .454 Casull/.45 Colt, and .480 Ruger, with the .480 model originally a 6-shot, replaced in 2008 with a 5-shot model to aid in spent cartridge extraction. All Alaskans feature a brushed stainless finish and a Hogue Tamer rubber finger groove grip, rather than the standard GP100 style. The .454 and .480 versions have an unfluted cylinder while the .44 Magnum features a fluted cylinder.",
})
register("RugBH", {
    actionType = ORGM.ROTARY,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Revolver",
    isCivilian = "Rare",

    classification = "Revolver",
    year = 1955,
    country = "United States",
    manufacturer = "Sturm, Ruger & Co.",
    description = "The Ruger Blackhawk is a 6-shot, single-action revolver manufactured by Ruger. It is produced in a variety of finishes, calibers, and barrel lengths." ..
        "Ruger introduced the Blackhawk in 1955. Chambered for the .357 Magnum, the Blackhawk was a simple and strong design, and it sold well. In 1956, as Smith & Wesson was introducing the new .44 Magnum, Ruger quickly developed a variant of the Blackhawk in the new cartridge. Ruger achieved wide popularity with this firearm in a hotly anticipated new cartridge, which was both cheaper and more readily available than the Smith & Wesson Model 29 revolver. According to popular legend, Ruger was able to field a .44 Magnum revolver at nearly the same time as Smith & Wesson due to a Ruger employee finding expended .44 Magnum cartridge cases at a scrapyard and deducing that Smith & Wesson was about to launch a new cartridge.",
})
register("RugGP100", {
    actionType = ORGM.ROTARY,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Revolver",
    isCivilian = "Rare",
    speedLoader = 'SpeedLoader3576', 

    classification = "Revolver",
    year = 1985,
    country = "United States",
    manufacturer = "Sturm, Ruger & Co.",
    description = "The GP100 is a family/line of double action six or seven -shot (.357 Magnum) seven-shot (.327 Federal Magnum) or ten-shot (.22 LR) revolvers made by Sturm, Ruger & Co., manufactured in the United States. It was introduced in 1985 as a second generation of the Ruger double-action, exposed-hammer revolvers intended to replace Ruger's Security- / Service- / Speed-Six line. It was made stronger with the intent to fire an unlimited number of full-power .357 Magnum rounds and has been produced in a number of variations with three basic barrel lengths (3 in / 76 mm, 4 in / 102 mm, and 6 in / 152 mm), various barrel profiles (with offset full or short ejector rod shrouds), fixed or adjustable sights, and in blued carbon steel, and polished or satin stainless steel.",
})
register("RugRH", {
    actionType = ORGM.ROTARY,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Revolver",
    isCivilian = "Rare",
    speedLoader = 'SpeedLoader446', 

    classification = "Revolver",
    year = 1979,
    country = "United States",
    manufacturer = "Sturm, Ruger & Co.",
    description = "The Ruger Redhawk is a DA/SA, large-frame revolver that was first introduced in 1979 by Sturm, Ruger & Company. Made from high-grade steel, it is available in a stainless steel finish. The Redhawk is reinforced to handle extra stress, making it very popular for use by handloaders as it handles the hottest of Magnum loads with ease. In addition, the cylinder itself is longer than most competitors', allowing ammunition to be loaded to a longer overall length. This allows for either increased powder capacity, heavier (and therefore longer) bullets without compromising the powder load, or a combination of both. Custom ammunition manufacturers even have loads made specifically for Ruger revolvers that cannot fit in shorter chambers or revolvers of weaker construction (such as the Smith & Wesson Model 29). This makes the Redhawk popular as a bear defense gun among hunters and trappers.",
})
register("RugSec6", {
    actionType = ORGM.ROTARY,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Revolver",
    isCivilian = "Common",
    speedLoader = 'SpeedLoader386', 

    classification = "Revolver",
    year = 1972,
    country = "United States",
    manufacturer = "Sturm, Ruger & Co.",
    description = "The Ruger Security-Six and its variants, the Service-Six and Speed-Six are a product line of double-action revolvers introduced in 1972 and manufactured until 1988 by Sturm, Ruger & Company. These revolvers were marketed to law enforcement duty issue, military, and civilian self-defense markets.\n"..
        "The introduction of the Security-Six and its variants marked Sturm Ruger's first attempt to enter the double-action revolver market. The corporation's earlier designs had been Colt Peacemaker-style single-action revolvers. Ruger used investment casting for most parts in an effort to hold down production costs. As with all Ruger firearms, the Security-Six revolvers were robustly designed with large, heavy-duty parts for durability and to allow for investment casting. The 'six series' line enjoyed sales success because of their basic features, solid construction, and competitive pricing.",
})
register("SWM10", {
    actionType = ORGM.ROTARY,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Revolver",
    isCivilian = "Common",
    speedLoader = 'SpeedLoader386', 

    classification = "Revolver",
    year = 1899,
    country = "United States",
    manufacturer = "Smith & Wesson",
    description = "The Smith & Wesson Model 10, previously known as the Smith & Wesson .38 Hand Ejector Model of 1899, the Smith & Wesson Military & Police or the Smith & Wesson Victory Model, is a revolver of worldwide popularity. It was the successor to the Smith & Wesson .32 Hand Ejector Model of 1896 and was the first Smith & Wesson revolver to feature a cylinder release latch on the left side of the frame like the Colt M1889. In production since 1899, it is a six-shot double-action revolver with fixed sights. Over its long production run it has been available with barrel lengths of 2 in (51 mm), 3 in (76 mm), 4 in (100 mm), 5 in (130 mm), and 6 in (150 mm). Barrels of 2.5 inches (64 mm) are also known to have been made for special contracts. Some 6,000,000 of the type have been produced over the years, making it the most popular centerfire revolver of the 20th century.",
})
register("SWM19", {
    actionType = ORGM.ROTARY,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Revolver",
    isCivilian = "Rare",
    speedLoader = 'SpeedLoader3576', 

    classification = "Revolver",
    year = 1957,
    country = "United States",
    manufacturer = "Smith & Wesson",
    description = "The S&W Model 19 is a revolver produced by Smith & Wesson on its K-frame. The model 19 is chambered for .357 Magnum. The K-frame is somewhat smaller and lighter than the original N-frame .357, usually known as the S&W Model 27."..
        "Retired Assistant Chief Patrol Inspector of the U.S. Border Patrol, famous gunfighter, and noted firearms and shooting skills writer Bill Jordan consulted with Smith & Wesson on the design and characteristics of the Model 19. Jordan's idea for a 'peace officer's dream' sidearm was a heavy-barreled four-inch K-Frame .357 Magnum with a shrouded barrel like the big N-frame .357 and adjustable sights. After a year of experimentation with improved-strength steels and special heat-treating processes, the result was the .357 Combat Magnum (later designated Model 19), with the first serial-number gun (K260,000) presented to Jordan on November 15, 1955.",
})
register("SWM252", {
    actionType = ORGM.ROTARY,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Revolver",
    isCivilian = "Rare",
    speedLoader = 'SpeedLoader456', 

    classification = "Revolver",
    year = 1955,
    country = "United States",
    manufacturer = "Smith & Wesson",
    description = "The Smith & Wesson Model 25-2 is designed with both a single-action and double-action trigger, in .45 Automatic Colt Pistol caliber. It is designed with a barrel length of 6 1/2 inches, and it has a N-frame with a bright blue finish. The pistol comes with a firm grip and the hammer is imprinted with three T’s that denotes Target hammer, Target trigger and Target grips. The Model 25-2 is the manual ejector model of 1955, which is the result of attaching a heavier barrel to the manual ejector model of 1950. The Model 25-2 is what the manufacturer called by the manual ejector form of the year 1955, naming started in 1957. This Model 25-2 Gun pistol is to designate an alteration to the left hand ejector rod threads. This revolver has virtually been exclusively 45 Automatic Colt Pistol.",
})
register("SWM29", {
    actionType = ORGM.ROTARY,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Revolver",
    isCivilian = "Rare",
    speedLoader = 'SpeedLoader446',
    
    classification = "Revolver",
    year = 1955,
    country = "United States",
    manufacturer = "Smith & Wesson",
    description = "The Smith & Wesson Model 29 is a six-shot, double-action revolver chambered for the .44 Magnum cartridge.\n"..
        "The Model 29 was offered with 3in, 4in, 5in, 6in, 6 1/2in, 8 3/8in, and later 10 5/8in barrel lengths as standard models. Other barrel lengths were available either by special order from Smith & Wesson's Custom Shop or custom built by gunsmiths. The 5in barreled variant had a full length underlug. Finish options available included a highly polished blued or nickel-plated surface.\n"..
        "At the time of its introduction, the Model 29 was the most powerful production handgun. It was made famous by association with the fictional character 'Dirty Harry' Callahan.",
})
register("SWM36", {
    actionType = ORGM.ROTARY,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Revolver",
    isCivilian = "Common",
    speedLoader = 'SpeedLoader385', 

    classification = "Revolver",
    year = 1950,
    country = "United States",
    manufacturer = "Smith & Wesson",
    description = "The Smith & Wesson Model 36 is a revolver chambered for .38 Special. It is one of several models of 'J-frame' Smith & Wesson revolvers. It was introduced in 1950, and is still in production.\n" ..
        "The design was introduced at the International Association of Chiefs of Police (IACP) convention in 1950, and was favorably received. A vote was held to name the new revolver, and the name 'Chiefs Special' won. A three-inch barreled version of this design went into production immediately, due to high demand. It was available in either a blued or nickel-plated finish. It was produced as the 'Chiefs Special' until 1957, when it then became the Model 36. The 'Chiefs Special' continued to be manufactured as a separate variant.",
})
register("SWM610", {
    actionType = ORGM.ROTARY,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Revolver",
    isCivilian = "Rare",
    speedLoader = 'SpeedLoader10mm6', 
    
    classification = "Revolver",
    year = 1990,
    country = "United States",
    manufacturer = "Smith & Wesson",
    description = "The Model 610 is a six-shot, double-action revolver chambered for the 10mm Auto cartridge.\n"..
        "The 610 was manufactured by Smith & Wesson on the N-frame, similar to the Smith & Wesson Model 29 in .44 Magnum, and the Model 28 in .357 Magnum. The 10mm Auto is a rimless automatic pistol cartridge so moon clips are used to hold cartridges when loading and extracting spent cases en bloc. Since the .40 Smith & Wesson is a shorter, less powerful variant of the 10mm Auto but has the same diameter, the Model 610 can chamber and fire .40 Smith & Wesson rounds.",
})
register("Taurus454", {
    actionType = ORGM.ROTARY,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Revolver",
    isCivilian = "Common",
    speedLoader = 'SpeedLoader4546', 
    
    classification = "Revolver",
    year = 1997,
    country = "Brazil",
    manufacturer = "Taurus International",
    description = "The Raging Bull is a revolver manufactured by the Brazilian Taurus International firearm company.\n"..
        "In its larger calibers it is marketed as a hunter's sidearm because it is a potent weapon with plenty of stopping power. The .454 Casull cartridge has been used to hunt animals as large as Cape Buffalo.\n"..
        "The Raging Bull has a ported barrel and a red rubber strip along the back of its grip, which cushions the shooter's hand and lowers perceived recoil. Functionally, the Raging Bull has a manually operated front cylinder latch, whose release can be seen on the crane. Front cylinder latches are required for such high-powered double-action revolvers, and are found on the Ruger Super Redhawk and the S&W Model 500 revolver, but they are actuated by the rear cylinder latch. The manually operated latch on the Raging Bull is simpler yet equally strong, but requires two hands to open the cylinder.",
})
    --************************************************************************--
    -- semi pistols
    --************************************************************************--
register("AutomagV", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Pistol-Large",
    isCivilian = "Rare",
    
    classification = "Semi-Automatic Pistol",
    year = 1993,
    country = "United States",
    manufacturer = "Arcadia Machine and Tool",
    description = "The AMT Automag V is a large single action semi-automatic pistol made by Arcadia Machine and Tool (AMT). The weapon was created by Harry Sanford, who also invented the original .44 AutoMag pistol. One of the extremely small number of handguns that fire a .50 caliber cartridge, it is also one of the few semi automatic guns that fires the .50 Action Express cartridge, it is said to be 'the most ergonomic and lightweight of all of those autoloaders'. Its built-in compensator ports in the barrel assist in keeping muzzle rise to tolerable levels. The recoil, however, is still surprisingly brisk even for the most experienced shooter. The Automag V has a 5-shot magazine capacity (5+1 total) and is, like all of the AMT pistols, made primarily of cast stainless steel."
})
register("BBPistol", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Pistol-Small",
    isCivilian = "Common",

    classification = "Air Pistol",
    year = 2007, -- unknown, earliest reference i can find for this model dates to 2008
    country = "United States",
    manufacturer = "Daisy Outdoor Products",
    description = "The Daisy Powerline 201 is a dual spring air powered/CO2 powered BB pistol with manual safety.",
})
register("Ber92", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTION, -- this can be DAO, depending on model
    soundProfile = "Pistol-Small",
    isCivilian = "Common", 
    isPolice = "Common", 
    isMilitary = "Common",

    classification = "Semi-Automatic Pistol",
    year = 1975,
    country = "Italy",
    manufacturer = "Fabbrica d'Armi Pietro Beretta",
    description = "The Beretta 92 is a series of semi-automatic pistols designed and manufactured by Beretta of Italy.\n"..
        "The United States' military replaced the M1911A1 .45 ACP pistol in 1985 with the Beretta 92FS, designated as the M9.\n"..
        "The Beretta 92 pistol evolved from earlier Beretta designs, most notably the M1923 and M1951. From the M1923 comes the open slide design, while the alloy frame and locking block barrel, originally from Walther P38, were first used in the M1951. The grip angle and the front sight integrated with the slide were also common to earlier Beretta pistols. What were perhaps the Model 92's two most important advanced design features had first appeared on its immediate predecessor, the 1974 .380 caliber Model 84. These improvements both involved the magazine, which featured direct feed; that is, there was no feed ramp between the magazine and the chamber. In addition, the magazine was a 'double-stacked' design, a feature originally introduced in 1935 on the Browning Hi-Power.",
})
register("BrenTen", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Pistol-Small",
    isCivilian = "Rare",

    classification = "Semi-Automatic Pistol",
    year = 1983,
    country = "United States",
    manufacturer = "Dornaus & Dixon Enterprises Inc.",
    description = "The Bren Ten is a semi-automatic pistol chambered for 10mm Auto that was made by Dornaus & Dixon Enterprises Inc. from 1983 to 1986. While the Bren Ten's design has an appearance similar to the 9×19mm Parabellum CZ-75, it was larger and stronger with several unique design elements that made it a distinctly separate firearm. The design was produced only in small numbers before the company went bankrupt. Subsequent attempts to bring the firearm back into production have been unsuccessful.\n" ..
        "The Bren Ten remains a weapon of some controversy. Many enthusiasts consider it to be one of the best pistols of its era, and the 10mm Auto is one of the most powerful semi-automatic pistol rounds. Issues reported with the gun when it was in its original production run included some of the units delivered with missing or inoperable magazines. Spare magazines were hard to find and were relatively expensive.",
})
register("BrownHP", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Pistol-Small",
    isCivilian = "Common",

    classification = "Semi-Automatic Pistol",
    year = 1935,
    country = "Belgium",
    manufacturer = "Fabrique Nationale d'Herstal",
    description = "The Browning Hi Power is a single-action, semi-automatic handgun available in 9mm and .40 S&W calibers. It is based on a design by American firearms inventor John Browning, and completed by Dieudonné Saive at Fabrique Nationale (FN) of Herstal, Belgium. Browning died in 1926, several years before the design was finalized. The Hi-Power is one of the most widely used military pistols in history, having been used by the armed forces of over 50 countries.\n"..
        "The Hi Power name alludes to the 13-round magazine capacity, almost twice that of contemporary designs such as the Luger or Colt M1911. The pistol is often referred to as an HP (for 'Hi-Power' or 'High-Power'), GP (for the French term, 'Grande Puissance') or BHP (Browning High-Power). The terms P-35 and HP-35 are also used, based on the introduction of the pistol in 1935. It is most often called the 'Hi Power', even in Belgium.",
})
register("Colt38S", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Pistol-Small",
    isCivilian = "Rare",

    classification = "Semi-Automatic Pistol",
    year = 1950,
    country = "United States",
    manufacturer = "Colt's Manufacturing Company",
    description = "The Colt Commander is a single-action, semi-automatic, magazine-fed, and recoil-operated handgun based on the John M. Browning designed M1911. It was the first mass-produced pistol with an aluminium alloy frame and the first Colt pistol to be chambered in 9mm Parabellum.\n"..
        "Colt made several variations of the Commander and offered it in .45 ACP and .38 Super chamberings. Other variants followed with different degrees of factory accurizing and materials.\n"..
        "The Colt Commander was Colt's Manufacturing Company's candidate in a U.S. government post-World War II trial to find a lighter replacement for the M1911 pistol that would be issued to officers. Requirements were issued in 1949 that the pistol had to be chambered for 9 mm Parabellum and could not exceed 7 inches in length or weigh more than 25 ounces.",
})
register("ColtDelta", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Pistol-Small",
    isCivilian = "Rare",

    classification = "Semi-Automatic Pistol",
    year = 1987,
    country = "United States",
    manufacturer = "Colt's Manufacturing Company",
    description = "The Colt Delta Elite is a modified M1911 pistol, Series 80 configuration, chambered for the 10mm Auto. It is similar to the M1911 in design and operation. Colt manufactured both stainless steel and blued versions with eight-round magazines. A Delta Gold Cup model was also offered for target competition. The stainless steel Government Model version has recently been reintroduced.\n"..
        "Released in 1987 it was the second commercial pistol chambered in the 10mm cartridge, following the Dornaus & Dixon manufactured Bren Ten pistol, which was released in 1983 and pioneered the 10mm Auto chambering.\n"..
        "The Delta Elite is a standard M1911 design, with a few minor differences from the latest Series 80 derivative of that pistol. It carries the rowel 'Commander' type hammer of that pistol and the same overall features of the 1911 that have made it so popular with users. However, the Delta Elite carries a stiffer double recoil spring to handle the increased recoil of the 10mm round.",
})
register("CZ75", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Pistol-Small",
    isCivilian = "Rare",
    lastChanged = 12, -- changed in 3.00-alpha
    
    classification = "Semi-Automatic Pistol",
    year = 1975,
    country = "Czech Republic",
    --manufacturer = "Česká zbrojovka Uherský Brod",
    manufacturer = "Ceska zbrojovka Uhersky Brod",
    --description = "The CZ 75 is a pistol made by Česká zbrojovka Uherský Brod (CZUB) in the Czech Republic. First introduced in 1975, it is one of the original 'wonder nines' featuring a staggered-column magazine, all-steel construction, and a hammer forged barrel. It is widely distributed throughout the world. It is the most common handgun in the Czech Republic.\n"..
    description = "The CZ 75 is a pistol made by Ceska zbrojovka Uhersky Brod (CZUB) in the Czech Republic. First introduced in 1975, it is one of the original 'wonder nines' featuring a staggered-column magazine, all-steel construction, and a hammer forged barrel. It is widely distributed throughout the world. It is the most common handgun in the Czech Republic.\n"..
        "The CZ 75 is a short recoil operated, locked breech pistol. It uses the Browning linkless cam locking system similar to that used in the Browning Hi-Power pistol, where the barrel and slide are locked together on firing, using locking lugs milled into the barrel mating with recesses in the roof of the slide. An enclosed cam track integral with the barrel is actuated by the slide release lever's transverse pin. After the first few millimetres of the recoil stroke, the barrel is cammed downwards at the rear, enabling the slide to continue the recoil stroke and eject the spent cartridge.",
})
register("DEagle", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Pistol-Large",
    isCivilian = "Rare",

    classification = "Semi-Automatic Pistol",
    year = 1982,
    country = "United States, Israel",
    manufacturer = "Israel Military Industries",
    description = "The IMI Desert Eagle is a semi-automatic handgun notable for chambering the largest centerfire cartridge of any magazine-fed, self-loading pistol. Magnum Research Inc. (MRI) designed and developed the Desert Eagle. The design was refined and the pistols were manufactured by Israel Military Industries\n"..
        "The Desert Eagle is fed with a detachable magazine. Magazine capacity is 9 rounds in .357 Magnum, 8 rounds in .44 Magnum, and 7 rounds in .50 Action Express. The Desert Eagle's barrel features polygonal rifling. The pistol is primarily used for hunting, target shooting, and silhouette shooting.",
})
register("DEagleXIX", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Pistol-Large",
    isCivilian = "Rare",

    classification = "Semi-Automatic Pistol",
    year = 1982,
    country = "United States, Israel",
    manufacturer = "Israel Military Industries",
    description = "The IMI Desert Eagle is a semi-automatic handgun notable for chambering the largest centerfire cartridge of any magazine-fed, self-loading pistol. Magnum Research Inc. (MRI) designed and developed the Desert Eagle. The design was refined and the pistols were manufactured by Israel Military Industries\n"..
        "The Desert Eagle is fed with a detachable magazine. Magazine capacity is 9 rounds in .357 Magnum, 8 rounds in .44 Magnum, and 7 rounds in .50 Action Express. The Desert Eagle's barrel features polygonal rifling. The pistol is primarily used for hunting, target shooting, and silhouette shooting.",
})
register("FN57", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY, -- depending on model, this can be SA (FN57 Tactical)
    soundProfile = "Pistol-Small",
    isCivilian = "Rare",
    isPolice = "Rare",
    isMilitary = "Rare",

    classification = "Semi-Automatic Pistol",
    year = 1998,
    country = "Belgium",
    manufacturer = "Fabrique Nationale d'Herstal",
    description = "The FN Five-seven, trademarked as the Five-seveN, is a semi-automatic pistol designed and manufactured by Fabrique Nationale d’Armes de Guerre-Herstal (FN Herstal) in Belgium. The pistol is named for its 5.7mm (.224in) bullet diameter, and the trademark capitalization style is intended to emphasize the manufacturer's initials—FN.\n"..
        "The Five-seven pistol was developed in conjunction with the FN P90 personal defense weapon and the FN 5.7×28mm cartridge. The P90 was introduced in 1990, and the Five-seven was introduced in 1998 as a pistol using the same 5.7×28mm ammunition. Developed as a companion pistol to the P90, the Five-seven shares many of its design features: it is a lightweight polymer-based weapon with a large magazine capacity, ambidextrous controls, low recoil, and the ability to penetrate body armor when using certain cartridge types.",
})
register("Glock17", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY, -- this is technically not quite true, but as close as its going to get
    soundProfile = "Pistol-Small",
    isCivilian = "Common",

    classification = "Semi-Automatic Pistol",
    year = 1982,
    country = "Austria",
    manufacturer = "Glock Ges.m.b.H.",
    description = "The Glock pistol, sometimes referred to by the manufacturer as a Glock 'Safe Action' pistol and colloquially as a Glock, is a series of polymer-framed, short recoil-operated, locked-breech semi-automatic pistols designed and produced by Glock Ges.m.b.H., located in Deutsch-Wagram, Austria. It entered Austrian military and police service by 1982 after it was the top performer on an exhaustive series of reliability and safety tests.\n"..
        "The Glock 17 is the original 9×19mm Parabellum model, with a standard magazine capacity of 17 rounds, introduced in 1982. Several modified versions of the Glock 17 have been introduced.",
})
register("Glock20", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Pistol-Small",
    isCivilian = "Common",

    classification = "Semi-Automatic Pistol",
    year = 1991,
    country = "Austria",
    manufacturer = "Glock Ges.m.b.H.",
    description = "The Glock pistol, sometimes referred to by the manufacturer as a Glock 'Safe Action' pistol and colloquially as a Glock, is a series of polymer-framed, short recoil-operated, locked-breech semi-automatic pistols designed and produced by Glock Ges.m.b.H., located in Deutsch-Wagram, Austria. It entered Austrian military and police service by 1982 after it was the top performer on an exhaustive series of reliability and safety tests.\n"..
        "The Glock 20, introduced in 1991, was developed for the then-growing law enforcement and security forces market for the 10mm Auto. The pistol handles both full-power and reduced 'FBI' loads that have reduced muzzle velocity. Due to the longer cartridge and higher pressures, the pistol is slightly larger than the Glock 17, having a roughly 2.5mm (0.1in) greater width and 7mm (0.3in) greater length.",
})
register("Glock21", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Pistol-Small",
    isCivilian = "Common",
    
    classification = "Semi-Automatic Pistol",
    year = 1991,
    country = "Austria",
    manufacturer = "Glock Ges.m.b.H.",
    description = "The Glock pistol, sometimes referred to by the manufacturer as a Glock 'Safe Action' pistol and colloquially as a Glock, is a series of polymer-framed, short recoil-operated, locked-breech semi-automatic pistols designed and produced by Glock Ges.m.b.H., located in Deutsch-Wagram, Austria. It entered Austrian military and police service by 1982 after it was the top performer on an exhaustive series of reliability and safety tests.\n"..
        "The Glock 21 is a .45 ACP version of the Glock 20 designed primarily for the American market. Compared to the Glock 20 chambered in 10mm Auto, the slide of the Glock 21 is lighter to compensate for the lower-energy .45 ACP cartridge. The standard Glock 21 magazine is of the single-position-feed, staggered-column type with a capacity of 13 rounds.",
})
register("Glock22", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Pistol-Small",
    isCivilian = "Common",

    classification = "Semi-Automatic Pistol",
    year = 1990,
    country = "Austria",
    manufacturer = "Glock Ges.m.b.H.",
    description = "The Glock pistol, sometimes referred to by the manufacturer as a Glock 'Safe Action' pistol and colloquially as a Glock, is a series of polymer-framed, short recoil-operated, locked-breech semi-automatic pistols designed and produced by Glock Ges.m.b.H., located in Deutsch-Wagram, Austria. It entered Austrian military and police service by 1982 after it was the top performer on an exhaustive series of reliability and safety tests.\n"..
        "The Glock 22 is a .40 S&W version of the full-sized Glock 17 introduced in 1990. The pistol uses a modified slide, frame, and barrel to account for the differences in size and power of the .40 S&W cartridge. The standard magazine capacity is 15 rounds. The Glock Model 22 is favored and used by several police agencies around the world.",
})
register("HKMK23", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Pistol-Small",
    isCivilian = "Rare",

    classification = "Semi-Automatic Pistol",
    year = 1991,
    country = "Germany",
    manufacturer = "Heckler & Koch GmbH",
    description = "The Heckler & Koch MK 23, MK 23 MOD 0, Mark 23, or USSOCOM MARK 23, is a semi-automatic large-frame pistol chambered in .45 ACP. designed specifically to be an offensive pistol. The USSOCOM version of the MK23 came paired with a laser aiming module (LAM), and suppressor. The USSOCOM MK23 was adopted by the United States Special Operations Command (USSOCOM) for special operations units beating out the nearest competitor, Colt's OHWS. Development of the pistol began in 1991 as special operations representatives identified the need for an 'Offensive Handgun Weapons System-Special Operations Peculiar', and delivery of the pistols began in May 1996 to the special operation units.",
})
register("KahrCT40", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Pistol-Small",
    isCivilian = "Common",
    
    classification = "Semi-Automatic Pistol",
    year = 2014,
    country = "United States",
    manufacturer = "Kahr Arms",
    description = "TP Series pistols are Kahr's premium polymer pistol with match grade polygonal barrels, machined slide stops, dovetailed front sights, and slides with engraved markings and extensive cosmetic rounding. TP Series pistols are provided with three magazines.\n"..
        "CT Series pistols have Kahr's same patented features, but reduce production cost by use of barrels with conventional rifling, fewer operations on the slide exterior resulting in simple roll markings and pinned front sights. CT Series pistols use a metal-injection-molded slide stop, and come in .380 (CT380), 9mm (CT9), .40 (CT40) and .45 (CT45).",
})
register("KahrP380", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Pistol-Small",
    isCivilian = "Common",

    classification = "Semi-Automatic Pistol",
    year = 1999,
    country = "United States",
    manufacturer = "Kahr Arms",
    description = "The Kahr P series is a product line of double action only (DAO) hammerless, striker-fired, short recoil operated, semi-automatic pistols manufactured by Kahr Arms. The target market for the P line is the civilian concealed carry firearms market, as well as being intended as backup weapons for law enforcement officers.\n"..
        "P series pistols are manufactured with stainless steel slides that ride on steel inserts within the polymer frames, preventing the wear which would otherwise be inherent with metal slide to plastic frame contact. Available ammunition chamberings include .380 ACP (P380), 9×19mm (P9), .40 S&W (P40), and .45 ACP (P45). P series pistols are noted for being very no-nonsense and utilitarian in appearance.\n"..
        "P pistols are known for having very smooth and consistent DAO trigger pulls of approximately six pounds, and large and easy to see sights in various configurations, including night sights. Simplified controls exemplified by the lack of a manual safety lever are also positive attributes and contribute to a desirable package for concealment use.",
})
register("KTP32", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Pistol-Small",
    isCivilian = "Common",

    classification = "Semi-Automatic Pistol",
    year = 1999,
    country = "United States",
    manufacturer = "Kel-Tec CNC Industries Inc.",
    description = "The Kel-Tec P-32 is a sub-compact semi-automatic pistol using the short-recoil principle of operation that is chambered in .32 ACP. It was designed by George Kellgren and manufactured by Kel-Tec CNC Industries Inc., of Cocoa, Florida and was designed for concealed carry by civilians and by law enforcement officers as a back-up gun.\n"..
        "Similar in concept to a revolver, the P-32 has no manual safety, relying instead on the long double-action trigger pull and an internal hammer block to provide safe operation. The pistol meets SAAMI guidelines, and will not fire if dropped. The P-32 has passed extensive SAAMI drop-testing at the H. P. White labs, as well as drop tests to military specifications. The trigger must physically be pulled for the gun to fire.",
})
register("M1911", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Pistol-Small",
    isCivilian = "Common", 
    isMilitary = "Common",

    classification = "Semi-Automatic Pistol",
    year = 1911,
    country = "United States",
    manufacturer = "Colt Manufacturing Company",
    description = "The M1911 is a single-action, semi-automatic, magazine-fed, recoil-operated pistol chambered for the .45 ACP cartridge. It served as the standard-issue sidearm for the United States Armed Forces from 1911 to 1986. It was widely used in World War I, World War II, the Korean War, and the Vietnam War. The pistol's formal designation as of 1940 was Automatic Pistol, Caliber .45, M1911 for the original model of 1911 or Automatic Pistol, Caliber .45, M1911A1 for the M1911A1, adopted in 1924. The designation changed to Pistol, Caliber .45, Automatic, M1911A1 in the Vietnam War era.\n"..
        "The U.S. procured around 2.7 million M1911 and M1911A1 pistols in military contracts during its service life. The M1911 was replaced by the 9mm Beretta M9 pistol as the standard U.S. sidearm in October 1986, but due to its popularity among users, it has not been completely phased out. Modernized derivative variants of the M1911 are still in use by some units of the U.S. Army Special Forces, the U.S. Navy and U.S. Marine Corps.",
})
register("RugerMKII", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Pistol-Small",
    isCivilian = "Common",

    classification = "Semi-Automatic Pistol",
    year = 1982,
    country = "United States",
    manufacturer = "Sturm, Ruger & Company",
    description = "The Ruger MK II is a rimfire single-action semi-automatic pistol chambered in .22 Long Rifle and manufactured by Sturm, Ruger & Company. Ruger rimfire pistols are some of the most popular handguns made, with over three million sold.\n"..
        "The MK II ('Mark Two') was made from 1982 to 2005. Previous models include the Standard, Ruger's first model, made from 1949 to 1982, and the MK I Target, made from 1951 to 1982. MK II variations include the Target models, which have heavier barrels and adjustable sights, and the 22/45 models, which have a polymer frame with a grip-angle that matches the Colt 1911 rather than the steel frame's Luger P08-like layout. All Ruger rimfire pistols are chambered in .22 Long Rifle only.",
})
register("RugerSR9", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY, -- like the glock, this isnt really a DAO
    soundProfile = "Pistol-Small",
    isCivilian = "Common",

    classification = "Semi-Automatic Pistol",
    year = 2007,
    country = "United States",
    manufacturer = "Sturm, Ruger & Company",
    description = "The Ruger SR-Series is a line of semi-automatic pistols manufactured by Sturm, Ruger & Company. At 1.18 in (30.0 mm) thick through the grip, it is touted by Ruger as one of the thinnest double-stack pistols available. The SR-series has been marketed as a backup/concealment weapon for law enforcement as well as for civilian concealed carry. The Ruger SR9 chambered for the 9×19mm Parabellum cartridge was introduced in October 2007, and the slightly smaller SR9c came out in January 2010.\n"..
        "The SR9 is the first large-caliber striker fired pistol designed and manufactured by Sturm Ruger. Similar to Glock's 'safe action', the striker fired SR9 features a pre-set trigger. With this type of action, the striker is partially cocked when the slide is cycled, then is fully cocked and released when the trigger is pulled. Due to safety concerns, the moderately long and heavy trigger pull of this type is seen as ideal for law enforcement and self-defense applications.",
})
register("SIGP226", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Pistol-Small",
    isCivilian = "Common", 
    isMilitary = "Rare",

    classification = "Semi-Automatic Pistol",
    year = 1983,
    country = "Germany",
    manufacturer = "SIG Sauer",
    description = "The SIG Sauer P226 is a full-sized, service-type pistol made by SIG Sauer. It is chambered for the 9×19mm Parabellum, .40 S&W, .357 SIG, and .22 Long Rifle. It is essentially the same basic design of the SIG Sauer P220, but developed to use higher capacity, double stack magazines in place of the single stack magazines of the P220. The P226 itself has spawned further sub-variants; the P228 and P229 are both compact versions of the double stack P226 design. The SIG Sauer P226 and its variants are in service with numerous law enforcement and military organizations worldwide.\n"..
        "The P226 was designed for entry into the XM9 Service Pistol Trials (see also Joint Service Small Arms Program) that were held by the US Army in 1984 on behalf of the US armed forces to find a replacement for the M1911A1 and 24 other makes of handgun in US military service. Only the Beretta 92SBF and the SIG P226 satisfactorily completed the trials. According to a GAO report, Beretta was awarded the M9 contract for the 92F due to a lower total package price. The P226 cost less per pistol than the 92F, but SIG's package price with magazines and spare parts was higher than Beretta's. The Navy SEALs, however, later chose to adopt the P226 as the P226 MK25 with special corrosion protection.",
})
register("Spr19119", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Pistol-Small",
    isCivilian = "Common",

    classification = "Semi-Automatic Pistol",
    year = 1985,
    country = "United States",
    manufacturer = "Springfield Armory",
    description = "The M1911 is a single-action, semi-automatic, magazine-fed, recoil-operated pistol chambered for the .45 ACP cartridge. It served as the standard-issue sidearm for the United States Armed Forces from 1911 to 1986. It was widely used in World War I, World War II, the Korean War, and the Vietnam War. The pistol's formal designation as of 1940 was Automatic Pistol, Caliber .45, M1911 for the original model of 1911 or Automatic Pistol, Caliber .45, M1911A1 for the M1911A1, adopted in 1924. The designation changed to Pistol, Caliber .45, Automatic, M1911A1 in the Vietnam War era.\n"..
        "In 1985 Springfield started producing new M1911's for the general public, in .45ACP, 9x19mm, .40S&W and 10mm.",
})
register("Taurus38", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Pistol-Small",
    isCivilian = "Rare",
    lastChanged = 12, -- changed in 3.00-alpha

    classification = "Semi-Automatic Pistol",
    year = 2005,
    country = "Brazil",
    manufacturer = " Forjas Taurus S/A",
    description = "The P38S is a medium frame gun made of drop hammer forged steel slide and forged ordnance grade alloy frame with three-position frame-mounted ambidextrous safety that allows for a classic SA 'cocked-and-locked' mode, as we as functioning as a DA decocking lever.\n"..
        "It features a integrated locking mechanism that requires a 'key' to unlock.  When the Security System is engaged, the pistol cannot be fired or cocked and the gun's manual safety cannot be disengaged. It also features a Loaded Chamber Indicator that provides 'at-a-glance' verification that there is a round in the chamber. When a round is in the chamber, the ejector pops out of the slide, exposing a red strip just behind the ejection port.",
})
register("TaurusP132", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Pistol-Small",
    isCivilian = "Common",

    classification = "Semi-Automatic Pistol",
    year = 2005,
    country = "Brazil",
    manufacturer = " Forjas Taurus S/A",
    description = "The Taurus Millennium series is a product line of double-action only (DAO) and single-action/double-action hammerless, striker-fired, short recoil operated, semi-automatic pistols manufactured by Forjas Taurus S/A (Taurus Forge) in Porto Alegre Brazil. The Millennium line was designed to contend in the civilian concealed carry firearms market, and to be sold as backup weapons for law enforcement officers.\n"..
        "Taurus Millennium series pistols are manufactured with injection molded polymer frames, and blued carbon steel, stainless steel, or titanium slides. The Millennium line includes several innovative safety features including a positive firing pin block as well as the 'Taurus Safety Latch', a transfer bar safety which prevents firing of the pistol unless the trigger is pulled. Together these safeties are intended to assure that the pistol will not fire if it is accidentally dropped. All Millennium models also include a frame-mounted safety lever. This safety feature was found to fail under some circumstances, leading to a recall.",
})
register("WaltherP22", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Pistol-Small",
    isCivilian = "Common",

    classification = "Semi-Automatic Pistol",
    year = 2002,
    country = "Germany",
    manufacturer = "Carl Walther GmbH",
    description = "The P22 is a semi-automatic pistol chambered for .22 LR rimfire ammunition, manufactured by Carl Walther GmbH Sportwaffen. It was introduced in 2002. Walther recommends the use of high velocity ammunition for proper cycling. The P22 is equipped with a magazine disconnect that prevents the trigger from operating unless a magazine is actually inserted and locked into the weapon. It resembles the Walther P99 but it is somewhat smaller.\n"..
        "The P22 may be fired double action at about 11 pounds of force, and operates as a single action with slightly more than 4 pounds of force. The P22 operates by blowback where pressure generated by a firing cartridge is countered by a combination of the inertial weight of the slide assembly and the force of the recoil spring. The action will not open until the projectile has left the barrel and the pressures have dropped to safe levels.",
})
register("WaltherPPK", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Pistol-Small",
    isCivilian = "Common",

    classification = "Semi-Automatic Pistol",
    year = 1935,
    country = "Germany",
    manufacturer = "Carl Walther GmbH",
    description = "The Walther PP (Polizeipistole, or police pistol) series pistols are blowback-operated semi-automatic pistols, developed by the German arms manufacturer Carl Walther GmbH Sportwaffen.\n"..
        "The most common variant is the Walther PPK, a smaller version of the PP with a shorter grip, barrel and frame, and reduced magazine capacity. A new, two-piece wrap-around grip panel construction was used to conceal the exposed back strap. The smaller size made it more concealable than the original PP and hence better suited to plainclothes or undercover work. It was released in 1930.\n"..
        "Adolf Hitler shot and killed himself with his PPK (a 7.65mm/.32 ACP) in the Führerbunker in Berlin. South Korean dictator Park Chung-hee was shot and killed by Kim Jae-gyu, using the Walther PPK. The Walther PPK pistol is famous as fictional secret agent James Bond's gun in many of the films and novels",
})
register("XD40", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY, -- striker trigger mechanism, DAO is close enough
    soundProfile = "Pistol-Small",
    isCivilian = "Common",

    classification = "Semi-Automatic Pistol",
    year = 1999,
    country = "Croatia",
    manufacturer = "HS Produkt",
    description = "The HS2000 (Hrvatski Samokres (Croatian Pistol)), or XD (X-treme Duty) are a series of semi-automatic pistol that are polymer-framed and striker-fired. Manufactured in the city of Karlovac, Croatia by HS Produkt (formerly I.M. Metal), the Springfield Armory XD, XDM, or XD-S is the marketing name for the weapon, which is licensed and sold in the United States by Springfield Armory, Inc.",
})
    --************************************************************************--
    -- smg/machine pistols
    --************************************************************************--

register("AM180", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY, -- again, not really, its closer to SA, but doesnt allow for manual decocking
    soundProfile = "SMG",
    isCivilian = "VeryRare",
    ejectSound = 'ORGMSMG2Out',
    insertSound = 'ORGMSMG2In', 

    classification = "Submachine Gun",
    year = 1972,
    country = "United States",
    manufacturer = "American Arms International",
    description = "The American-180 is a submachine gun developed in the 1960s which fires .22 LR cartridges from a pan magazine. The concept began with the Casull Model 290 that used a flat pan magazine similar to designs widely used prior to World War II. Only 80 Casull M290s were built as the weapon was expensive to produce.\n"..
        "The American-180 was purchased mostly by private parties prior to the American ban on production of machine guns for the US civilian market. The A180 was adopted by the Utah Department of Corrections to arm correctional officers.",
})
register("Ber93R", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTION,
    soundProfile = "Pistol-Small",
    selectFire = 1,
    isCivilian = "VeryRare",
    
    classification = "Machine Pistol",
    year = 1979,
    country = "Italy",
    manufacturer = "Fabbrica d'Armi Pietro Beretta",
    description = "The Beretta 93R is a selective-fire machine pistol, designed and manufactured by Italian firearms manufacturer Beretta in the 1970s for police and military use, that is derived from their semi-automatic Beretta 92. The 'R' stands for Raffica, which is Italian for 'volley', 'flurry', or 'burst' (sometimes spoken 'R' as 'Rapid' in English).\n" ..
        "The Beretta 93R was designed to be used by the Italian counter-terrorism forces of Nucleo Operativo Centrale di Sicurezza and Gruppo di Intervento Speciale but was also adopted by other police and military forces who required a concealable weapon with rapid fire capabilities. The pistol is a development of the Beretta 92 design."
})
register("FNP90", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "SMG",
    selectFire = 1,
    isPolice = "Rare", 
    isMilitary = "Rare",

    classification = "Submachine Gun",
    year = 1990,
    country = "Belgium",
    manufacturer = "Fabrique Nationale d'Herstal",
    description = "The FN P90, also known as the FN Project 1990, is a personal defense weapon (PDW) designed and manufactured by FN Herstal in Belgium. Created in response to NATO requests for a replacement for 9×19mm Parabellum firearms, the P90 was designed as a compact but powerful firearm for vehicle crews, operators of crew-served weapons, support personnel, special forces, and counter-terrorist groups.\n"..
        "Designed in conjunction with the FN Five-seven pistol and FN 5.7×28mm ammunition, development of the weapon began in 1986, and production commenced in 1990 (from which the '90' in its name is derived), whereupon the 5.7×28mm ammunition was redesigned and shortened. A modified version of the P90 with a magazine adapted to use the new ammunition was introduced in 1993",
})
register("Glock18", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "SMG",
    selectFire = 1,
    isCivilian = "VeryRare",

    classification = "Machine Pistol",
    year = 1986,
    country = "Austria",
    manufacturer = "Glock Ges.m.b.H.",
    description = "The Glock pistol, sometimes referred to by the manufacturer as a Glock 'Safe Action' pistol and colloquially as a Glock, is a series of polymer-framed, short recoil-operated, locked-breech semi-automatic pistols designed and produced by Glock Ges.m.b.H., located in Deutsch-Wagram, Austria. It entered Austrian military and police service by 1982 after it was the top performer on an exhaustive series of reliability and safety tests.\n"..
        "The Glock 18 is a selective-fire variant of the Glock 17, developed at the request of the Austrian counter-terrorist unit EKO Cobra, and as a way to internally test Glock components under high strain conditions. Originally produced in 1986, this machine pistol–class firearm has a lever-type fire-control selector switch, installed on the serrated portion of the rear left side of the slide. With the selector lever in the bottom position, the pistol fires fully automatically, and with the selector lever in the top position, the pistol fires semiautomatically.",
})
register("HKMP5", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "SMG",
    selectFire = 1,
    isPolice = "Rare", 
    isMilitary = "Common",

    classification = "Submachine Gun",
    year = 1966,
    country = "Germany",
    manufacturer = "Heckler & Koch GmbH",
    description = "The Heckler & Koch MP5 (from German: Maschinenpistole 5, meaning Submachine gun 5) is a 9mm submachine gun of German design, developed in the 1960s by a team of engineers from the German small arms manufacturer Heckler & Koch GmbH (H&K) of Oberndorf am Neckar. There are over 100 variants of the MP5, including some semi-automatic versions.\n"..
        "The MP5 is one of the most widely used submachine guns in the world, having been adopted by 40 nations and numerous military, law enforcement, intelligence, and security organizations. It is widely used by SWAT teams in North America.",
})
register("HKUMP", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "SMG",
    selectFire = 1,
    isPolice = "Rare", 
    isMilitary = "Common",

    classification = "Submachine Gun",
    year = 1999,
    country = "Germany",
    manufacturer = "Heckler & Koch GmbH",
    description = "The Heckler & Koch UMP (Universale Maschinenpistole, German for 'Universal Submachine Gun') is a submachine gun developed and manufactured by Heckler & Koch. The UMP has been adopted by various agencies such as the U.S. Customs and Border Protection. Heckler & Koch developed the UMP as a lighter and cheaper successor to the MP5, though both remain in production.\n"..
        "As originally designed, the UMP is chambered for larger cartridges (.45 ACP and .40 S&W) than other submachine guns like the MP5, to provide more stopping power against unarmored targets (with slightly lower effectiveness at longer range) than the MP5.",
})
register("Kriss", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "SMG",
    isCivilian = "Rare",

    classification = "Submachine Gun",
    year = 2009,
    country = "United States",
    manufacturer = "KRISS USA, Inc.",
    description = "The KRISS Vector series is a family of weapons based upon the parent submachine gun design developed by KRISS USA, formerly Transformational Defense Industries (TDI). They use an unconventional delayed blowback system combined with in-line design to reduce perceived recoil and muzzle climb.\n"..
        "The Vector CRB (carbine) is a semi-automatic carbine with a permanently affixed extension to the standard 5.5-inch barrel, extending it to 16-inch (410 mm), intended for states with short-barrel rifle bans.",
})
register("KrissA", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "SMG",
    selectFire = 1,
    isCivilian = "VeryRare",

    classification = "Submachine Gun",
    year = 2009,
    country = "United States",
    manufacturer = "KRISS USA, Inc.",
    description = "The KRISS Vector series is a family of weapons based upon the parent submachine gun design developed by KRISS USA, formerly Transformational Defense Industries (TDI). They use an unconventional delayed blowback system combined with in-line design to reduce perceived recoil and muzzle climb.\n"..
        "The name Kriss comes from a Southeast Asian dagger with a flame-shaped blade.",
})
register("KTPLR", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    isCivilian = "Rare",

    classification = "Submachine Gun",
    year = 2006,
    country = "United States",
    manufacturer = "Kel-Tec CNC Industries Inc.",
    description = "The Kel-Tec PLR-16 is a gas-operated, semi-automatic pistol chambered in 5.56 NATO, manufactured by Kel-Tec Industries of Florida.\n"..
        "The PLR (Pistol, Long Range) was designed for recreational target shooting, and small game, varmint, or predator hunting. Due to the PLR's 9.25 in (235mm) barrel, the 5.56×45mm bullet's velocity is slightly reduced compared to its velocity from a traditionally 20in (510mm) barrel.",
})
register("M1A1", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "SMG",
    isCivilian = "Rare",

    classification = "Submachine Gun",
    year = 1921,
    country = "United States",
    manufacturer = "Auto-Ordnance Company (originally)",
    description = "The Thompson submachine gun is an American submachine gun, invented by John T. Thompson in 1918, that became infamous during the Prohibition era. It was a common sight in the media of the time, being used by both law enforcement officers and criminals. The Thompson submachine gun was also known informally as the 'Tommy Gun', 'Annihilator', 'Chicago Typewriter', 'Chicago Piano', 'Chicago Style', 'Chicago Organ Grinder', 'Trench Broom', 'Trench Sweeper', 'The Chopper', and simply 'The Thompson'.\n"..
        "The Thompson was favored by soldiers, criminals, police, and civilians alike for its large .45 ACP cartridge, accuracy, and high volume of fully automatic fire. It has since gained popularity among civilian collectors for its historical significance.",
})
register("Mac10", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "SMG",
    isCivilian = "Rare",

    classification = "Submachine Gun",
    year = 1970,
    country = "United States",
    manufacturer = "Military Armament Corporation",
    description = "The Military Armament Corporation Model 10, officially abbreviated as 'M10' and 'M-10', and more commonly known as the MAC-10, is a compact, blowback operated machine pistol that was developed by Gordon B. Ingram in 1964. It is chambered in either .45 ACP or 9mm.\n"..
        "Noting the weapon's poor accuracy, in the 1970s International Association of Police Chiefs weapons researcher David Steele described the MAC series as 'fit only for combat in a phone booth'.",
})
register("Mac11", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "SMG",
    isCivilian = "Rare",

    classification = "Machine Pistol",
    year = 1972,
    country = "United States",
    manufacturer = "Military Armament Corporation",
    description = "The Ingram MAC-11 (Military Armament Corporation Model 11) is a subcompact machine pistol developed by American gun designer Gordon Ingram at the Military Armament Corporation (MAC) during the 1970s. The weapon is a sub-compact version of the Model 10 (MAC-10), and is chambered to fire the smaller .380 ACP round.\n"..
        "Noting the weapon's poor accuracy, in the 1970s International Association of Police Chiefs weapons researcher David Steele described the MAC series as 'fit only for combat in a phone booth'.",
})
register("Skorpion", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Pistol-Small",
    isCivilian = "VeryRare",

    classification = "Machine Pistol",
    year = 1961,
    country = "Czech Republic",
    --manufacturer = "Česká zbrojovka Uherský Brod",
    manufacturer = "Ceska zbrojovka Uhersky Brod",
    description = "The Skorpion vz. 61 is a Czechoslovak 7.65 mm machine pistol developed in 1959 by Miroslav Rybar (1924–1970) and produced under the official designation Samopal vzor 61 ('submachine gun model 1961') by the Ceska zbrojovka arms factory in Uhersky Brod from 1961 to 1979.\n"..
        "Although it was developed for use with security forces and special forces, the weapon was also accepted into service with the Czechoslovak Army, as a personal sidearm for lower-ranking army staff, vehicle drivers, armoured vehicle personnel and special forces.\n"..
        "It was also used by armed groups, including the Irish Republican Army, Irish National Liberation Army and the Italian Red Brigades. The latter used the Skorpion in the 1978 kidnapping of Aldo Moro and was used to kill Moro. In the 1990s the Gang de Roubaix used the Skorpion in a series of attacks in France.",
})
register("Uzi", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "SMG",
    isCivilian = "Rare",

    classification = "Submachine Gun",
    year = 1950,
    country = "Israel",
    manufacturer = "Israel Military Industries",
    description = "The Uzi is a family of Israeli open-bolt, blowback-operated submachine guns. The Uzi was one of the first weapons to use a telescoping bolt design which allows the magazine to be housed in the pistol grip for a shorter weapon.\n"..
        "The first Uzi submachine gun was designed by Major Uziel Gal in the late 1940s. The prototype was finished in 1950. First introduced to IDF special forces in 1954, the weapon was placed into general issue two years later. The Uzi has found use as a personal defense weapon by rear-echelon troops, officers, artillery troops and tankers, as well as a frontline weapon by elite light infantry assault forces.\n"..
        "The Uzi has been exported to over 90 countries. Over its service lifetime, it has been manufactured by Israel Military Industries, FN Herstal, and other manufacturers. From the 1960s through the 1980s, more Uzi submachine guns were sold to more military, law enforcement and security markets than any other submachine gun ever made.",
})
    --************************************************************************--
    -- rifles
    --************************************************************************--
register("AIAW308", {
    actionType = ORGM.BOLT,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Rifle-Bolt",
    isCivilian = "Rare", 
    isPolice = "Rare", 
    isMilitary = "Rare",
    
    classification = "Bolt-Action Rifle",
    year = 1983,
    country = "United Kingdom",
    manufacturer = "Accuracy International",
    description = "The Accuracy International Arctic Warfare rifle is a bolt-action sniper rifle designed and manufactured by the British company Accuracy International. It has proved popular as a civilian, police, and military rifle since its introduction in the 1980s. The rifles have some features that improve performance in very cold conditions, without impairing operation in less extreme conditions.\n"..
        "The AIAW features special de-icing features allowing it to be used effectively at temperatures as low as −40 °C (−40 °F). The stockhole, bolt, magazine release and trigger guard on the AW are large enough to allow use with heavy Arctic mittens. This version was accepted into use by the Swedish Army in 1991 as the Prickskyttegevar 90 (Psg 90)",
})
register("AKM", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    isCivilian = "Rare",
    
    classification = "Assault Rifle",
    year = 1982,
    country = "China",
    manufacturer = "China North Industries Group Corporation (NORINCO)",
    description = "The AKM ('Modernized Automatic Kalashnikov') is a 7.62mm assault rifle designed by Mikhail Kalashnikov. It is a common modernized variant of the AK-47 rifle developed in the 1940s.\n"..
        "Introduced into service with the Soviet Army in 1959, the AKM is the most ubiquitous variant of the entire AK series of firearms and it has found widespread use with most member states of the former Warsaw Pact and its African and Asian allies as well as being widely exported and produced in many other countries. The production of these Soviet rifles was carried out at both the Tula Arms Plant and Izhmash. It was officially replaced in Soviet frontline service by the AK-74 in the late 1970s, but remains in use worldwide.\n"..
        "This is a semi-automatic version produced by NORINCO.",
        
})
register("AKMA", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    selectFire = 1,
    isCivilian = "VeryRare",
    
    classification = "Assault Rifle",
    year = 1959,
    country = "Soviet Union",
    manufacturer = "Kalashnikov Concern",
    description = "The AKM ('Modernized Automatic Kalashnikov') is a 7.62mm assault rifle designed by Mikhail Kalashnikov. It is a common modernized variant of the AK-47 rifle developed in the 1940s.\n"..
        "Introduced into service with the Soviet Army in 1959, the AKM is the most ubiquitous variant of the entire AK series of firearms and it has found widespread use with most member states of the former Warsaw Pact and its African and Asian allies as well as being widely exported and produced in many other countries. The production of these Soviet rifles was carried out at both the Tula Arms Plant and Izhmash. It was officially replaced in Soviet frontline service by the AK-74 in the late 1970s, but remains in use worldwide.",
})
register("AR10", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    isPolice = 'Rare',
    selectFire = 1,
    
    classification = "Battle Rifle",
    year = 1956,
    country = "United States",
    manufacturer = "ArmaLite, Colt's Manufacturing Company",
    description = "The ArmaLite AR-10 is a 7.62×51mm NATO Battle rifle developed by Eugene Stoner in the late 1950s and manufactured by ArmaLite, then a division of the Fairchild Aircraft Corporation. When first introduced in 1956, the AR-10 used an innovative straight-line barrel/stock design with phenolic composite and forged alloy parts resulting in a small arm significantly easier to control in automatic fire and over 1 lb (0.45 kg) lighter than other infantry rifles of the day. Over its production life, the original AR-10 was built in relatively small numbers, with fewer than 9,900 rifles assembled. However, the ArmaLite AR-10 would become the progenitor for a wide range of firearms.\n"..
        "In 1957, the basic AR-10 design was rescaled and substantially modified by ArmaLite to accommodate the .223 Remington cartridge, and given the designation ArmaLite AR-15. ArmaLite licensed the AR-10 and AR-15 designs to Colt Firearms. The AR-15 eventually became the M16 rifle.",
})
register("AR15", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    isCivilian = "Common",
    
    classification = "Semi-Automatic Rifle",
    year = 1963,
    country = "United States",
    manufacturer = "Colt's Manufacturing Company",
    description = "The Colt AR-15 is a lightweight, 5.56×45mm, magazine-fed, gas-operated semi-automatic rifle. It was designed to be manufactured with the extensive use of aluminum alloys and synthetic materials. It is a semi-automatic version of the United States military M16 rifle. Colt's Manufacturing Company currently uses the AR-15 trademark for its line of semi-automatic AR-15 rifles that are marketed to civilian and law-enforcement customers.\n"..
        "The first mass production version was the Colt AR-15 Sporter, in .223 Remington, with a 20-inch barrel and issued with 5-round magazines. Over the decades, Colt has made many different types of AR-15 rifle and carbine models, including the AR-15, AR-15A2, AR-15A3, AR-15A4, and many other models.",
})
register("BBGun", {
    actionType = ORGM.LEVER,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-Lever",
    isCivilian = "Common",
    rackSound = 'ORGMBBLever',
    clickSound = 'ORGMPistolEmpty',
    insertSound = 'ORGMMagBBLoad',
    rackTime = 3,
        
    classification = "Air Rifle",
    year = 1940,
    country = "United States",
    manufacturer = "Daisy Outdoor Products",
    description = "The Red Ryder BB Gun is a BB gun made by Daisy Outdoor Products and introduced in the spring of 1940 that resembles the Winchester rifle of Western movies. Named for the comic strip cowboy character Red Ryder (created in 1938, and who appeared in numerous films between 1940 and 1950, and on television in 1956), the BB gun is still in production, though the comic strip was cancelled in 1963.\n"..
    "Crazy Earl, a character in the book The Short-Timers and the film, Full Metal Jacket, based on the book, carries a Daisy Red Ryder BB gun in addition to his M16 rifle.\n"..
        "Hogarth Hughes owns and uses a Red Ryder BB Gun in Brad Bird's 1999 film The Iron Giant.",
})
register("BLR", {
    actionType = ORGM.LEVER,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Rifle-Lever",
    isCivilian = "Common",
    lastChanged = 12, -- changed in 3.00-alpha

    classification = "Lever-Action Rifle",
    year = 1969,
    country = "United States",
    manufacturer = "Browning Arms Company",
    description = "The Browning BLR is a lever-action rifle manufactured by Browning Arms Company. It comes in many different variations and is chambered in calibers from .22-250 Remington to .325 WSM and .450 Marlin.\n"..
        "The BLR uses a detachable box magazine. Because of this, the BLR can be chambered for rounds with pointed tip bullets that would be inappropriate for the tubular magazines more commonly used in lever-action rifles. Another difference is the geared lever and bolt design that can accommodate high-pressure modern magnum rounds. Another notable feature is that the trigger moves with the lever when it is operated, which prevents the shooter's trigger finger from being pinched between the lever and the stock when the lever is closed.",
})
register("FNFAL", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    isCivilian = "Rare",
    
    classification = "Semi-Automatic Rifle",
    year = 1982,
    country = "Argentina",
    manufacturer = "F.M.A.P.(Fabrique Militar Argentina Producion)",
    description = "The Argentine Armed Forces officially adopted the FN FAL in 1955, but the first FN made examples did not arrive in Argentina until the autumn of 1958. Subsequently, in 1960, licensed production of FALs began and continued until the mid-to-late 1990s, when production ceased.\n"..
        "The LSR is a semi-automatic version intended for the civilian market.",
})
register("FNFALA", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    selectFire = 1,
    isCivilian = "VeryRare",
    
    classification = "Battle Rifle",
    year = 1953,
    country = "Belgium",
    manufacturer = "Fabrique Nationale d'Herstal",
    description = "The FN FAL, is a battle rifle designed by Belgian small arms designers Dieudonne Saive and Ernest Vervier and manufactured by Fabrique Nationale d'Herstal (FN Herstal).\n"..
        "During the Cold War the FAL was adopted by many countries of the North Atlantic Treaty Organization (NATO), with the notable exception of the United States. It is one of the most widely used rifles in history, having been used by more than 90 countries. Because of its prevalence and widespread usage among the militaries of many NATO and first world countries during the Cold War it was given the title 'The right arm of the Free World'.",
})
register("Garand", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-Auto",
    isCivilian = "Common",
    
    classification = "Semi-Automatic Rifle",
    year = 1934,
    country = "United States",
    manufacturer = "Springfield Armory",
    description = "The M1 Garand is a .30 caliber semi-automatic rifle that was the standard U.S. service rifle during World War II and the Korean War and also saw limited service during the Vietnam War. Most M1 rifles were issued to U.S. forces, though many hundreds of thousands were also provided as foreign aid to American allies. The Garand is still used by drill teams and military honor guards. It is also widely used by civilians for hunting, target shooting, and as a military collectible.\n"..
        "The M1 rifle was named after its Canadian-American designer, John Garand. It was the first standard-issue semi-automatic military rifle. By all accounts the M1 rifle served with distinction. General George S. Patton called it 'the greatest battle implement ever devised'.",
})
register("HenryBB", {
    actionType = ORGM.LEVER,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Rifle-Lever",
    isCivilian = "Rare",
    lastChanged = 12, -- changed in 3.00-alpha

    classification = "Lever-Action Rifle",
    year = 2001,
    country = "United States",
    manufacturer = "Henry Repeating Arms",
    description = "The Henry Big Boy is a lever-action centerfire rifle with a fully octagonal 20-inch barrel, a solid brass receiver, and a 10-round tubular magazine. It’s a larger version of Henry’s successful Golden Boy rimfire rifles.\n"..
        "Henry's motto is 'Made in America, or not made at all",
})
register("HK91", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    isCivilian = "Rare",
    
    classification = "Semi-Automatic Rifle",
    year = 1974,
    country = "Germany",
    manufacturer = "Heckler & Koch GmbH",
    description = "The Heckler & Koch HK41 is a semi-automatic version of the Heckler & Koch G3 battle rifle. It was produced by Heckler & Koch for the civilian market in the 1960s.\n"..
        "The HK91 is a variant of the HK41. The reasons why Heckler & Koch renamed the HK41 in 1974 are unclear. Part of their reasoning could have been that they wanted to change the perception of the rifle as being a semi-automatic sporting rifle instead of a paramilitary rifle. The last few HK91s that were delivered to the U.S. in 1989 were blocked by customs after President George H. W. Bush issued an Executive Order banning the importation of 'non-sporting' rifles.\n"..
        "The HK91 is rather valuable in the United States firearm market since it was banned from further importation by 1989. Only 48,817 HK91s were imported into the U.S. prior to 1989.",
})
register("HKG3", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    selectFire = 1,
    isCivilian = "VeryRare",
    
    classification = "Battle Rifle",
    year = 1958,
    country = "Germany",
    manufacturer = "Heckler & Koch GmbH",
    description = "The G3 is a 7.62×51mm NATO, select-fire battle rifle developed in the 1950s by the German armament manufacturer Heckler & Koch GmbH (H&K) in collaboration with the Spanish state-owned design and development agency CETME\n"..
        "The G3 served as a basis for many other weapons, among them: the PSG1 and MSG90 precision rifles, the HK11 and HK21 family of light machine guns, a semi-automatic version known as the HK41, a 'sporterized' model called the SR9 (designed for the civilian market in countries where the HK91 would not qualify, primarily the US after the 1989 importation restrictions) and the MC51 carbine.",
})
register("HKSL8", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    isCivilian = "Rare",
    lastChanged = 12, -- changed in 3.00-alpha
    
    classification = "Semi-Automatic Rifle",
    year = 1998,
    country = "Germany",
    manufacturer = "Heckler & Koch GmbH",
    description = "The Heckler & Koch SL8 is a semi-automatic rifle manufactured by Heckler & Koch. It is the civilian version of the Heckler & Koch G36.\n"..
        "The rifle fires the .223 Remington or 5.56×45mm NATO cartridge and feeds from a 10-, 20- or 30-round detachable magazine (depending on the variant of the rifle). Unlike earlier types of HK rifles, it is not a roller lock bolt but rather a lug-type rotating bolt system as seen on the AR-18.\n"..
        "To adapt the G36 for the civilian market, its pistol grip and folding stock have been replaced by a fixed stock with a thumbhole. The receiver has also been modified to prevent attachment of a folding stock. In addition, to comply with the Gun Control Act of 1968 SL8 rifles exported to the United States have been modified so that they will not accept staggered 20- and 30-round G36 magazines. U.S. SL8 rifles accept only a single-column, 10-round magazine.",
})
register("L96", {
    actionType = ORGM.BOLT,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Rifle-Bolt",
    isCivilian = "Common",

    classification = "Bolt-Action Rifle",
    year = 1982,
    country = "United Kingdom",
    manufacturer = "Accuracy International",
    description = "The Accuracy International Arctic Warfare rifle is a bolt-action sniper rifle designed and manufactured by the British company Accuracy International. It has proved popular as a civilian, police, and military rifle since its introduction in the 1980s. The rifles have some features that improve performance in very cold conditions, without impairing operation in less extreme conditions.\n"..
        "The Accuracy International PM (Precision Marksman) rifle was entered into a British competition in the early 1980s as a replacement for the Lee–Enfield derived sniper rifles then in use by the British Army (e.g. L42A1). The Accuracy International rifle was selected over the Parker Hale M85. The British Army adopted the Accuracy International PM in 1982 into service as the L96A1.",
})
register("LENo4", {
    actionType = ORGM.BOLT,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Rifle-Bolt",
    isCivilian = "Rare",
    speedLoader = "LENo4StripperClip", 

    classification = "Bolt-Action Rifle",
    year = 1941,
    country = "United Kingdom",
    manufacturer = "Long Branch Arsenal, Savage-Stevens Firearms",
    description = "The Lee–Enfield is a bolt-action, magazine-fed, repeating rifle that served as the main firearm used by the military forces of the British Empire and Commonwealth during the first half of the 20th century. It was the British Army's standard rifle from its official adoption in 1895 until 1957.\n"..
        "By the late 1930s, the need for new rifles grew and the Rifle, No. 4 Mk I was officially adopted in 1941. The No. 4 action was similar to the Mk VI, but stronger and most importantly, easier to mass-produce.\n"..
        "During the course of the Second World War, the No. 4 rifle was further simplified for mass-production with the creation of the No. 4 Mk I* in 1942. It was produced only in North America, by Long Branch Arsenal in Canada and Savage-Stevens Firearms in the USA.\n"..
        "After the war, may No. 4's in the United States were rechambered to fire 7.62 NATO from the original .303 British."
})
register("M16", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    selectFire = 1,
    isPolice = "Rare", 
    isMilitary = "Common",
    
    classification = "Assault Rifle",
    year = 1964,
    country = "United States",
    manufacturer = "Colt's Manufacturing Company",
    description = "The M16 rifle, officially designated Rifle, Caliber 5.56mm, M16, is a United States military adaptation of the ArmaLite AR-15 rifle. The original M16 was a selective fire 5.56mm rifle with a 20-round magazine.\n"..
        "In 1964, the M16 entered U.S. military service and the following year was deployed for jungle warfare operations during the Vietnam War. In 1969, the M16A1 replaced the M14 rifle to become the U.S. military's standard service rifle. The M16A1 improvements include a bolt-assist, chrome plated bore and a new 30-round magazine.\n"..
        "The M16 has also been widely adopted by other militaries around the world. Total worldwide production of M16s has been approximately 8 million, making it the most-produced firearm of its 5.56 mm caliber.",
})
register("M1903", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Rifle-Auto-IM",
    isCivilian = "Rare",
    speedLoader = 'M1903StripperClip', 
    lastChanged = 12, -- changed in 3.00-alpha
    
    classification = "Bolt-Action Rifle",
    year = 1903,
    country = "United States",
    manufacturer = "Springfield Armory",
    description = "The M1903 Springfield, formally the United States Rifle, Caliber .30-06, Model 1903, is an American five-round magazine fed, bolt-action service repeating rifle, used primarily during the first half of the 20th century.\n"..
        "It was officially adopted as a United States military bolt-action rifle on June 19, 1903, and saw service in World War I. It was officially replaced as the standard infantry rifle by the faster-firing semi-automatic eight-round M1 Garand starting in 1936. However, the M1903 Springfield remained in service as a standard issue infantry rifle during World War II, since the U.S. entered the war without sufficient M1 rifles to arm all troops. It also remained in service as a sniper rifle during World War II, the Korean War, and even in the early stages of the Vietnam War. It remains popular as a civilian firearm, historical collector's piece, and as a military drill rifle.",
})
register("M21", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-Auto",
    isPolice = "Rare", 
    isMilitary = "Rare",
    
    classification = "Semi-Automatic Rifle",
    year = 1969,
    country = "United States",
    manufacturer = "Rock Island Arsenal",
    description = "The M21 Sniper Weapon System (SWS) is the semi-automatic sniper rifle adaptation of the M14 rifle. It is chambered for the 7.62×51mm NATO cartridge.\n"..
        "The United States Army wanted an accurate sniper rifle during the Vietnam War. The M14 was selected because of its accuracy, reliability, and the ability for a quick follow up shot. As a result, in 1969, the Rock Island Arsenal converted 1,435 National Match (target grade) M14s by adding a Redfield ART Adjustable Ranging Telescope 3–9× and providing National Match grade ammunition.\n"..
        "This version, called the XM21, had a specially selected walnut stock and was first fielded in the second half of 1969. An improved version with a fiberglass stock was designated the M21 in 1975. The M21 remained the Army's primary sniper rifle until 1988, when it was replaced by the M24 Sniper Weapon System.",
})
register("M249", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-Auto",
    isMilitary = "Rare",
    clickSound = 'ORGMRifleEmpty',
    ejectSound = 'ORGMLMGOut',
    insertSound = 'ORGMLMGIn',
    rackSound = 'ORGMLMGRack',
    lastChanged = 14
    
    classification = "Light Machine Gun",
    year = 1979,
    country = "United States",
    manufacturer = "FN Manufacturing LLC",
    description = "The M249 light machine gun, formerly designated the M249 Squad Automatic Weapon (SAW), is the American adaptation of the Belgian FN Minimi, a light machine gun manufactured by the Belgian company FN Herstal. The M249 is manufactured in the United States by the local subsidiary FN Manufacturing LLC in South Carolina and is widely used in the U.S. Armed Forces. The weapon was introduced in 1984 after being judged the most effective of a number of candidate weapons to address the lack of automatic firepower in small units. The M249 provides infantry squads with the high rate of fire of a machine gun combined with accuracy and portability approaching that of a rifle.",
})
register("M4C", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    selectFire = 1,
    isPolice= "Rare", 
    isMilitary = "Common",
    
    classification = "Assault Carbine",
    year = 1984,
    country = "United States",
    manufacturer = "Colt's Manufacturing Company",
    description = "The M4 carbine is a shorter and lighter variant of the M16A2 assault rifle. The M4 is a 5.56×45mm NATO, air-cooled, direct impingement gas-operated, magazine-fed carbine. It has a 14.5 in (370mm) barrel and a telescoping stock.\n"..
        "The M4 carbine is extensively used by the United States Armed Forces and is largely replacing the M16 rifle in United States Army and United States Marine Corps combat units as the primary infantry weapon.",
})
register("Marlin60", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-Auto-IM",
    isCivilian = "Common",
    rackSound = 'ORGMRifleRack',
    clickSound = 'ORGMSmallPistolEmpty',
    insertSound = 'ORGMMagLoad',
    
    classification = "Semi-Automatic Rifle",
    year = 1960,
    country = "United States",
    manufacturer = "Marlin Firearms Co.",
    description = "The Marlin Model 60, also known as the Marlin Glenfield Model 60, is a semi-automatic rifle that fires the .22 LR rimfire cartridge. Produced by Marlin Firearms Company of North Haven, Connecticut, it has been in continuous production since 1960 and the company says it is the most popular rifle of its kind in the world. Major features include a micro-groove barrel, a cross-bolt safety, hardwood stock with Monte Carlo comb, and brass inner magazine tube. The Marlin Model 795 is a very similar rifle and based on the Marlin Model 60, changed only to accept a detachable box magazine.",
})
register("Mini14", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    isCivilian = "Common", 
    isPolice = "Rare",
    
    classification = "Semi-Automatic Rifle",
    year = 1973,
    country = "United States",
    manufacturer = "Sturm, Ruger & Co.",
    description = "The Mini-14 is a lightweight .223 caliber (5.56mm) semi-automatic rifle manufactured by Sturm, Ruger & Co. that is popular with law enforcement, security personnel, hunters, ranchers, and target shooters.\n"..
        "The name Mini-14 was coined because it resembles a smaller version of the military M14 rifle. Designed by L. James Sullivan and William B. Ruger, it incorporated numerous innovations and cost-saving engineering changes. The Mini-14 rifle employs an investment cast, heat-treated receiver and is mechanically similar to the M1 Garand rifle, with a self-cleaning, fixed-piston gas system. Initial rifles were produced with a complex, exposed bolt hold open device with no button for manual engagement.\n"..
        "The Ruger Mini-14 was seen extensively in many episodes of The A-Team, an NBC television series that aired from 1983 to 1987. It was chosen because of its reputation for reliably firing blanks, which tend to clog a gun's action.",
})
register("Mosin", {
    actionType = ORGM.BOLT,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Rifle-Bolt-IM",
    isCivilian = "Common",
    speedLoader = 'MosinStripperClip', 
    
    classification = "Bolt-Action Rifle",
    year = 1891,
    country = "Russian Empire",
    manufacturer = "Tula Arsenal",
    description = "The 3-line rifle M1891, colloquially known as Mosin–Nagant is a five-shot, bolt-action, internal magazine–fed, military rifle developed from 1882 to 1891, and used by the armed forces of the Russian Empire, the Soviet Union and various other nations. It is one of the most mass-produced military bolt-action rifles in history with over 37 million units having been made since its inception in 1891, and, in spite of its age, it has been used in various conflicts around the world even up to the modern day.",
})
register("R25", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    isCivilian = "Rare",
    
    classification = "Semi-Automatic Rifle",
    year = 2008,
    country = "United States",
    manufacturer = "Remington Arms",
    description = "The Remington Model R-25 is semi-automatic gas-operated rifle manufactured by Remington Arms. The R-25 is Remington's attempt to join the AR market. It features a free-floating Chrom-Moly fluted barrel and is modeled after the classic AR-10. It has no built in iron sights and instead has a Picatinny rail mounted atop the receiver to allow the user to mount their choice of scope or other sighting system. The R-25 is advertised primarily as a hunting rifle, and as such normally comes painted in Mossy Oak camouflage.",
})
register("Rem700", {
    actionType = ORGM.BOLT,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Rifle-Bolt-IM",
    isCivilian = "Common", 
    isPolice = "Rare",
    
    classification = "Bolt-Action Rifle",
    year = 1962,
    country = "United States",
    manufacturer = "Remington Arms Company, LLC.",
    description = "The Remington Model 700 is a series of bolt-action rifles manufactured by Remington Arms since 1962. All are based on the same centerfire bolt action. They often come with a 3-, 4- or 5-round internal magazine depending on caliber, some of which have a floor-plate for quick-unloading, and some of which are 'blind' (with no floor-plate). The rifle can also be ordered with a detachable box magazine. The Model 700 is available in many different stock, barrel and caliber configurations. It is a development of the Remington 721 and 722 series of rifles, which were introduced in 1948.\n"..
        "Both the U.S. Army's M24 Sniper Weapon System and U.S. Marine Corps' M40 sniper rifles are built from the Remington Model 700 rifle, in different degrees of modification.",
})
register("Rem788", {
    actionType = ORGM.BOLT,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Rifle-Bolt",
    isCivilian = "Rare",
    
    classification = "Bolt-Action Rifle",
    year = 1967,
    country = "United States",
    manufacturer = "Remington Arms Company, LLC.",
    description = "The Remington 788 is a bolt-action, centerfire rifle that was made by Remington Arms from 1967 to 1983. It was marketed as an inexpensive yet accurate hunting rifle to compete with other gun companies' less expensive rifles alongside their more expensive Model 700 line. The 788 utilizes a single-column detachable magazine holding 3 rounds. A .22 rimfire model was also produced known as the 580, 581, or 582 depending on its method of feed. A target version of the .22 caliber 58x series, the 540X, was used by the US military as a training rifle and later disposed through the Civilian Marksmanship Program.",
})
register("Rug1022", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Pistol-Small",
    isCivilian = "Common",

    classification = "Semi-Automatic",
    year = 1964,
    country = "United States",
    manufacturer = "Sturm, Ruger & Co.",
    description = "The Ruger 10/22 is a series of semi-automatic rifles produced by American firearm manufacturer Sturm, Ruger & Co., chambered for the .22 Long Rifle rimfire cartridge. It uses a patented 10-round rotary magazine, though higher capacity box magazines are also available. The standard Carbine version of the Ruger 10/22 has been in production continuously since 1964, making it one of, if not the, most successful rimfire rifle design in history, with numerous third party manufacturers making parts and accessories for upgrading and customization. In fact, the 10/22's aftermarket is so prolific, that a 10/22 can be built with completely non-Ruger made components.",
})
register("SA80", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    selectFire = 1,
    isMilitary = "Rare",

    classification = "Assault Rifle",
    year = 1985,
    country = "United Kingdom",
    manufacturer = "Royal Small Arms Factory",
    description = "The SA80 is a British family of 5.56×45mm NATO small arms, all of which are selective fire, gas-operated assault rifles. The L85 rifle variant of the SA80 family has been the standard issue service rifle of the British Armed Forces since 1987, replacing the L1A1 variant of the FN FAL. The first prototypes were created in 1976, with production ending in 1994.\n"..
        "The SA80 family comprises the L86 Light Support Weapon, the short-barrelled L22 carbine and the L98 Cadet rifle. The SA80 was the last in a long line of British weapons (including the Lee–Enfield family) to come from the Royal Small Arms Factory, the national arms development and production facility at Enfield Lock.\n"..
        "The family is built in a bullpup layout (the action is behind the trigger group), with a forward-mounted pistol grip. The main advantage of this type of arrangement is the overall compactness of the weapon, which can be achieved without compromising the barrel length, hence the overall length of the L85 rifle is shorter than a carbine, but the barrel length is that of an assault rifle.",
})
register("SIG550", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    selectFire = 1,
    isCivilian = "VeryRare",

    classification = "Assault Rifle",
    year = 1986,
    country = "Switzerland",
    manufacturer = "Schweizerische Industrie Gesellschaft (SIG Holding AG)",
    description = "The SG 550 is an assault rifle manufactured by Swiss Arms AG (formerly a division of Schweizerische Industrie Gesellschaft now known as Sig Holding AG) of Neuhausen, Switzerland. 'SG' is an abbreviation for Sturmgewehr, or 'assault rifle'. The rifle is based on the earlier 5.56mm SG 540 and is also known as the Fass 90 (Fusil d'assaut 90/Fucile d'assalto 90) in French/Italian or Stgw 90 in German (Sturmgewehr 90).\n"..
        "In February 1983, the decision to adopt the SG 541 was publicly announced (the designation of the rifle was changed in October of the following year to SG 550, while the carbine version became known as the SG 551). Production began in 1986 and four years later the rifle was officially accepted into service in 1990, hence the military designation Stgw 90. ",
})
register("SIG551", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    selectFire = 1,
    isCivilian = "VeryRare",

    classification = "Assault Carbine",
    year = 1986,
    country = "Switzerland",
    manufacturer = "Schweizerische Industrie Gesellschaft (SIG Holding AG)",
    description = "The SG 550 is an assault rifle manufactured by Swiss Arms AG (formerly a division of Schweizerische Industrie Gesellschaft now known as Sig Holding AG) of Neuhausen, Switzerland. 'SG' is an abbreviation for Sturmgewehr, or 'assault rifle'. The rifle is based on the earlier 5.56mm SG 540 and is also known as the Fass 90 (Fusil d'assaut 90/Fucile d'assalto 90) in French/Italian or Stgw 90 in German (Sturmgewehr 90).\n"..
        "The SG 551 carbine has a short pattern 363 mm (14.3 in) barrel, gas tube and piston compared to the SG 550. The SG 551 series rifles have a 466 mm (18.3 in) long sight radius. The handguards were also changed and the bipod removed. The SG 551 cannot be used with a bayonet or fire rifle grenades. The SG 551 comes in several specialized variants designed for use with security and special forces.",
})
register("SKS", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-Auto-IM",
    isCivilian = "Common",
    speedLoader = 'SKSStripperClip', 

    classification = "Semi-Automatic Carbine",
    year = 1945,
    country = "Soviet Union",
    manufacturer = "Tula Arsenal",
    description = "The SKS is a Soviet semi-automatic carbine chambered for the 7.62×39mm round, designed in 1943 by Sergei Gavrilovich Simonov. Its complete designation, SKS-45, is an initialism for Samozaryadny Karabin sistemy Simonova, 1945 (Self-loading Carbine of (the) Simonov system, 1945). The SKS-45 was manufactured at Tula Arsenal from 1949-1958 and at Izhevsk Arsenal in just 1953 and 1954, resulting in a total Soviet production of about 2.7 million carbines. In the early 1950s, the Soviets took the SKS carbine out of front-line service and replaced it with the AK-47; however, the SKS remained in second-line service for decades. It is still used as a ceremonial firearm today.\n"..
        "The SKS was widely exported, and was also licensed for production by then Eastern Bloc nations, Romania and East Germany, as well as China, where it was designated the 'Type 56 Carbine'. The East German version was known as the Karabiner S, the Albanian as the Model 561 and North Korean as the 'Type 63'. The SKS is popular on the civilian surplus market as a hunting and marksmanship semi-automatic rifle in many countries, including the United States, Canada, and New Zealand.",
})
register("SR25", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    isMilitary = "Common",

    classification = "Semi-Automatic Rifle",
    year = 1990,
    country = "United States",
    manufacturer = "Knight's Armament Company",
    description = "The SR-25 (Stoner Rifle-25) is a designated marksman rifle designed by Eugene Stoner and manufactured by Knight's Armament Company.\n"..
        "The SR-25 uses a rotating bolt and a direct impingement gas system. It is loosely based on Stoner's AR-10, rebuilt in its original 7.62×51mm NATO caliber. Up to 60% of parts of the SR-25 are interchangeable with the AR-15 and M16—everything but the upper and lower receivers, the hammer, the barrel assembly and the bolt carrier group.\n"..
        "The original SR-25 was released in the early 1990s and had a heavy free-floating 24 in (610mm) match grade barrel with a fiberglass handguard. It had a flat top upper receiver with a Mil-Std 1913 rail for mounting optics and a 2-stage match grade trigger. The bolt carrier was similar to the AR-10's, being chrome plated and having a captive firing pin retainer pin. The SR-25 was designed specifically to fire 168 gr (10.9 g) open-tip match cartridges. Accuracy was guaranteed at or under 1 minute of angle.",
})
register("SVD", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-Auto",
    isCivilian = "Rare",

    classification = "Semi-Automatic Rifle",
    year = 1963,
    country = "Soviet Union",
    manufacturer = "Kalashnikov Concern Ordnance Factories Organisation",
    description = "The Dragunov sniper rifle (officially 'Sniper Rifle, System of Dragunov, Model of the Year 1963') is a semi-automatic sniper/designated marksman rifle chambered in 7.62×54mmR and developed in the Soviet Union.\n"..
        "The Dragunov has become the standard squad support weapon of several countries, including those of the former Warsaw Pact. China, while having produced an unlicensed copy of the SVD through reverse-engineered samples captured from Sino-Vietnamese War as the Type 79 and 85, never officially purchased or was given SVD Dragunov by the Soviets, as the Sino-Soviet split had already occurred when the SVD entered service and relations were strained between the two, halting further military cooperations and aid. Iran also produced a clone as the Nakhjir 3 (as a direct copy of the Chinese Type 79).",
})
register("WinM70", {
    actionType = ORGM.BOLT,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Rifle-Bolt-IM",
    isCivilian = "Rare", 
    isMilitary = "Rare",

    classification = "Bolt-Action Rifle",
    year = 1936,
    country = "United States",
    manufacturer = "Winchester Repeating Arms Company",
    description = "In 1936, Winchester introduced the Model 70 bolt-action rifle to the American market. The Model 70 was largely based on the Model 54, and is today still highly regarded by shooters and is often called 'The Rifleman's Rifle'. In 1999 Shooting Times magazine named the Model 70 the 'Bolt-action Rifle of the Century'.\n"..
        "Throughout its life, the Model 70 has been offered in many grades and styles.  The pre-1964 Model 70s were manufactured from 1936 through 1963 after which time significant changes in the design and manufacture of the rifles were made. Pre-1964 Model 70s bring a substantial price premium due to a public perception that they were better, as they had several desirable features (Mauser-type controlled round feed, cut checkering) that the post-1964 version did not.\n"..
        "One of the best known U.S. Marine Corps snipers who used the Winchester Model 70 during the Vietnam War was Gunnery Sergeant Carlos Hathcock, who used a Winchester Model 70 sniper rifle chambered in .30-06. It was this rifle, equipped with a standard 8×43 Unertl scope, that Hathcock used to kill a North Vietnamese enemy sniper by shooting him in the eye, through the scope of his Mosin–Nagant rifle.",
})
register("WinM94", {
    actionType = ORGM.LEVER,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-Lever",
    isCivilian = "Rare",

    classification = "Lever-Action Rifle",
    year = 1894,
    country = "United States",
    manufacturer = "Winchester Repeating Arms Company",
    description = "The Winchester Model 1894 rifle (also known as the Winchester 94 or Win 94) is a lever-action repeating rifle that became one of the most famous and popular hunting rifles. It was designed by John Browning in 1894 and originally chambered to fire two metallic black powder cartridges, the .32-40 Winchester and .38-55 Winchester. It was the first rifle to chamber the smokeless powder round, the .30 WCF (Winchester Center Fire, in time becoming known as the .30-30) in 1895.\n"..
        "The Model 1894 has been referred to as the 'ultimate lever-action design' by firearms historians such as R. L. Wilson and Hal Herring. The Model 1894 is the rifle credited with the name 'Winchester' being used to refer to all rifles of this type and was the first commercial sporting rifle to sell over 7,000,000 units.",
})
    --************************************************************************--
    -- shotguns
    --************************************************************************--

register("BenelliM3", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Shotgun",
    altActionType = ORGM.PUMP,
    isPolice = "Common",

    classification = "Dual-mode Shotgun",
    year = 1989,
    country = "Italy",
    manufacturer = "Benelli Armi SpA",
    description = "The Benelli M3 (Super 90) is a dual-mode (both pump-action and semi-automatic) shotgun designed and manufactured by Italian firearms manufacturer Benelli Armi SpA. The M3 holds a maximum of seven rounds and uses the proprietary Benelli semi-automatic system first showcased in the M1. The M3 is notable for allowing the user the choice of semi-automatic or pump-action operation. It is reliable and versatile, and popular with military and police forces as well as civilians.\n"..
    "Pump-action operation is employed when shooting less powerful shells—such as rubber bullets—that do not generate enough recoil to operate the semi-automatic mechanism. Conversely, the semi-automatic mode can be employed with more powerful shells, absorbing some of the recoil. Switching between the two modes is done by manipulating the ring located at the front of the forend grip.",
})
register("BenelliM3SO", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Shotgun",
    altActionType = ORGM.PUMP,

    classification = ORGM.FirearmTable["BenelliM3"].classification,
    year = ORGM.FirearmTable["BenelliM3"].year,
    country = ORGM.FirearmTable["BenelliM3"].country,
    manufacturer = ORGM.FirearmTable["BenelliM3"].manufacturer,
    description = ORGM.FirearmTable["BenelliM3"].description,
})
register("BenelliXM1014", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Shotgun",
    isMilitary = "Common",
    rackSound = 'ORGMARRack', 

    classification = "Semi-Automatic Shotgun",
    year = 1999,
    country = "Italy",
    manufacturer = "Benelli Armi SpA",
    description = "The Benelli M4 Super 90 is an Italian semi-automatic shotgun manufactured by Benelli Armi SpA.\n"..
        "During testing, the prototype was named XM1014, but after adoption, the 'X' was dropped, and the weapon was officially designated the M1014. Preliminary testing of the M4 suggests a high level of reliability. It can reliably function for at least 25,000 rounds without replacement of any major parts. The steel components of the weapon feature a matte black phosphated corrosion resistant finish while the aluminum parts are matte hard-anodized. These finishes reduce the weapon's visibility during night operations.\n"..
        "The weapon requires little maintenance and operates in all climates and weather conditions."
})
register("Hawk982", {
    actionType = ORGM.PUMP,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Shotgun",
    isCivilian = "Common",

    classification = "Pump-Action Shotgun",
    year = 2008,
    country = "China",
    manufacturer = "China North Industries Group Corporation (NORINCO)",
    description = "The Norinco HP9-1, also known as the Norinco N870-14.00, is a short pump action shotgun made by Norinco of China.\n"..
        "This 12 gauge smoothbore firearm has a 14-inch (36 cm) barrel and has a rust-resistant parkerized finish. It is a close copy of the Remington 870, a widely distributed design no longer under patent protection, and most parts interchange freely. Compact, reliable, and affordable, it is popular with hunters and others working or recreating in grizzly bear habitat. The perpetrator of the Dawson College shooting was armed with an HP9-1-14.00.\n"..
        "Longer barreled versions (18in minimum) are also available for purchase in the US, where ownership of short barreled shotguns requires a $200 tax stamp. In the United States, where Norinco products are specifically non-importable, this gun is imported and sold under the names Norinco Hawk 982 and Interstate Hawk 982.",
})
register("Ithaca37", {
    actionType = ORGM.PUMP,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Shotgun",
    isCivilian = "Common",

    classification = "Pump-Action Shotgun",
    year = 1937,
    country = "United States",
    manufacturer = "Ithaca Gun Company",
    description = "The Ithaca 37 is a pump-action shotgun made in large numbers for the civilian, military, and police markets. It utilizes a novel combination ejection/loading port on the bottom of the gun which leaves the sides closed to the elements. Since shotshells load and eject from the bottom, operation of the gun is equally convenient for both right and left hand shooters. This makes the gun popular with left-handed shooters. The model 37 is considered one of the most durable and reliable shotguns ever produced.\n"..
        "The Model 37 was used by the United States armed forces in World War II, the Korean War, and especially the Vietnam War, where it gained a great reputation for reliability in the jungles of Vietnam. The largest single users outside the US Military were the New York City Police Department in 2 versions- 13in barrel with forend hand-strap for the Emergency Service Unit and 18in barrel for the Highway Patrol and the Los Angeles Police Department. Along with the Los Angeles County Sheriff's Department, numerous other users include military, police, security agencies, and prisons around the world. The Ithaca 37 remains a popular choice among civilians for both sport and personal protection. The Model 37 featherlight was commonly seen in the hands of farmers and hunters in the midwestern United States.",
})
register("Ithaca37SO", {
    actionType = ORGM.PUMP,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Shotgun",
    isCivilian = "Common",

    classification = ORGM.FirearmTable["Ithaca37"].classification,
    year = ORGM.FirearmTable["Ithaca37"].year,
    country = ORGM.FirearmTable["Ithaca37"].country,
    manufacturer = ORGM.FirearmTable["Ithaca37"].manufacturer,
    description = ORGM.FirearmTable["Ithaca37"].description,
})
register("M1216", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    isCivilian = "Rare",

    classification = "Semi-Automatic Shotgun",
    year = 2012,
    country = "United States",
    manufacturer = "SRM Arms",
    description = "The SRM Arms Model 1216 is a delayed blowback semi-automatic shotgun with a 16-round detachable magazine. Designed for mobility, it is light and short and intended for home defense and law enforcement.\n"..
        "The most unusual feature of the M1216 is the detachable magazine. The magazine which runs parallel to the barrel is made of four tubes, each with its own spring and follower. Each tube can hold four 2 3/4in or 3in shells for a total of sixteen. When inserted into the gun, the operator can flip a switch and manually rotate the entire magazine, either clockwise or counter clockwise, to choose which tube feeds into the receiver. In a tactical application, by loading different shells in different tubes, this would allow the operator to switch between different types of shells to adapt to a changing scenario, or it could allow rapid fire of all 16 rounds.",
})
register("Moss590", {
    actionType = ORGM.PUMP,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Shotgun",
    isCivilian = "Common",

    classification = "Pump-Action Shotgun",
    year = 1960,
    country = "United States",
    manufacturer = "O.F. Mossberg & Sons",
    description = "Mossberg 500 is a series of pump action shotguns manufactured by O.F. Mossberg & Sons. The 500 series comprises widely varying models of hammerless repeaters, all of which share the same basic receiver and action, but differ in bore size, barrel length, choke options, magazine capacity, stock and forearm materials. Model numbers included in the 500 series are the 500, 505, 510, 535, and 590.\n"..
        "The primary difference between the Model 500 and Model 590 is in magazine tube design. The Model 500 magazines are closed at the muzzle end, and the barrel is held in place by bolting into a threaded hole at the end of the magazine tube. Model 590 magazines are designed to be opened at the muzzle end, and the barrels fit around the magazine tube and are held on by a capnut at the end.",
})
register("Moss590SO", {
    actionType = ORGM.PUMP,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Shotgun",
    isCivilian = "Common",

    classification = ORGM.FirearmTable["Moss590"].classification,
    year = ORGM.FirearmTable["Moss590"].year,
    country = ORGM.FirearmTable["Moss590"].country,
    manufacturer = ORGM.FirearmTable["Moss590"].manufacturer,
    description = ORGM.FirearmTable["Moss590"].description,
})
register("Rem870", {
    actionType = ORGM.PUMP,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Shotgun",
    isCivilian = "Common", 
    isPolice = "Common",

    classification = "Pump-Action Shotgun",
    year = 1951,
    country = "United States",
    manufacturer = "Remington Arms Company, LLC.",
    description = "The Remington Model 870 is a pump-action shotgun manufactured by Remington Arms Company, LLC. It is widely used by the public for sport shooting, hunting, and self-defense and used by law enforcement and military organizations worldwide.\n"..
        "The Remington 870 was the fourth major design in a series of Remington pump shotguns. John Pedersen designed the fragile Remington Model 10 (and later the improved Remington Model 29). John Browning designed the Remington Model 17 (which was later adapted by Ithaca into the Ithaca 37), which served as the basis for the Remington 31. The Model 31 was well liked, but struggled for sales in the shadow of the Winchester Model 12. Remington sought to correct that in 1951 by introducing a modern, streamlined, rugged, reliable, and relatively inexpensive shotgun – the 870."
})
register("Rem870SO", {
    actionType = ORGM.PUMP,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Shotgun",
    isCivilian = "Common",

    classification = ORGM.FirearmTable["Rem870"].classification,
    year = ORGM.FirearmTable["Rem870"].year,
    country = ORGM.FirearmTable["Rem870"].country,
    manufacturer = ORGM.FirearmTable["Rem870"].manufacturer,
    description = ORGM.FirearmTable["Rem870"].description,
})
register("Silverhawk", {
    actionType = ORGM.BREAK,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Shotgun-Break",
    isCivilian = "Common",

    classification = "Double Barrel Shotgun",
    year = 1996,
    country = "Italian",
    manufacturer = "Fabbrica d'Armi Pietro Beretta",
    description = "The Beretta 470 Silver Hawk is a side-by-side double barreled shotgun, released in Europe in 1996 to commemorate the firm's 470th anniversary and made it to the States in 1997.\n"..
        "The Silver Hawk is a boxlock, in which all the fire-control parts are attached to the action. The receiver is of nickel-chromium-molybdenum steel with an attractive satin-nickel proprietary finish. The receiver's sides have half, false sideplates machined as a part of their contours. Both sides-as well as the underside-feature tasteful, hand-chased scroll engraving. The bolsters, too, have deep scroll engraving, and the nickel trigger guard exhibits modest scroll ornamentation as well.\n"..
        "The Silver Hawk has a single, selective trigger, which has an inertial block that sets the second barrel to fire.",
})
register("SilverHawkSO", {
    actionType = ORGM.BREAK,
    triggerType = ORGM.SINGLEACTION,
    soundProfile = "Shotgun-Break",
    isCivilian = "Common",

    classification = ORGM.FirearmTable["Silverhawk"].classification,
    year = ORGM.FirearmTable["Silverhawk"].year,
    country = ORGM.FirearmTable["Silverhawk"].country,
    manufacturer = ORGM.FirearmTable["Silverhawk"].manufacturer,
    description = ORGM.FirearmTable["Silverhawk"].description
})
register("Spas12", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Shotgun",
    altActionType = ORGM.PUMP,
    isCivilian = "Rare", 
    isPolice = "Rare", 
    isMilitary = "Rare",

    classification = "Dual-mode Shotgun",
    year = nil,
    country = "Italy",
    manufacturer = "Luigi Franchi S.p.A.",
    description = "The Franchi SPAS-12 is a combat shotgun manufactured by Italian firearms company Franchi from 1979 to 2000. The SPAS-12 is a dual-mode shotgun, adjustable for semi-automatic or pump-action operation. The SPAS-12 was sold to military and police users worldwide on the civilian market and has been featured in many movies, TV shows, and video games.\n"..
        "The appearance and intended purpose of the SPAS-12 initially led to its 'military' designation as a combat shotgun. The SPAS-12 was designed from the ground up as a rugged military shotgun, and it was named the Special Purpose Automatic Shotgun. In 1990, Franchi renamed the shotgun the Sporting Purpose Automatic Shotgun, which allowed continued sales to the United States as a limited-magazine-capacity, fixed-stock model until 1994. Following the United States Federal Assault Weapons Ban, imports of SPAS-12 shotguns to the United States were stopped.",
})
register("Stevens320", {
    actionType = ORGM.PUMP,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Shotgun",
    isCivilian = "Common",

    classification = "Pump-Action Shotgun",
    year = 2012,
    country = "China",
    manufacturer = "Savage Arms (importer)",
    description = "Designed for reliability and economical operation, the Stevens 320 features the traditional lines of an American pump; Savage imports it from China. The 320 is also available in a sporting configuration, although the home-defense shotgun is of primary interest to us. The 320 features a pump-action, side ejection and tubular magazine under the barrel.\n"..
        "The 320 is essentially a reproduction of the Winchester Model 1300. Like the Winchester, the Stevens 320 is a value-priced, no-frills pump gun, costing under $300 USD."
})
register("Striker", {
    actionType = ORGM.ROTARY,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Shotgun",
    isCivilian = "Rare", 
    isPolice = "Rare",
    rackSound = 'ORGMARRack', 

    classification = "Semi-Automatic Shotgun",
    year = 1983,
    country = "South Africa",
    manufacturer = "Armsel, Sentinel Arms, Reutech Defense Industries",
    description = "The Armsel Striker also known as the Sentinel Arms Co Striker-12, Protecta and Protecta Bulldog is a semi-automatic repeating shotgun firing a variety of 12 gauge ammunition from a 12-round rotating cylinder.\n"..
        "Originally developed by Hilton Walker out of the Republic of Rhodesia (bordering the north of South Africa), the system was accepted into service with the South Africa Police and military upon his arrival to the South African Republic in the early 1980s under the Amsel brand."..
        "Beyond the original Striker and the improved Protecta, the weapon system evolved into a handful of useful variants in the shortened 'Protecta Bulldog', the American-market 'Sentinel Arms Striker-12', the 'Cobray/SWD Streetsweeper' with 18-inch barrel for the budget conscious and the small 'Cobray/SWD Ladies Home Companion'. Viewed as an 'assault weapon', the Striker was banned in Canada and its availability in the United States was limited though not impossible.",
})
register("VEPR12", {
    actionType = ORGM.AUTO,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Rifle-AR",
    isCivilian = "Rare",
    clickSound = 'ORGMShotgunEmpty', 

    classification = "Semi-Automatic Shotgun",
    year = 2003,
    country = "Russia",
    manufacturer = "Molot Oruzhie Ltd.",
    description = "The Vepr-12 is a multipurpose semi-automatic detachable-magazine shotgun, produced by Molot-Oruzhie Ltd. It is patterned after the original Kalashnikov rifle and built on the heavier RPK light machine gun receiver.\n"..
        "The Vepr-12 was conceived for the Russian military and law enforcement market, with civilian applications ranging from hunting to self-defense and competition use. In particular, the shotgun has carved out a niche among IPSC competition shooters, one of the Vepr-12's target audiences. With its fixed open port gas system, the Vepr-12 can effectively cycle a multitude of 12-gauge loads, making it a highly versatile semi-automatic shotgun."..
        "The Vepr-12 is exported worldwide. Ownership in Russia requires only a smoothbore-gun license. Due to Russian law, domestic and many export versions of the shotgun are equipped with a disconnector that will render the gun unable to fire while the stock is folded. The shotgun is also imported into the United States. American export models have no muzzle brake and have a fixed stock rather than a folding stock.",
})
register("Win1887", {
    actionType = ORGM.LEVER,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Shotgun-Lever",
    isCivilian = "VeryRare",

    classification = "Lever-Action Shotgun",
    year = 1887,
    country = "United States",
    manufacturer = "Winchester Repeating Arms Company",
    description = "The Winchester Model 1887 and Winchester Model 1901 are lever-action shotguns originally designed by famed American gun designer John Browning and produced by the Winchester Repeating Arms Company during the late 19th and early 20th centuries.\n"..
        "The Model 1887 was prominently used by the title character in the film Terminator 2: Judgment Day, portrayed by Arnold Schwarzenegger. One of the guns used in the film was modified with a pistol grip and an oversized loop on the trigger guard, allowing the character to fire and cycle the action by spinning the weapon backwards around the trigger hand. This in turn has popularised the gun's portrayal in various pop culture, mostly in shooter video games, which mimic the cycling and reloading actions from the movie."
})
register("Win1887SO", {
    actionType = ORGM.LEVER,
    triggerType = ORGM.DOUBLEACTIONONLY,
    soundProfile = "Shotgun-Lever",

    classification = ORGM.FirearmTable["Win1887"].classification,
    year = ORGM.FirearmTable["Win1887"].year,
    country = ORGM.FirearmTable["Win1887"].country,
    manufacturer = ORGM.FirearmTable["Win1887"].manufacturer,
    description = ORGM.FirearmTable["Win1887"].description,
})

ORGM.log(ORGM.INFO, "All default firearms registered.")