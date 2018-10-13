-- Stone Materials

--
-- Brick Nodes
--

minetest.register_node("stone:brick", {
	description = "Brick Block",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"stone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3},
	drop = {},
	sounds = default.node_sound_stone_defaults(),
})


--
-- Cobblestone Nodes
--

minetest.register_node("stone:cobblestone", {
	description = "Cobblestone",
	tiles = {"stone_cobblestone.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	drop = {},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("stone:cobblestone_mossy", {
	description = "Mossy Cobblestone",
	tiles = {"stone_cobblestone_mossy.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	drop = {},
	sounds = default.node_sound_stone_defaults(),
})


--
-- Granite Nodes
--

minetest.register_node("stone:granite", {
	description = "Granite",
	tiles = {"stone_granite.png"},
	groups = {cracky = 3, stone = 1},
	drop = {},
--	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("stone:granite_block", {
	description = "Granite Block",
	tiles = {"stone_granite_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	drop = {},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("stone:granite_block_half", {
	description = "Granite Block Half",
	tiles = {"stone_granite_block_half.png"},
	is_ground_content = false,
	paramtype2 = "facedir",
	groups = {cracky = 2, stone = 1},
	drop = {},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("stone:granite_smooth", {
	description = "Smooth Granite",
	tiles = {"stone_granite_smooth.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	drop = {},
	sounds = default.node_sound_stone_defaults(),
})


--
-- Limestone Nodes
--

minetest.register_node("stone:limestone", {
	description = "Limestone",
	tiles = {"stone_limestone.png"},
	groups = {crumbly = 1, cracky = 3},
	drop = {},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("stone:limestone_brick", {
	description = "Limestone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"stone_limestone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	drop = {},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("stone:limestone_block", {
	description = "Limestone Block",
	tiles = {"stone_limestone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	drop = {},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("stone:limestone_block_half", {
	description = "Limestone Block Half",
	tiles = {"stone_limestone_block_half.png"},
	is_ground_content = false,
	paramtype2 = "facedir",
	groups = {cracky = 2},
	drop = {},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("stone:limestone_cinderblock", {
	description = "Limestone Cinderblock",
	tiles = {"stone_limestone_cinderblock.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	drop = {},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("stone:limestone_smooth", {
	description = "Smooth Limestone",
	tiles = {"stone_limestone_smooth.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	drop = {},
	sounds = default.node_sound_stone_defaults(),
})
