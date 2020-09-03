local S = armor_addon.get_translator

minetest.register_node("armor_addon:ibrogblock", {
  description = S("Ibrog"),
  drawtype = "glasslike_framed_optional",
  tiles = {"armor_addon_ibrogblock.png"},
  paramtype = "light",
  is_ground_content = false,
  sunlight_propagates = true,
  sounds = default.node_sound_glass_defaults(),
  groups = {cracky = 3},
})

minetest.register_node("armor_addon:waffleblock", {
  description = S("Waffle Block"),
  tiles = {"armor_addon_waffleblock.png"},
  is_ground_content = true,
  groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
  drop = 'armor_addon:waffleblock',
  sounds = default.node_sound_wood_defaults(),
})