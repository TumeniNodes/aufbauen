-- c_doors by TumeniNodes, Nathan.S, and Napiophelios Jan 2017
screwdriver = screwdriver or {}

c_doors = {}

-- Register Door Nodes
c_doors.door = {

--Wood Doors
	{"birch", "Birch", {choppy = 2, door = 1}, default.node_sound_wood_defaults(), "doors_door", {name = "c_doors_birch.png",backface_culling = true}, "wood:wood"},

	{"junglewood", "Junglewood", {choppy = 2, door = 1}, default.node_sound_wood_defaults(), "doors_door", {name = "c_doors_junglewood.png",backface_culling = true}, "wood:wood"},

	{"oak", "Oak", {choppy = 2, door = 1}, default.node_sound_wood_defaults(), "doors_door", {name = "c_doors_oak.png",backface_culling = true}, "wood:wood"},

	{"pine", "Pine", {choppy = 2, door = 1}, default.node_sound_wood_defaults(), "doors_door", {name = "c_doors_pine.png",backface_culling = true}, "wood:wood"},

	{"willow", "Willow", {choppy = 2, door = 1}, default.node_sound_wood_defaults(), "doors_door", {name = "c_doors_willow.png",backface_culling = true}, "default:wood"},

	{"wood", "Wood", {choppy = 2, door = 1}, default.node_sound_wood_defaults(), "doors_door", {name = "c_doors_wood.png",backface_culling = true}, "wood:wood"},

--Metal Doors
	{"iron", "Iron", {cracky = 1, door = 1}, default.node_sound_metal_defaults(), "c_doors_metal", {name = "c_doors_iron.png",backface_culling = true}, "metal:iron_block"},

	{"steel", "Steel", {cracky = 1, door = 1}, default.node_sound_metal_defaults(), "c_doors_metal", {name = "c_doors_steel.png",backface_culling = true}, "metal:iron_block"},

	{"irongate", "IronGate", {cracky = 1, door = 1}, default.node_sound_metal_defaults(), "c_doors_irongate", {name = "c_doors_irongate.png",backface_culling = true}, "default:coalblock"},

--Glass Doors
	{"glass", "Glass", {cracky = 3, door = 1}, default.node_sound_glass_defaults(), "c_doors_glass", {name = "c_doors_glass.png"}, "default:glass"},

	{"obsidian_glass", "Obsidian Glass", {cracky = 1, door = 1}, default.node_sound_glass_defaults(), "c_doors_glass", {name = "c_doors_obsidian_glass.png"},"default:obsidian_glass"},
}

for _, row in ipairs(c_doors.door) do
	local name = row[1]
	local desc = row[2]
	local mat_groups = row[3]
	local mat_sound = row[4]
	local door_sound = row[5]
	local door_tiles = row[6]
	local craft_material = row[7]

minetest.register_node("c_doors:" ..name.. "_Ldoor", {
	description = desc.. " Door (left)",
	inventory_image = "c_doors_item_" ..name.. ".png^[transformFXX",
	wield_image = "c_doors_item_" ..name.. ".png^[transformFXX",
	drawtype = "mesh",
	mesh = "c_door_L.obj",
	tiles = {door_tiles},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	on_rotate = screwdriver.rotate_simple,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = mat_groups,
	sounds = mat_sound,
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, 1.5, 0.0625},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, 1.5, 0.0625},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:" ..name.. "_Ldoor_open", param2 = node.param2})
		minetest.sound_play(door_sound.."_open", {gain = 0.20, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:" ..name.. "_Ldoor_open", {
	drawtype = "mesh",
	mesh = "c_door_L_open.obj",
	tiles = {door_tiles},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	on_rotate = screwdriver.rotate_simple,
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = mat_groups,
	drop = "c_doors:" ..name.. "_Ldoor",
	sounds = mat_sound,
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.9375, -0.375, 1.5, 0.0625},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.9375, -0.375, 1.5, 0.0625},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:" ..name.. "_Ldoor", param2 = node.param2})
		minetest.sound_play(door_sound.."_close", {gain = 0.15, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:" ..name.. "_Rdoor", {
	description = desc.. " Door (right)",
	inventory_image = "c_doors_item_" ..name.. ".png",
	wield_image = "c_doors_item_" ..name.. ".png",
	drawtype = "mesh",
	mesh = "c_door_R.obj",
	tiles = {door_tiles},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	on_rotate = screwdriver.rotate_simple,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = mat_groups,
	sounds = mat_sound,
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, 1.5, 0.0625},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, 1.5, 0.0625},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:" ..name.. "_Rdoor_open", param2 = node.param2})
		minetest.sound_play(door_sound.."_open", {gain = 0.20, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:" ..name.. "_Rdoor_open", {
	drawtype = "mesh",
	mesh = "c_door_R_open.obj",
	tiles = {door_tiles},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	on_rotate = screwdriver.rotate_simple,
	legacy_facedir_simple = true,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = mat_groups,
	drop = "c_doors:" ..name.. "_Rdoor",
	sounds = mat_sound,
	selection_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, -0.9375, 0.5, 1.5, 0.0625},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, -0.9375, 0.5, 1.5, 0.0625},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:" ..name.. "_Rdoor", param2 = node.param2})
		minetest.sound_play(door_sound.."_close", {gain = 0.15, max_hear_distance = 2})
	end,
})

