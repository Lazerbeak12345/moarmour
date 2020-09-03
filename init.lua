local S = minetest.get_translator(minetest.get_current_modname())
local armor_addon_path = minetest.get_modpath(minetest.get_current_modname())

armor_addon = {
  path = armor_addon_path,
  get_translator = S
}

-- Loading the files --
dofile(armor_addon_path.."/nodes.lua")
dofile(armor_addon_path.."/crafts.lua")
dofile(armor_addon_path.."/armor.lua")
