-- Mese Lamps temp?

minetest.register_node("lighting:meselamp", {
	description = "Mese Lamp",
	tiles = {"lighting_mese_lamp_top.png", "lighting_mese_lamp_top.png", 
		"lighting_mese_lamp_side.png", "lighting_mese_lamp_side.png", 
		"lighting_mese_lamp_side.png", "lighting_mese_lamp_side.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
})

minetest.register_node("lighting:mese_post_light", {
	description = "Mese Post Light",
	tiles = {"lighting_mese_post_light_top.png", "lighting_mese_post_light_top.png",
		"lighting_mese_post_light_side_dark.png", "lighting_mese_post_light_side_dark.png",
		"lighting_mese_post_light_side.png", "lighting_mese_post_light_side.png"},
	wield_image = "lighting_mese_post_light_side.png",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-2 / 16, -8 / 16, -2 / 16, 2 / 16, 8 / 16, 2 / 16},
		},
	},
	paramtype = "light",
	light_source = default.LIGHT_MAX,
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
})