--
-- Crafting
--
minetest.register_craft({
	output = "c_doors:" ..name.. "_Ldoor",
	recipe = {
		{"", craft_material , ""},
		{"", craft_material, ""},
		{"", craft_material , ""},
	}
})

minetest.register_craft({
	output = "c_doors:" ..name.. "_Rdoor",
	recipe = {
		{"c_doors:" ..name.. "_Ldoor"},
	}
})

minetest.register_craft({
	output = "c_doors:" ..name.. "_Ldoor",
	recipe = {
		{"c_doors:" ..name.. "_Rdoor"},
	}
})

end

-- Register Window Nodes
c_doors.windowed = {
	{"steel", "Steel", "c_doors_dble_steel_sides.png", "c_doors_dble_steel.png", "default:steelblock"},
	{"obsidian_glass", "Obsidian Glass", "c_doors_dble_obsidian_glass_sides.png", "c_doors_dble_obsidian_glass.png", "default:obsidian_glass"},
	{"glass", "Glass", "c_doors_dble_glass_sides.png", "c_doors_dble_glass.png", "default:glass"},
	{"wood", "Wood", "c_doors_dble_wood_sides.png", "c_doors_dble_wood.png", "default:wood"},
	{"iron", "Iron", "c_doors_dble_wood_sides.png", "c_doors_dble_iron.png", "default:coal"},
	{"gate", "Gate", "c_doors_dble_iron_sides.png", "c_doors_dble_gate.png", "default:tin"},
}

for _, row in ipairs(c_doors.windowed) do
	local name = row[1]
	local desc = row[2]
	local side_tile = row[3]
	local face_tile = row[4]
	local craft_material = row[5]

minetest.register_node("c_doors:dbl_" ..name.. "_win_sml", {
	description = "Small " ..desc.. " Double Window",
	drawtype = "nodebox",
	tiles = {side_tile, side_tile, side_tile, side_tile, face_tile, face_tile},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	on_rotate = screwdriver.rotate_simple,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 3},
	sounds = default.node_sound_glass_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.027133, -0.4375, 0.5, 0.027133},
			{-0.5, -0.5, -0.027133, 0.5, -0.4375, 0.027133},
			{0.4375, -0.5, -0.027133, 0.5, 0.5, 0.027133},
			{-0.0625, -0.5, -0.027133, 0.0625, 0.5, 0.027133},
			{-0.5, 0.4375, -0.027133, 0.5, 0.5, 0.027133},
			{-0.4375, -0.4375, -0.02, -0.0625, 0.4375, 0.02},
			{0.0625, -0.4375, -0.02, 0.4375, 0.4375, 0.02},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.03, 0.5, 0.5, 0.03},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:dbl_" ..name.. "_win_sml_open", param2 = node.param2})
		minetest.sound_play("c_doors_glass_open", {gain = 0.50, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:dbl_" ..name.. "_win_sml_open", {
	drawtype = "nodebox",
	tiles = {side_tile, side_tile, face_tile, face_tile, side_tile, side_tile},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	on_rotate = screwdriver.rotate_simple,
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:dbl_" ..name.. "_win_sml",
	groups = {cracky = 3, not_in_creative_inventory = 1},
	sounds = default.node_sound_glass_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{0.472867, -0.5, -0.5, 0.5, 0.5, -0.4375},
			{0.472867, -0.5, -0.0625, 0.5, 0.5, 0},
			{-0.5, -0.5, -0.5, -0.472867, 0.5, -0.4375},
			{-0.5, -0.5, -0.0625, -0.472867, 0.5, 0},
			{0.472867, 0.4375, -0.5, 0.5, 0.5, 0},
			{-0.5, 0.4375, -0.5, -0.472867, 0.5, 0},
			{-0.5, -0.5, -0.5, -0.472867, -0.4375, 0},
			{0.472867, -0.5, -0.5, 0.5, -0.4375, 0},
			{-0.472867, -0.4375, -0.4375, -0.5, 0.4375, -0.0625},
			{0.472867, -0.4375, -0.4375, 0.5, 0.4375, -0.0625},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.4375, 0.5, 0},
			{0.4375, -0.5, -0.5, 0.5, 0.5, 0},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.472867, 0.5, 0},
			{0.472867, -0.5, -0.5, 0.5, 0.5, 0},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:dbl_" ..name.. "_win_sml", param2 = node.param2})
		minetest.sound_play("c_doors_glass_close", {gain = 0.30, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:dbl_" ..name.. "_win_lg", {
	description = "Large " ..desc.. " Double Window",
	inventory_image = "c_doors_dble_" ..name.. "_inv.png",
	wield_image = "c_doors_dble_" ..name.. "_inv.png",
	drawtype = "nodebox",
	tiles = {side_tile, side_tile, side_tile, side_tile, face_tile, face_tile},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	on_rotate = screwdriver.rotate_simple,
	sunlight_propogates = true,
	is_ground_content = false,
	groups = {cracky = 3},
	sounds = default.node_sound_glass_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.027133, -0.4375, 1.5, 0.027133},
			{-0.5, -0.5, -0.027133, 0.5, -0.4375, 0.027133},
			{0.4375, -0.5, -0.027133, 0.5, 1.5, 0.027133},
			{-0.0625, -0.5, -0.027133, 0.0625, 1.5, 0.027133},
			{-0.5, 0.4375, -0.027133, 0.5, 0.5625, 0.027133},
			{-0.5, 1.4375, -0.027133, 0.5, 1.5, 0.027133},
			{-0.4375, 0.5625, -0.02, -0.0625, 1.4375, 0.02},
			{0.0625, 0.5625, -0.02, 0.4375, 1.4375, 0.02},
			{0.0625, -0.4375, -0.02, 0.4375, 0.4375, 0.02},
			{-0.4375, -0.4375, -0.02, -0.0625, 0.4375, 0.02},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.03, 0.5, 1.5, 0.03},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:dbl_" ..name.. "_win_lg_open", param2 = node.param2})
		minetest.sound_play("c_doors_glass_open", {gain = 0.50, max_hear_distance = 2})
	end,
})

