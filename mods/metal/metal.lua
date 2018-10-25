-- Metal Materials

metal = {}

--basic blocks

function metal.register_basic_block(modname, subname, desc, tiles, groups, sounds)
minetest.register_node("metal:" .. subname .. "_basic_block", {
	description = desc .. " Basic Block",
	tiles = tiles,
	is_ground_content = false,
	groups = groups,
	sounds = sounds,
	})
end

metal.register_basic_block(
"metal",
"bronze",
"Bronze",
{"metal_bronze_block.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

metal.register_basic_block(
"metal",
"copper",
"Copper",
{"metal_copper_block.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

metal.register_basic_block(
"metal",
"iron",
"Iron",
{"metal_iron_block.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

metal.register_basic_block(
"metal",
"steel",
"Steel",
{"metal_steel_block.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())


-- 3D blocks and stair nodes

function metal.register_block(modname, subname, desc, tiles, groups, sounds)
minetest.register_node("metal:" .. subname .. "_block", {
	description = desc .. " Block",
	drawtype = "nodebox",
	tiles = tiles,
	paramtype = "light",
	is_ground_content = false,
	groups = groups,
	sounds = sounds,
	node_box = {
		type = "fixed",
		fixed = {
			{-7/16, -7/16, -7/16, 7/16, 7/16, 7/16},
			{-1/2, -1/2, -1/2, -7/16, 1/2, -7/16},
			{7/16, -1/2, -1/2, 1/2, 1/2, -7/16},
			{-1/2, -1/2, 7/16, -7/16, 1/2, 1/2},
			{7/16, -1/2, 7/16, 1/2, 1/2, 1/2},
			{-1/2, 7/16, 7/16, 1/2, 1/2, 1/2},
			{-1/2, 7/16, -1/2, 1/2, 1/2, -7/16},
			{-1/2, -1/2, -1/2, 1/2, -7/16, -7/16},
			{-1/2, -1/2, 7/16, 1/2, -7/16, 1/2},
			{7/16, 7/16, -1/2, 1/2, 1/2, 1/2},
			{7/16, -1/2, -1/2, 1/2, -7/16, 1/2},
			{-1/2, 7/16, -1/2, -7/16, 1/2, 1/2},
			{-1/2, -1/2, -1/2, -7/16, -7/16, 1/2},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, -1/2, 1/2, 1/2, 1/2},
			},
		},
	})
end

metal.register_block(
"metal",
"bronze",
"Bronze",
{"metal_bronze_block.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

metal.register_block(
"metal",
"copper",
"Copper",
{"metal_copper_block.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

metal.register_block(
"metal",
"iron",
"Iron",
{"metal_iron_block.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

metal.register_block(
"metal",
"steel",
"Steel",
{"metal_steel_block.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())


-- Register metal stair
-- Node will be called metal:stair

function metal.register_stair(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("metal:" .. subname .. "_stair", {
		description = desc .. " Stair",
		drawtype = "nodebox",
		tiles = tiles,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
				{-7/16, -7/16, -7/16, 7/16, -1/16, 7/16},
				{-1/2, -1/16, -7/16, -7/16, 0, 0},
				{7/16, -1/16, -7/16, 1/2, 0, 0},
				{-1/2, 7/16, 7/16, 1/2, 1/2, 1/2},
				{-1/2, -1/16, -1/2, 1/2, 0, -7/16},
				{-1/2, -1/2, -1/2, 1/2, -7/16, -7/16},
				{-1/2, -1/2, 7/16, 1/2, -7/16, 1/2},
				{7/16, -1/2, -1/2, 1/2, -7/16, 1/2},
				{-1/2, -1/2, -1/2, -7/16, -7/16, 1/2},
				{-1/2, -1/2, -1/2, -7/16, -1/16, -7/16},
				{7/16, -1/2, -1/2, 1/2, -1/16, -7/16},
				{7/16, -1/2, 7/16, 1/2, 7/16, 1/2},
				{-1/2, -1/2, 7/16, -7/16, 7/16, 1/2},
				{-1/2, -1/16, -1/16, 1/2, 0, 0},
				{-1/2, 7/16, 0, -7/16, 1/2, 7/16},
				{7/16, 7/16, 0, 1/2, 1/2, 7/16},
				{-7/16, 7/16, 0, 7/16, 1/2, 1/16},
				{-1/2, -1/16, 0, -7/16, 1/2, 1/16},
				{7/16, -1/16, 0, 1/2, 1/2, 1/16},
				{-7/16, -1/16, 0, 7/16, 1/16, 1/16},
				{-7/16, -7/16, 1/16, 7/16, 7/16, 7/16},
				},
			},
			selection_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, -1/2, 1/2, 0.0, 1/2},
				{-1/2, 0.0, 0.0, 1/2, 1/2, 1/2},
			},
		},
	})
end

metal.register_stair(
"metal",
"bronze",
"Bronze", 
{"metal_bronze_split.png", "metal_bronze_block.png",
"metal_bronze_side.png^[transformFX", "metal_bronze_side.png",
"metal_bronze_block.png", "metal_bronze_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair(
"metal",
"copper",
"Copper",
{"metal_copper_split.png", "metal_copper_block.png",
"metal_copper_side.png^[transformFX", "metal_copper_side.png",
"metal_copper_block.png", "metal_copper_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair(
"metal",
"iron",
"Iron",
{"metal_iron_split.png", "metal_iron_block.png",
"metal_iron_side.png^[transformFX", "metal_iron_side.png",
"metal_iron_block.png", "metal_iron_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair(
"metal",
"steel",
"Steel",
{"metal_steel_split.png", "metal_steel_block.png",
"metal_steel_side.png^[transformFX", "metal_steel_side.png",
"metal_steel_block.png", "metal_steel_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())


-- Register metal slab
-- Node will be called metal:slab

function metal.register_slab(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("metal:" .. subname .. "_slab", {
		description = desc .. " Slab",
		drawtype = "nodebox",
		tiles = tiles,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
				{-7/16, -7/16, -7/16, 7/16, -1/16, 7/16},
				{-1/2, -1/16, -7/16, -7/16, 0, 7/16},
				{7/16, -1/16, -7/16, 1/2, 0, 7/16},
				{-1/2, -1/16, 7/16, 1/2, 0, 1/2},
				{-1/2, -1/16, -1/2, 1/2, 0, -7/16},
				{-1/2, -1/2, -1/2, 1/2, -7/16, -7/16},
				{-1/2, -1/2, 7/16, 1/2, -7/16, 1/2},
				{7/16, -1/2, -1/2, 1/2, -7/16, 1/2},
				{-1/2, -1/2, -1/2, -7/16, -7/16, 1/2},
				{-1/2, -1/2, -1/2, -7/16, -1/16, -7/16},
				{7/16, -1/2, -1/2, 1/2, -1/16, -7/16},
				{7/16, -1/2, 7/16, 1/2, -1/16, 1/2},
				{-1/2, -1/2, 7/16, -7/16, -1/16, 1/2},
				},
			},
			selection_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, -1/2, 1/2, 0, 1/2},
			},
		},
	})
end

metal.register_slab(
"metal",
"bronze",
"Bronze",
{"metal_bronze_block.png", "metal_bronze_block.png",
"metal_bronze_split.png", "metal_bronze_split.png",
"metal_bronze_split.png", "metal_bronze_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_slab(
"metal",
"copper",
"Copper",
{"metal_copper_block.png", "metal_copper_block.png",
"metal_copper_split.png", "metal_copper_split.png",
"metal_copper_split.png", "metal_copper_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_slab(
"metal",
"iron",
"Iron",
{"metal_iron_block.png", "metal_iron_block.png",
"metal_iron_split.png", "metal_iron_split.png",
"metal_iron_split.png", "metal_iron_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_slab(
"metal",
"steel",
"Steel",
{"metal_steel_block.png", "metal_steel_block.png",
"metal_steel_split.png", "metal_steel_split.png",
"metal_steel_split.png", "metal_steel_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())


-- Register inner stair
-- Node will be called metal:stair_inner

function metal.register_stair_inner(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("metal:" .. subname .. "_stair_inner", {
		description = desc .. " Inner Stair",
		drawtype = "nodebox",
		tiles = tiles,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
				{-7/16, -7/16, -7/16, 7/16, -1/16, 7/16},
				{-1/2, 7/16, -1/2, -1/16, 1/2, -7/16},
				{7/16, -1/16, -7/16, 1/2, 0, 0},
				{-1/2, 7/16, 7/16, 1/2, 1/2, 1/2},
				{0, -1/16, -1/2, 1/2, 0, -7/16},
				{-1/2, -1/2, -1/2, 1/2, -7/16, -7/16},
				{-1/2, -1/2, 7/16, 1/2, -7/16, 1/2},
				{7/16, -1/2, -1/2, 1/2, -7/16, 1/2},
				{-1/2, -1/2, -1/2, -7/16, -7/16, 1/2},
				{-1/2, -1/2, -1/2, -7/16, 7/16, -7/16},
				{7/16, -1/2, -1/2, 1/2, -1/16, -7/16},
				{7/16, -1/2, 7/16, 1/2, 7/16, 1/2},
				{-1/2, -1/2, 7/16, -7/16, 7/16, 1/2},
				{-1/16, -1/16, -1/16, 1/2, 0, 0},
				{-1/2, 7/16, -7/16, -7/16, 1/2, 7/16},
				{7/16, 7/16, 0, 1/2, 1/2, 7/16},
				{0, 7/16, 0, 7/16, 1/2, 1/16},
				{-1/16, -1/16, -1/2, 0, 1/2, -7/16},
				{7/16, -1/16, 0, 1/2, 1/2, 1/16},
				{-1/16, -1/16, 0, 7/16, 1/16, 1/16},
				{-7/16, -7/16, 1/16, 7/16, 7/16, 7/16},
				{-1/16, 7/16, -7/16, 0, 1/2, 1/16},
				{-7/16, -7/16, -7/16, -1/16, 7/16, 1/16},
				{0, -1/16, -7/16, 1/16, 0, -1/16},
				{-1/16, 0, -7/16, 0, 1/16, 0},
				{-1/16, 0, -1/16, 0, 7/16, 1/16},
				{0, 0, 0, 1/16, 7/16, 1/16},
				},
			},
			selection_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, -1/2, 1/2, 0.0, 1/2},
				{-1/2, 0.0, 0.0, 1/2, 1/2, 1/2},
				{-1/2, 0.0, -1/2, 0.0, 1/2, 0.0},
			},
		},
	})
end

metal.register_stair_inner(
"metal",
"bronze",
"Bronze",
{"metal_bronze_side.png^[transformR270", "metal_bronze_block.png",
"metal_bronze_side.png^[transformFX", "metal_bronze_block.png",
"metal_bronze_block.png", "metal_bronze_side.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair_inner(
"metal",
"copper",
"Copper",
{"metal_copper_side.png^[transformR270", "metal_copper_block.png",
"metal_copper_side.png^[transformFX", "metal_copper_block.png",
"metal_copper_block.png", "metal_copper_side.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair_inner(
"metal",
"iron",
"Iron",
{"metal_iron_side.png^[transformR270", "metal_iron_block.png",
"metal_iron_side.png^[transformFX", "metal_iron_block.png",
"metal_iron_block.png", "metal_iron_side.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair_inner(
"metal",
"steel",
"Steel",
{"metal_steel_side.png^[transformR270", "metal_steel_block.png",
"metal_steel_side.png^[transformFX", "metal_steel_block.png",
"metal_steel_block.png", "metal_steel_side.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())


-- Register outer stair
-- Node will be called metal:stair_outer

function metal.register_stair_outer(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("metal:" .. subname .. "_stair_outer", {
		description = desc .. " Outer Stair",
		drawtype = "nodebox",
		tiles = tiles,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
				{-7/16, -7/16, -7/16, 7/16, -1/16, 7/16},
				{-1/2, -1/16, -7/16, -7/16, 0, 0},
				{7/16, -1/16, -7/16, 1/2, 0, 7/16},
				{-1/2, 7/16, 7/16, 0, 1/2, 1/2},
				{-1/2, -1/16, -1/2, 1/2, 0, -7/16},
				{-1/2, -1/2, -1/2, 1/2, -7/16, -7/16},
				{-1/2, -1/2, 7/16, 7/16, -7/16, 1/2},
				{7/16, -1/2, -1/2, 1/2, -7/16, 1/2},
				{-1/2, -1/2, -1/2, -7/16, -7/16, 1/2},
				{-1/2, -1/2, -1/2, -7/16, -01/16, -7/16},
				{7/16, -1/2, -1/2, 1/2, -1/16, -7/16},
				{7/16, -1/2, 7/16, 1/2, -1/16, 1/2},
				{-1/2, -1/2, 7/16, -7/16, 7/16, 1/2},
				{-1/2, -1/16, -1/16, 1/16, 0, 0},
				{-1/2, 7/16, 0, -7/16, 1/2, 7/16},
				{-1/16, 7/16, 1/16, 0, 1/2, 7/16},
				{-7/16, 7/16, 0, -1/16, 1/2, 1/16},
				{-1/2, -1/16, 0, -7/16, 1/2, 1/16},
				{-1/16, 1/16, 0, 0, 1/2, 1/16},
				{-7/16, -1/16, 0, 0, 1/16, 1/16},
				{-7/16, -7/16, 1/16, -1/16, 7/16, 7/16},
				{0, -1/16, 7/16, 1/2, 0, 1/2},
				{0, -1/16, 0, 1/16, 0, 7/16},
				{-1/16, 0, 0, 0, 1/16, 7/16},
				{-1/16, -1/16, 7/16, 0, 7/16, 1/2},
				},
			},
			selection_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, -1/2, 1/2, 0.0, 1/2},
				{-1/2, 0.0, 0.0, 0.0, 1/2, 1/2},
			},
		},
	})
end

metal.register_stair_outer(
"metal",
"bronze",
"Bronze",
{"metal_bronze_side.png^[transformR90", "metal_bronze_block.png",
"metal_bronze_outer.png", "metal_bronze_side.png",
"metal_bronze_side.png^[transformR90", "metal_bronze_outer.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair_outer(
"metal",
"copper",
"Copper",
{"metal_copper_side.png^[transformR90", "metal_copper_block.png",
"metal_copper_outer.png", "metal_copper_side.png",
"metal_copper_side.png^[transformR90", "metal_copper_outer.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())
metal.register_stair_outer(
"metal", "iron",
"Iron",
{"metal_iron_side.png^[transformR90", "metal_iron_block.png",
"metal_iron_outer.png", "metal_iron_side.png",
"metal_iron_side.png^[transformR90", "metal_iron_outer.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair_outer(
"metal",
"steel",
"Steel",
{"metal_steel_side.png^[transformR90", "metal_steel_block.png",
"metal_steel_outer.png", "metal_steel_side.png",
"metal_steel_side.png^[transformR90", "metal_steel_outer.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())


-- Grid sytem (remove inner nodeboxes for grid effect)

-- Register grid block
-- Node will be called metal:grid_block

function metal.register_grid_block(modname, subname, desc, tiles, groups, sounds)
minetest.register_node("metal:" .. subname .. "_grid_block", {
	description = desc .. " Grid Block",
	drawtype = "nodebox",
	tiles = tiles,
	paramtype = "light",
	is_ground_content = false,
	groups = groups,
	sounds = sounds,
	node_box = {
		type = "fixed",
		fixed = {
			{-1/2, -1/2, -1/2, -7/16, 1/2, -7/16},
			{7/16, -1/2, -1/2, 1/2, 1/2, -7/16},
			{-1/2, -1/2, 7/16, -7/16, 1/2, 1/2},
			{7/16, -1/2, 7/16, 1/2, 1/2, 1/2},
			{-1/2, 7/16, 7/16, 1/2, 1/2, 1/2},
			{-1/2, 7/16, -1/2, 1/2, 1/2, -7/16},
			{-1/2, -1/2, -1/2, 1/2, -7/16, -7/16},
			{-1/2, -1/2, 7/16, 1/2, -7/16, 1/2},
			{7/16, 7/16, -1/2, 1/2, 1/2, 1/2},
			{7/16, -1/2, -1/2, 1/2, -7/16, 1/2},
			{-1/2, 7/16, -1/2, -7/16, 1/2, 1/2},
			{-1/2, -1/2, -1/2, -7/16, -7/16, 1/2},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, -1/2, 1/2, 1/2, 1/2},
			},
		},
	})
end


metal.register_grid_block(
"metal",
"bronze",
"Bronze",
{"metal_bronze_block.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_block(
"metal",
"copper",
"Copper",
{"metal_copper_block.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_block(
"metal",
"iron",
"Iron",
{"metal_iron_block.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_block(
"metal",
"steel",
"Steel",
{"metal_steel_block.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())


-- Register metal grid stair
-- Node will be called metal:grid_stair

function metal.register_grid_stair(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("metal:" .. subname .. "_grid_stair", {
		description = desc .. " Grid Stair",
		drawtype = "nodebox",
		tiles = tiles,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/16, -7/16, -7/16, 0, 0},
				{7/16, -1/16, -7/16, 1/2, 0, 0},
				{-1/2, 7/16, 7/16, 1/2, 1/2, 1/2},
				{-1/2, -1/16, -1/2, 1/2, 0, -7/16},
				{-1/2, -1/2, -1/2, 1/2, -7/16, -7/16},
				{-1/2, -1/2, 7/16, 1/2, -7/16, 1/2},
				{7/16, -1/2, -1/2, 1/2, -7/16, 1/2},
				{-1/2, -1/2, -1/2, -7/16, -7/16, 1/2},
				{-1/2, -1/2, -1/2, -7/16, -1/16, -7/16},
				{7/16, -1/2, -1/2, 1/2, -1/16, -7/16},
				{7/16, -1/2, 7/16, 1/2, 7/16, 1/2},
				{-1/2, -1/2, 7/16, -7/16, 7/16, 1/2},
				{-1/2, -1/16, -1/16, 1/2, 0, 0},
				{-1/2, 7/16, 0, -7/16, 1/2, 7/16},
				{7/16, 7/16, 0, 1/2, 1/2, 7/16},
				{-7/16, 7/16, 0, 7/16, 1/2, 1/16},
				{-1/2, -1/16, 0, -7/16, 1/2, 1/16},
				{7/16, -1/16, 0, 1/2, 1/2, 1/16},
				{-7/16, -0, 0, 7/16, 1/16, 1/16},
				},
			},
			selection_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, -1/2, 1/2, 0.0, 1/2},
				{-1/2, 0.0, 0.0, 1/2, 1/2, 1/2},
			},
		},
	})
end

metal.register_grid_stair(
"metal",
"bronze",
"Bronze", 
{"metal_bronze_split.png", "metal_bronze_block.png",
"metal_bronze_side.png^[transformFX", "metal_bronze_side.png",
"metal_bronze_block.png", "metal_bronze_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_stair(
"metal",
"copper",
"Copper",
{"metal_copper_split.png", "metal_copper_block.png",
"metal_copper_side.png^[transformFX", "metal_copper_side.png",
"metal_copper_block.png", "metal_copper_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_stair(
"metal",
"iron",
"Iron",
{"metal_iron_split.png", "metal_iron_block.png",
"metal_iron_side.png^[transformFX", "metal_iron_side.png",
"metal_iron_block.png", "metal_iron_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_stair(
"metal",
"steel",
"Steel",
{"metal_steel_split.png", "metal_steel_block.png",
"metal_steel_side.png^[transformFX", "metal_steel_side.png",
"metal_steel_block.png", "metal_steel_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())


-- Register metal grid slab
-- Node will be called metal:grid_slab

function metal.register_grid_slab(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("metal:" .. subname .. "_grid_slab", {
		description = desc .. " Grid Slab",
		drawtype = "nodebox",
		tiles = tiles,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.0625, -0.4375, -0.4375, 0, 0.4375},
				{0.4375, -0.0625, -0.4375, 0.5, 0, 0.4375},
				{-0.5, -0.0625, 0.4375, 0.5, 0, 0.5},
				{-0.5, -0.0625, -0.5, 0.5, 0, -0.4375},
				{-0.5, -0.5, -0.5, 0.5, -0.4375, -0.4375},
				{-0.5, -0.5, 0.4375, 0.5, -0.4375, 0.5},
				{0.4375, -0.5, -0.5, 0.5, -0.4375, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, -0.4375, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, -0.0625, -0.4375},
				{0.4375, -0.5, -0.5, 0.5, -0.0625, -0.4375},
				{0.4375, -0.5, 0.4375, 0.5, -0.0625, 0.5},
				{-0.5, -0.5, 0.4375, -0.4375, -0.0625, 0.5},
				},
			},
			selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			},
		},
	})
end

metal.register_grid_slab(
"metal",
"bronze",
"Bronze",
{"metal_bronze_block.png", "metal_bronze_block.png",
"metal_bronze_split.png", "metal_bronze_split.png",
"metal_bronze_split.png", "metal_bronze_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_slab(
"metal",
"copper",
"Copper",
{"metal_copper_block.png", "metal_copper_block.png",
"metal_copper_split.png", "metal_copper_split.png",
"metal_copper_split.png", "metal_copper_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_slab(
"metal",
"iron",
"Iron",
{"metal_iron_block.png", "metal_iron_block.png",
"metal_iron_split.png", "metal_iron_split.png",
"metal_iron_split.png", "metal_iron_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_slab(
"metal",
"steel",
"Steel",
{"metal_steel_block.png", "metal_steel_block.png",
"metal_steel_split.png", "metal_steel_split.png",
"metal_steel_split.png", "metal_steel_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())


-- Register  grid inner stair
-- Node will be called metal:grid_stair_inner

function metal.register_grid_stair_inner(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("metal:" .. subname .. "_grid_stair_inner", {
		description = desc .. " Grid Inner Stair",
		drawtype = "nodebox",
		tiles = tiles,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
				{-1/2, 7/16, -1/2, -1/16, 1/2, -7/16},
				{7/16, -1/16, -7/16, 1/2, 0, 0},
				{-1/2, 7/16, 7/16, 1/2, 1/2, 1/2},
				{0, -1/16, -1/2, 1/2, 0, -7/16},
				{-1/2, -1/2, -1/2, 1/2, -7/16, -7/16},
				{-1/2, -1/2, 7/16, 1/2, -7/16, 1/2},
				{7/16, -1/2, -1/2, 1/2, -7/16, 1/2},
				{-1/2, -1/2, -1/2, -7/16, -7/16, 1/2},
				{-1/2, -1/2, -1/2, -7/16, 7/16, -7/16},
				{7/16, -1/2, -1/2, 1/2, -1/16, -7/16},
				{7/16, -1/2, 7/16, 1/2, 7/16, 1/2},
				{-1/2, -1/2, 7/16, -7/16, 7/16, 1/2},
				{0, -1/16, -1/16, 1/2, 0, 0},
				{-1/2, 7/16, -7/16, -7/16, 1/2, 7/16},
				{7/16, 7/16, 0, 1/2, 1/2, 7/16},
				{0, 7/16, 0, 7/16, 1/2, 1/16},
				{-1/16, -1/16, -1/2, 0, 1/2, -7/16},
				{7/16, -1/16, 0, 1/2, 1/2, 1/16},
				{0, 0, 0, 7/16, 1/16, 1/16},
				{-1/16, 7/16, -7/16, 0, 1/2, 1/16},
				{0, -1/16, -7/16, 1/16, 0, -1/16},
				{-1/16, 0, -7/16, 0, 1/16, 0},
				{-1/16, 0, -1/16, 0, 7/16, 0},
				{0, 0, 0, 1/16, 7/16, 1/16},
				},
			},
			selection_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, -1/2, 1/2, 0.0, 1/2},
				{-1/2, 0.0, 0.0, 1/2, 1/2, 1/2},
				{-1/2, 0.0, -1/2, 0.0, 1/2, 0.0},
			},
		},
	})
end

metal.register_grid_stair_inner(
"metal",
"bronze",
"Bronze",
{"metal_bronze_side.png^[transformR270", "metal_bronze_block.png",
"metal_bronze_side.png^[transformFX", "metal_bronze_block.png",
"metal_bronze_block.png", "metal_bronze_side.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_stair_inner(
"metal",
"copper",
"Copper",
{"metal_copper_side.png^[transformR270", "metal_copper_block.png",
"metal_copper_side.png^[transformFX", "metal_copper_block.png",
"metal_copper_block.png", "metal_copper_side.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_stair_inner(
"metal",
"iron",
"Iron",
{"metal_iron_side.png^[transformR270", "metal_iron_block.png",
"metal_iron_side.png^[transformFX", "metal_iron_block.png",
"metal_iron_block.png", "metal_iron_side.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_stair_inner(
"metal",
"steel",
"Steel",
{"metal_steel_side.png^[transformR270", "metal_steel_block.png",
"metal_steel_side.png^[transformFX", "metal_steel_block.png",
"metal_steel_block.png", "metal_steel_side.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())


-- Register grid stair outer
-- Node will be called metal:grid_stair_outer

function metal.register_grid_stair_outer(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("metal:" .. subname .. "_stair_grid_outer", {
		description = desc .. " Grid Outer Stair",
		drawtype = "nodebox",
		tiles = tiles,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/16, -7/16, -7/16, 0, 0},
				{7/16, -1/16, -7/16, 1/2, 0, 7/16},
				{-1/2, 7/16, 7/16, 0, 1/2, 1/2},
				{-1/2, -1/16, -1/2, 1/2, 0, -7/16},
				{-1/2, -1/2, -1/2, 1/2, -7/16, -7/16},
				{-1/2, -1/2, 7/16, 7/16, -7/16, 1/2},
				{7/16, -1/2, -1/2, 1/2, -7/16, 1/2},
				{-1/2, -1/2, -1/2, -7/16, -7/16, 1/2},
				{-1/2, -1/2, -1/2, -7/16, -1/16, -7/16},
				{7/16, -1/2, -1/2, 1/2, -1/16, -7/16},
				{7/16, -1/2, 7/16, 1/2, -1/16, 1/2},
				{-1/2, -1/2, 7/16, -7/16, 7/16, 1/2},
				{-1/2, -1/16, -1/16, 1/16, 0, 0},
				{-1/2, 7/16, 0, -7/16, 1/2, 7/16},
				{-1/16, 7/16, 1/16, 0, 1/2, 7/16},
				{-7/16, 7/16, 0, -1/16, 1/2, 1/16},
				{-1/2, -1/16, 0, -7/16, 1/2, 1/16},
				{-1/16, 1/16, 0, 0, 1/2, 1/16},
				{-7/16, 0, 0, 0, 1/16, 1/16},
				{0, -1/16, 7/16, 1/2, 0, 1/2},
				{0, -1/16, 0, 1/16, 0, 7/16},
				{-1/16, 0, 0, 0, 1/16, 7/16},
				{-1/16, -1/16, 7/16, 0, 7/16, 1/2},
			},
		},
			selection_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, -1/2, 1/2, 0.0, 1/2},
				{-1/2, 0.0, 0.0, 0.0, 1/2, 1/2},
			},
		},
	})
end

metal.register_grid_stair_outer(
"metal",
"bronze",
"Bronze",
{"metal_bronze_side.png^[transformR90", "metal_bronze_block.png",
"metal_bronze_outer.png", "metal_bronze_side.png",
"metal_bronze_side.png^[transformR90", "metal_bronze_outer.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_stair_outer(
"metal",
"copper",
"Copper",
{"metal_copper_side.png^[transformR90", "metal_copper_block.png",
"metal_copper_outer.png", "metal_copper_side.png",
"metal_copper_side.png^[transformR90", "metal_copper_outer.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_stair_outer(
"metal",
"iron",
"Iron ",
{"metal_iron_side.png^[transformR90", "metal_iron_block.png",
"metal_iron_outer.png", "metal_iron_side.png",
"metal_iron_side.png^[transformR90", "metal_iron_outer.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_stair_outer(
"metal",
"steel",
"Steel",
{"metal_steel_side.png^[transformR90", "metal_steel_block.png",
"metal_steel_outer.png", "metal_steel_side.png",
"metal_steel_side.png^[transformR90", "metal_steel_outer.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())


-- Keep furnace just for decoration

minetest.register_node("metal:furnace", {
	description = "Furnace",
	drawtype = "nodebox",
	tiles = {
		"metal_furnace_top.png", "metal_furnace_bottom.png",
		"metal_furnace_side.png", "metal_furnace_side.png",
		"metal_furnace_side.png", "metal_furnace_front.png"
	},
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-1/2, -5/16, -7/16, 1/2, 7/16, 1/2},
			{-1/2, -1/2, -1/2, 1/2, -3/8, 1/2},
			{-7/16, -3/8, -7/16, 7/16, -5/16, 7/16},
			{-3/8, 7/16, -3/8, 3/8, 1/2, 3/8},
			{-1/2, -5/16, -1/2, -1/4, 1/2, -7/16},
			{1/4, -5/16, -1/2, 1/2, 1/2, -7/16},
			{-1/4, -5/16, -1/2, 1/4, -1/4, -7/16},
			{-1/4, 3/16, -1/2, 1/4, 1/2, -7/16},
			{-1/2, 3/16, 7/16, 1/2, 1/2, 1/2},
			{-1/2, 3/16, -7/16, -7/16, 1/2, 7/16},
			{7/16, 3/16, -7/16, 1/2, 1/2, 7/16},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, -1/2, 1/2, 1/2, 1/2},
			},
		},

	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "metal:furnace_active", param2 = node.param2})
	end,
})

minetest.register_node("metal:furnace_active", {
	description = "Furnace",
	drawtype = "nodebox",
	tiles = {
		"metal_furnace_top.png", "metal_furnace_bottom.png",
		"metal_furnace_side.png", "metal_furnace_side.png",
		"metal_furnace_side.png",
		{
			image = "metal_furnace_front_active.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1.0
			},
		}
	},
	paramtype2 = "facedir",
	light_source = 4,
	drop = {},
	not_in_creative_inventory = true,
	legacy_facedir_simple = true,
	is_ground_content = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-1/2, -5/16, -7/16, 1/2, 7/16, 1/2},
			{-1/2, -1/2, -1/2, 1/2, -3/8, 1/2},
			{-7/16, -3/8, -7/16, 7/16, -5/16, 7/16},
			{-3/8, 7/16, -3/8, 3/8, 1/2, 3/8},
			{-1/2, -5/16, -1/2, -1/4, 1/2, -7/16},
			{1/4, -5/16, -1/2, 1/2, 1/2, -7/16},
			{-1/4, -5/16, -1/2, 1/4, -1/4, -7/16},
			{-1/4, 3/16, -1/2, 1/4, 1/2, -7/16},
			{-1/2, 3/16, 7/16, 1/2, 1/2, 1/2},
			{-1/2, 3/16, -7/16, -7/16, 1/2, 7/16},
			{7/16, 3/16, -7/16, 1/2, 1/2, 7/16},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, -1/2, 1/2, 1/2, 1/2},
			},
		},

	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "metal:furnace", param2 = node.param2})
	end,
})


minetest.register_node("metal:ladder_steel", {
	description = "Steel Ladder",
	drawtype = "signlike",
	tiles = {"metal_ladder_steel.png"},
	inventory_image = "metal_ladder_steel.png",
	wield_image = "metal_ladder_steel.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	groups = {cracky = 2},
	drop = {},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("metal:ladder_iron", {
	description = "Iron Ladder",
	drawtype = "signlike",
	tiles = {"metal_ladder_iron.png"},
	inventory_image = "metal_ladder_iron.png",
	wield_image = "metal_ladder_iron.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	groups = {cracky = 2},
	drop = {},
	sounds = default.node_sound_metal_defaults(),
})
