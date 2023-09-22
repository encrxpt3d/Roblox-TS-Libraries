local function GenerateString(length)
    length = length or 12
        
    local choices = {
        "0123456788",
        "abcdefghijklmnopqrstuvwxyz"
    }

    choices[3] = choices[2]:upper()

    local str = ""

    for i = 1, length do
        local nextChoice = choices[math.random(#choices)]
        local nextChar = math.random(#nextChoice)
        
        str = str .. nextChoice:sub(nextChar, nextChar)
    end

    return str
end

local function DeepCopy(object)
	local copy = {}
	for key, value in object do
        copy[key] = type(value) == "table" and DeepCopy(value) or value
	end
	return copy
end

local function ShallowCopy(t)
    local tCopy = table.create(#t)
	if (#t > 0) then
		table.move(t, 1, #t, 1, tCopy)
	else
		for k,v in pairs(t) do tCopy[k] = v end
	end
	return tCopy
end

local function Reconcile(tbl1, tbl2)
	for key, value in tbl2 do
		if type(value) == "table" then
			tbl[key] = tbl[key] or {}
			Reconcile(tbl[key], value)
		elseif tbl[key] == nil then
			tbl[key] = value
		end
	end
end

return {
    GenerateString = GenerateString,
    DeepCopy = DeepCopy,
    ShallowCopy = ShallowCopy,
    Reconcile = Reconcile
}