minetest.register_node("c_doors:dbl_" ..name.. "_win_lg_open", {
	drawtype = "nodebox",
	tiles = {side_tile, side_tile, face_tile, face_tile, side_tile, side_tile},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	on_rotate = screwdriver.rotate_simple,
	sunlight_propogates = true,
	is_ground_content = false,
	drop = "c_doors:dbl_" ..name.. "_win_lg",
	groups = {cracky = 3, not_in_creative_inventory = 1},
	sounds = default.node_sound_glass_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{0.472867, -0.5, -0.5, 0.5, 1.5, -0.4375},
			{0.472867, -0.5, -0.0625, 0.5, 1.5, 0},
			{-0.5, -0.5, -0.5, -0.472867, 1.5, -0.4375},
			{-0.5, -0.5, -0.0625, -0.472867, 1.5, 0},
			{0.472867, 0.4375, -0.5, 0.5, 0.5625, 0},
			{-0.5, 0.4375, -0.5, -0.472867, 0.5625, 0},
			{-0.5, -0.5, -0.5, -0.472867, -0.4375, 0},
			{0.472867, -0.5, -0.5, 0.5, -0.4375, 0},
			{0.472867, 1.4375, -0.5, 0.5, 1.5, 0},
			{-0.5, 1.4375, -0.5, -0.472867, 1.5, -0.0625},
			{0.472867, 0.5625, -0.4375, 0.5, 1.4375, -0.0625},
			{0.472867, -0.4375, -0.4375, 0.5, 0.4375, -0.0625},
			{-0.472867, 0.5625, -0.4375, -0.5, 1.4375, -0.0625},
			{-0.472867, -0.4375, -0.4375, -0.5, 0.4375, -0.0625},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.4375, 1.5, 0},
			{0.4375, -0.5, -0.5, 0.5, 1.5, 0},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{0.472867, -0.5, -0.5, 0.5, 1.5, 0},
			{-0.5, -0.5, -0.5, -0.472867, 1.5, 0},
		},
	},
	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "c_doors:dbl_" ..name.. "_win_lg", param2 = node.param2})
		minetest.sound_play("c_doors_glass_close", {gain = 0.30, max_hear_distance = 2})
	end,
})
--
-- Crafting
--
minetest.register_craft({
	output = "c_doors:dbl_" ..name.. "_win_lg",
	recipe = {
		{"c_doors:dbl_" ..name.. "_win_sml"},
		{"c_doors:dbl_" ..name.. "_win_sml"},
	}
})

minetest.register_craft({
	output = "c_doors:dbl_" ..name.. "_win_sml 4",
	recipe = {
		{ craft_material , "default:glass", craft_material},
		{"default:glass", "", "default:glass"},
		{ craft_material , "default:glass", craft_material},
	}
})

end
