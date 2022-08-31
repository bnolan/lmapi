-- Deprecated in 5.2
function newproxy(new_meta)
    local proxy = {}

    if(new_meta == true) then
        local mt = {}
        setmetatable(proxy, mt)
    else
        --new_meta must have a metatable.
        local mt = getmetatable(new_meta)
        setmetatable(proxy, mt)
    end

    return proxy
end

local baste = dofile("./baste.lua")

-- local Habitat = baste.import("./Habitat")
local Instance = baste.import("./Instance")

print(Instance)
-- return {
-- --	Habitat = Habitat,
-- 	Instance = Instance,
-- }

			local parent = Instance.new("Folder")

			local child = Instance.new("Folder", parent)
			child.Name = "foo"

			assert(child.Parent == parent)
			assert(parent:FindFirstChild("foo") == child)

		print(child.Name)
		print(child.Parent.Name)