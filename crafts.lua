local S = armor_addon.get_translator

local craft_ingreds = {
  rainbow = "nyancats_plus:rainbow_shard",
        waffle = "armor_addon:waffleblock",
        obsidian = "default:obsidian",
        chocolate = "farming:chocolate_dark",
        carbonfiber = "nanotech:carbon_plate",
        rhodo = "moreores:rhodochrosite_ingot",
        tin = "default:tin_ingot",
        ibrog = "armor_addon:ibrogblock",
        hero = "even_mosword:hero_ingot",
        cane = "candycane:candy_cane",
        cane = "christmas_decor:candycane_edible",
        skeletal = "armor_addon:boneplate",
        brick = "default:brick",
        silver = "moreores:silver_ingot",
        sky = "sky_tools:crystal",
        emeralds = "emeralds:emerald_crystal_piece",
        emerald = "gems:emerald_gem",
        pearl = "gems:pearl_gem",
        amethyst = "gems:amethyst_gem",
        ruby = "gems:ruby:gem",
        sapphire = "gems:sapphire_gem",
        shadow = "gems:shadow_gem",
        cgls = "terumet:ingot_cgls",
        tcop = "terumet:ingot_tcop",
        tcha = "terumet:ingot_tcha",
        tgol = "terumet:ingot_tgol",
        tste = "terumet:ingot_tste",
}

for k, v in pairs(craft_ingreds) do
  minetest.register_craft({
    output = "armor_addon:helmet_"..k,
    recipe = {
      {v,   v,  v},
      {v,  "",  v},
      {"", "", ""},
    },
  })
  minetest.register_craft({
    output = "armor_addon:chestplate_"..k,
    recipe = {
      {v, "", v},
      {v,  v, v},
      {v,  v, v},
    },
  })
  minetest.register_craft({
    output = "armor_addon:leggings_"..k,
    recipe = {
      {v,  v, v},
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
      {v,  v,  v},
      {v,  v,  v},
      {"", v, ""},
    },
  })
end
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
minetest.register_craft({
  output = 'armor_addon:ibrogblock',
  recipe = {
    {'default:obsidian_glass',        'xpanes:bar_flat',  'default:obsidian_glass'},
    {       'xpanes:bar_flat', 'default:obsidian_glass',         'xpanes:bar_flat'},
    {'default:obsidian_glass',        'xpanes:bar_flat',  'default:obsidian_glass'},
  }
})
minetest.register_craftitem ("armor_addon:bonepile", {
  description = S("Bone Pile"),
  inventory_image = "armor_addon_bone_pile.png",
})
minetest.register_craftitem ("armor_addon:boneplate", {
  description = S("Bone Plate"),
  inventory_image = "armor_addon_bone_plate.png",
})
minetest.register_craft ({
  type = "shapeless",
  output = 'armor_addon:bonepile',
  recipe = {"bonemeal:bone", "bonemeal:bone, bonemeal:bone"}
})
minetest.register_craft ({
  type = "shapeless",
  output = 'armor_addon:bonepile 2',
  recipe = {"bones:bones"}
})
minetest.register_craft ({
  output = 'armor_addon:boneplate 9',
  recipe = {
    {'armor_addon:bonepile', 'default:diamondblock', 'armor_addon:bonepile'},
    {'default:diamondblock', 'armor_addon:bonepile', 'default:diamondblock'},
    {'armor_addon:bonepile', 'default:diamondblock', 'armor_addon:bonepile'},
  }
})
minetest.register_craft({
  output = 'armor_addon:boots_tacnayn',
  recipe = {
    {'armor_addon:boots_waffle', '', 'armor_addon:boots_rainbow'},
    {'tac_nayn:tacnayn_rainbow', '',  'tac_nayn:tacnayn_rainbow'},
  }
})
minetest.register_craft({
  output = 'armor_addon:chestplate_tacnayn',
  recipe = {
    {     'tac_nayn:tacnayn_rainbow',                         '',       'tac_nayn:tacnayn_rainbow'},
    {'armor_addon:chestplate_waffle', 'tac_nayn:tacnayn_rainbow', 'armor_addon:chestplate_rainbow'},
    {     'tac_nayn:tacnayn_rainbow', 'tac_nayn:tacnayn_rainbow',       'tac_nayn:tacnayn_rainbow'},
  }
})
minetest.register_craft({
  output = 'armor_addon:helmet_tacnayn',
  recipe = {
    {'armor_addon:helmet_waffle', 'tac_nayn:tacnayn_rainbow', 'armor_addon:helmet_rainbow'},
    { 'tac_nayn:tacnayn_rainbow',                         '',   'tac_nayn:tacnayn_rainbow'},
  }
})
minetest.register_craft({
  output = 'armor_addon:leggings_tacnayn',
  recipe = {
    { 'tac_nayn:tacnayn_rainbow',  'tac_nayn:tacnayn_rainbow',   'tac_nayn:tacnayn_rainbow'},
    {'armor_addon:helmet_waffle',                          '', 'armor_addon:helmet_rainbow'},
    { 'tac_nayn:tacnayn_rainbow',                          '',   'tac_nayn:tacnayn_rainbow'},
  }
})
minetest.register_craft({
  output = 'armor_addon:shield_tacnayn',
  recipe = {
    {'armor_addon:shield_waffle', 'tac_nayn:tacnayn_rainbow', 'armor_addon:shield_rainbow'},
    { 'tac_nayn:tacnayn_rainbow',         'tac_nayn:tacnayn',   'tac_nayn:tacnayn_rainbow'},
    {                         '', 'tac_nayn:tacnayn_rainbow',                           ''},
  }
})
