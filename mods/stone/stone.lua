-- Stone Materials

--
-- Brick Nodes
--

minetest.register_node("stone:brick_1", {
	description = "Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"stone_brick_1.png"},
	is_ground_content = false,
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drop = {},

	on_place = function(itemstack, placer, pointed_thing)
		local stack = ItemStack("stone:brick_" .. math.random(1,3))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("stone:brick_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 3 do
	minetest.register_node("stone:brick_" .. i, {
		description = "Brick",
		tiles = {"stone_brick_" .. i .. ".png"},
--		inventory_image = "stone_brick_" .. i .. ".png",
--		wield_image = "stone_brick_" .. i .. ".png",
		groups = {cracky = 3, not_in_creative_inventory =1},
		sounds = default.node_sound_stone_defaults(),
		drop = {},
	})
end

--
-- Cobblestone Nodes
--

minetest.register_node("stone:cobble", {
	description = "Cobble",
	tiles = {"stone_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:cobble_path", {
	description = "Cobble Path",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-1/2, -1/2, -1/2, 1/2, 3/8, 1/2},
			},
		},
	tiles = {"stone_cobble.png"},
	groups = {cracky = 3, soil = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:cobble_mossy", {
	description = "Mossy Cobble",
	tiles = {"stone_cobble_mossy.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:cobble_path_mossy", {
	description = "Mossy Cobble Path",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-1/2, -1/2, -1/2, 1/2, 3/8, 1/2},
			},
		},
	tiles = {"stone_cobble_mossy.png"},
	groups = {cracky = 3, soil = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:cobblestone", {
	description = "Cobblestone",
	tiles = {"stone_cobblestone.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:cobblestone_path", {
	description = "Cobblestone Path",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-1/2, -1/2, -1/2, 1/2, 3/8, 1/2},
			},
		},
	tiles = {"stone_cobblestone.png"},
	groups = {cracky = 3, soil = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:cobblestone_mossy", {
	description = "Mossy Cobblestone",
	tiles = {"stone_cobblestone_mossy.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:cobblestone_path_mossy", {
	description = "Mossy Cobblestone Path",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-1/2, -1/2, -1/2, 1/2, 3/8, 1/2},
			},
		},
	tiles = {"stone_cobblestone_mossy.png"},
	groups = {cracky = 3, soil = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

--
-- Granite Nodes
--

minetest.register_node("stone:granite_block", {
	description = "Granite Block",
	tiles = {"stone_granite_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:granite_block_mossy", {
	description = "Mossy Granite Block",
	tiles = {"stone_granite_block_mossy.png^stone_moss.png",
			"stone_granite_block_mossy.png^stone_moss.png",
			"stone_granite_block_mossy.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:granite_block_half", {
	description = "Granite Block Half",
	tiles = {"stone_granite_block_half.png"},
	is_ground_content = false,
	paramtype2 = "facedir",
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:granite_block_half_mossy", {
	description = "Mossy Granite Block Half",
	tiles = {"stone_granite_block_half_mossy.png^stone_moss.png",
			"stone_granite_block_half_mossy.png^stone_moss.png",
			"stone_granite_block_half_mossy.png"},
	is_ground_content = false,
	paramtype2 = "facedir",
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:granite_brick", {
	description = "Granite Brick",
	tiles = {"stone_granite_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:granite_brick_mossy", {
	description = "Mossy Granite Brick",
	tiles = {"stone_granite_brick_mossy.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:granite_cinderblock", {
	description = "Granite Cinderblock",
	tiles = {"stone_granite_cinderblock.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:granite_cinderblock_mossy", {
	description = "Mossy Granite Cinderblock",
	tiles = {"stone_granite_cinderblock_mossy.png^stone_moss.png",
			"stone_granite_cinderblock_mossy.png^stone_moss.png",
			"stone_granite_cinderblock_mossy.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:granite_slab", {
	description = "Granite Slab",
	tiles = {"stone_granite_block.png", "stone_granite_block.png", "stone_granite_slab.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:granite_smooth", {
	description = "Smooth Granite",
	tiles = {"stone_granite_smooth.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})


--
-- Limestone Nodes
--

minetest.register_node("stone:limestone_block", {
	description = "Limestone Block",
	tiles = {"stone_limestone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:limestone_block_half", {
	description = "Limestone Block Half",
	tiles = {"stone_limestone_block_half.png"},
	is_ground_content = false,
	paramtype2 = "facedir",
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:limestone_brick", {
	description = "Limestone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"stone_limestone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:limestone_cinderblock", {
	description = "Limestone Cinderblock",
	tiles = {"stone_limestone_cinderblock.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:limestone_smooth", {
	description = "Smooth Limestone",
	tiles = {"stone_limestone_smooth.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})


--
-- Sandstone Nodes
--

minetest.register_node("stone:sandstone_brick", {
	description = "Sandstone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"stone_sandstone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:sandstone_block", {
	description = "Sandstone Block",
	tiles = {"stone_sandstone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:sandstone_block_half", {
	description = "Sandstone Block Half",
	tiles = {"stone_sandstone_block_half.png"},
	is_ground_content = false,
	paramtype2 = "facedir",
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:sandstone_cinderblock", {
	description = "Sandstone Cinderblock",
	tiles = {"stone_sandstone_cinderblock.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),drop = {},
})

minetest.register_node("stone:sandstone_smooth", {
	description = "Smooth Sandstone",
	tiles = {"stone_sandstone_smooth.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})


--
-- Stone Nodes
--

minetest.register_node("stone:stone_brick", {
	description = "Stone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"stone_stone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:stone_brick_mossy", {
	description = "Mossy Stone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"stone_stone_brick_mossy.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:stone_block", {
	description = "Stone Block",
	tiles = {"stone_stone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:stone_block_mossy", {
	description = "Mossy Stone Block",
	tiles = {"stone_stone_block_mossy.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:stone_block_half", {
	description = "Stone Block Half",
	tiles = {"stone_stone_block_half.png"},
	is_ground_content = false,
	paramtype2 = "facedir",
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:stone_block_half_mossy", {
	description = "Mossy Stone Block Half",
	tiles = {"stone_stone_block_half_mossy.png"},
	is_ground_content = false,
	paramtype2 = "facedir",
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:stone_cinderblock", {
	description = "Stone Cinder Block",
	tiles = {"stone_stone_cinderblock.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:stone_cinderblock_mossy", {
	description = "Mossy Stone Cinder Block",
	tiles = {"stone_stone_cinderblock_mossy.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:stone_smooth", {
	description = "Smooth Stone",
	tiles = {"stone_stone_smooth.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("stone:stone_smooth_mossy", {
	description = "Mossy Smooth Stone",
	tiles = {"stone_stone_smooth_mossy.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})


--
-- Stone Stairs
--

if minetest.get_modpath( "stairs") then
stairs.register_stair_and_slab(
	"brick_1",
	"stone:brick_1",
	{cracky = 3},
	{"stone_brick_1.png"},
	"Brick Stair",
	"Brick Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"cobblestone",
	"stone:cobblestone",
	{cracky = 3},
	{"stone_cobblestone.png"},
	"Cobblestone Stair",
	"Cobblestone Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"cobblestone_mossy",
	"stone:cobblestone_mossy",
	{cracky = 3},
	{"stone_cobblestone_mossy.png"},
	"Mossy Cobblestone Stair",
	"Mossy Cobblestone Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"granite_block",
	"stone:granite_block",
	{cracky = 2},
	{"stone_granite_block.png"},
	"Granite Block Stair",
	"Granite Block Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"granite_cinderblock",
	"stone:granite_cinderblock",
	{cracky = 2},
	{"stone_granite_cinderblock.png"},
	"Granite Cinderblock Stair",
	"Granite Cinderblock Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"granite_brick",
	"stone:granite_brick",
	{cracky = 2},
	{"stone_granite_brick.png"},
	"Granite Brick Stair",
	"Granite Brick Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"granite_smooth",
	"default:granite_smooth",
	{crumbly = 1, cracky = 3},
	{"stone_granite_smooth.png"},
	"Smooth Granite Stair",
	"Smooth Granite Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"limestone_block",
	"stone:limestone_block",
	{cracky = 2},
	{"stone_limestone_block.png"},
	"Limestone Block Stair",
	"Limestone Block Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"limestone_brick",
	"stone:limestone_brick",
	{cracky = 2},
	{"stone_limestone_brick.png"},
	"Limestone Brick Stair",
	"Limestone Brick Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"sandstone_block",
	"stone:sandstone_block",
	{cracky = 2},
	{"stone_sandstone_block.png"},
	"Sandstone Block Stair",
	"Sandstone Block Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"sandstone_brick",
	"stone:sandstone_brick",
	{cracky = 2},
	{"stone_sandstone_brick.png"},
	"Sandstone Brick Stair",
	"Sandstone Brick Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"stone_block",
	"stone:stone_block",
	{cracky = 2},
	{"stone_stone_block.png"},
	"Stone Block Stair",
	"Stone Block Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"stone_brick",
	"stone:stone_brick",
	{cracky = 2},
	{"stone_stone_brick.png"},
	"Stone Brick Stair",
	"Stone Brick Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"stone_cinderblock",
	"stone:stone_cinderblock",
	{cracky = 2},
	{"stone_stone_cinderblock.png"},
	"Stone Cinderblock Stair",
	"Stone Cinderblock Slab",
	default.node_sound_stone_defaults()
)
end
