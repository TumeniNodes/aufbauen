-- Glass Materials


--
-- Glass Nodes
--

minetest.register_node("glass:glass", {
	description = "Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"glass_glass.png", "glass_glass_detail.png"},
	paramtype = "light",
	paramtype2 = "glasslikeliquidlevel",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	drop = {},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("glass:obsidian_glass", {
	description = "Obsidian Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"glass_obsidian_glass.png", "glass_obsidian_glass_detail.png"},
	paramtype = "light",
	paramtype2 = "glasslikeliquidlevel",
	is_ground_content = false,
	sunlight_propagates = true,
	groups = {cracky = 3},
	drop = {},
	sounds = default.node_sound_glass_defaults(),
})
