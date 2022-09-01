local BaseInstance = require("BaseInstance")
local Color3 = require("Color3")
local InstanceProperty = require("InstanceProperty")
local Vector2 = require("Vector2")
local Vector3 = require("Vector3")

local VoxModel = BaseInstance:extend("VoxModel", {
  creatable = true,
})

VoxModel.properties.Image = InstanceProperty.typed("string", {
  getDefault = function()
    return ""
  end,
})

-- VoxModel.properties.ImageColor3 = InstanceProperty.typed("Color3", {
--   getDefault = function()
--     return Color3.new()
--   end,
-- })

VoxModel.properties.Position = InstanceProperty.typed("Vector3", {
  getDefault = function()
    return Vector3.new()
  end,
})


return VoxModel