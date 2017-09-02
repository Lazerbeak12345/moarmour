local craft_ingreds = {
	rainbow = "nyancats_plus:rainbow_shard",
        waffle = "waffles:large_waffle",
        obsidian = "default:obsidian",
        chocolate = "farming:chocolate_dark",
        carbonfiber = "nanotech:carbon_plate",
}

for k, v in pairs(craft_ingreds) do
	minetest.register_craft({
		output = "armor_addon:helmet_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{"", "", ""},
		},
	})
	minetest.register_craft({
		output = "armor_addon:chestplate_"..k,
		recipe = {
			{v, "", v},
			{v, v, v},
			{v, v, v},
		},
	})
	minetest.register_craft({
		output = "armor_addon:leggings_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{v, "", v},
		},
	})
	minetest.register_craft({
		output = "armor_addon:boots_"..k,
		recipe = {
			{v, "", v},
			{v, "", v},
		},
	})
	minetest.register_craft({
		output = "armor_addon:shield_"..k,
		recipe = {
			{v, v, v},
			{v, v, v},
			{"", v, ""},
		},
	})
end
minetest.register_node("armor_addon:waffleblock", {
	description = "Waffle Block",
	tiles = {"armor_addon_waffleblock.png"},
	is_ground_content = true,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	drop = 'armor_addon:waffleblock',
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_craft({
	output = 'armor_addon:waffleblock',
	recipe = {
		{'waffles:large_waffle', 'waffles:large_waffle', 'waffles:large_waffle'},
		{'waffles:large_waffle', 'waffles:large_waffle', 'waffles:large_waffle'},
		{'waffles:large_waffle', 'waffles:large_waffle', 'waffles:large_waffle'},
	}
})
minetest.register_craft({
	output = 'waffles:large_waffle 9',
	recipe = {
		{'armor_addon:waffleblock'},
	}
})
