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

-- local baste = dofile("./baste.lua")

-- local Habitat = baste.import("./Habitat")
local BaseInstance = require("BaseInstance")
local Vector3 = require('Vector3')

local Folder = BaseInstance:extend("Folder", {
  creatable = true,
})

local Instance = {}

local instances = { 
  Folder = Folder, 
  VoxModel = require("VoxModel")
}

function Instance.new(className, parent)
  local class = instances[className]

  if class == nil or not class.options.creatable then
    error(string.format("Can't make an instance of type %q", tostring(className)), 2)
  end

  local instance = class:new()
  instance.Parent = parent

  return instance
end

print(Instance)
-- return {
-- -- Habitat = Habitat,
--  Instance = Instance,
-- }

print("wtf")
local parent = Instance.new("Folder")
print("zing")
print(parent)

local child = Instance.new("VoxModel", parent)
child.Name = "foo"

assert(child.Parent == parent)
assert(parent:FindFirstChild("foo") == child)

print(child.Name)
print(child.Parent.Name)

local v = Instance.new("VoxModel")
v.Position.X = 3.141
v.Position.Y = 6.42
v.Position.Z = 7.12

print(v.Position:Inspect())

