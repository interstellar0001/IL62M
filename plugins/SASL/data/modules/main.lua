print("Ilyushin 62M by Project Ilyushin")
print("Lua version is", _VERSION)

size = { 4096, 4096 }

sasl.gl.setRenderTextPixelAligned(true )

fixedPanelWidth = 4096
fixedPanelHeight = 4096

xplane_version = globalProperty("sim/version/xplane_internal_version")

local registered = false

-- global functions
function interpolate(tbl, value)
	local lastActual = 0
	local lastReference = 0
	for _k, v in pairs(tbl) do
		if value == v[1] then
			return v[2]
		end
		if value < v[1] then
			local a = value - lastActual
			local m = v[2] - lastReference
			return lastReference + a / (v[1] - lastActual) * m
		end
		lastActual = v[1]
		lastReference = v[2]
	end
	return value - lastActual + lastReference
end

-- return the sign of given number as +1 or -1
function sign(x)
	if x >= 0 then return 1 else return -1 end
end

-- return the integer 0 or 1 by give boolean
function bool2int(var)
	if var then
		return 1
	else
		return 0
	end
end

function line(x, x1, y1, x2, y2) -- returns Y on the line with two points by given X
	-- (x - x1)/(x2 - x1) = (y - y1)/(y2 - y1) -- line function

	if x2 - x1 ~= 0 then
		return (x - x1) * (y2 - y1) / (x2 - x1) + y1
	else
		return 0
	end
end

-- returns true if current beacon is ILS
function isILS(freq)
	if (10810 > freq) or (11195 < freq) then
		return false
	end
	local v, f = math.modf(freq / 100)
	v = math.floor(f * 10 + 0.001)
	return 1 == (v % 2)
end