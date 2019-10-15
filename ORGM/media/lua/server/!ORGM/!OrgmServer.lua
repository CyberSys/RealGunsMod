--[[- Server Side Functions and tables.


@module ORGM.Server
@author Fenris_Wolf
@release v3.09
@copyright 2018 **File:** server/1LoadOrder/ORGMServer.lua

]]

local Server = { }
Server.ItemBinder = require("!ORGM/OrgmItemBinder")
Server.ItemRemover = require("!ORGM/OrgmItemRemover")
Server.ItemSpawn = require("!ORGM/OrgmItemSpawn")
Server.Commands = require("!ORGM/OrgmServerCommands")
Server.Callbacks = require("!ORGM/OrgmServerCallbacks")

local ORGM = require("!ORGM/!init")
ORGM.Server = Server
return Server

--- @section end
