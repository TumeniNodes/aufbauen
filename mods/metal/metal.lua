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
"black_aluminium",
"Black Aluminium",
{"metal_black.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

metal.register_basic_block(
"metal",
"grey_aluminium",
"BGrey Aluminium",
{"metal_grey.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

metal.register_basic_block(
"metal",
"white_aluminium",
"White Aluminium",
{"metal_white.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

metal.register_basic_block(
"metal",
"bronze",
"Bronze",
{"metal_bronze.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

metal.register_basic_block(
"metal",
"iron",
"Iron",
{"metal_iron.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

metal.register_basic_block(
"metal",
"rusted",
"Rusted",
{"metal_rusted.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

metal.register_basic_block(
"metal",
"steel",
"Steel",
{"metal_steel.png"},
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
"black_aluminium",
"Black Aluminium",
{"metal_black.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

metal.register_block(
"metal",
"grey_aluminium",
"Grey Aluminium",
{"metal_grey.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

metal.register_block(
"metal",
"white_aluminium",
"White Aluminium",
{"metal_white.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

metal.register_block(
"metal",
"bronze",
"Bronze",
{"metal_bronze.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

metal.register_block(
"metal",
"iron",
"Iron",
{"metal_iron.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

metal.register_block(
"metal",
"rusted",
"Rusted",
{"metal_rusted.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

metal.register_block(
"metal",
"steel",
"Steel",
{"metal_steel.png"},
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
"black_aluminium",
"Black Aluminium", 
{"metal_black_split.png", "metal_black.png",
"metal_black_side.png^[transformFX", "metal_black_side.png",
"metal_black.png", "metal_black_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair(
"metal",
"bronze",
"Bronze", 
{"metal_bronze_split.png", "metal_bronze.png",
"metal_bronze_side.png^[transformFX", "metal_bronze_side.png",
"metal_bronze.png", "metal_bronze_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair(
"metal",
"iron",
"Iron",
{"metal_iron_split.png", "metal_iron.png",
"metal_iron_side.png^[transformFX", "metal_iron_side.png",
"metal_iron.png", "metal_iron_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair(
"metal",
"rusted",
"Rusted",
{"metal_rusted_split.png", "metal_rusted.png",
"metal_rusted_side.png^[transformFX", "metal_rusted_side.png",
"metal_rusted.png", "metal_rusted_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair(
"metal",
"steel",
"Steel",
{"metal_steel_split.png", "metal_steel.png",
"metal_steel_side.png^[transformFX", "metal_steel_side.png",
"metal_steel.png", "metal_steel_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())


-- Register metal slab
-- Node will be called metal:slab

function metal.register_slab(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("metal:" .. subname .. "_slab", {
		description = desc .. " Slab",
		drawtype = "nodebox",
		tiles = tiles,
		use_texture_alpha = true,
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
"black_aluminium",
"Black Aluminium",
{"metal_black.png", "metal_black.png",
"metal_black_split.png", "metal_black_split.png",
"metal_black_split.png", "metal_black_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_slab(
"metal",
"bronze",
"Bronze",
{"metal_bronze.png", "metal_bronze.png",
"metal_bronze_split.png", "metal_bronze_split.png",
"metal_bronze_split.png", "metal_bronze_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_slab(
"metal",
"iron",
"Iron",
{"metal_iron.png", "metal_iron.png",
"metal_iron_split.png", "metal_iron_split.png",
"metal_iron_split.png", "metal_iron_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_slab(
"metal",
"rusted",
"Rusted",
{"metal_rusted.png", "metal_rusted.png",
"metal_rusted_split.png", "metal_rusted_split.png",
"metal_rusted_split.png", "metal_rusted_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_slab(
"metal",
"rusted_glass",
"Rusted Glass",
{{name ="metal_rusted_glass.png",backface_culling = true},
{name = "metal_rusted_glass.png",backface_culling = true},
{name ="metal_rusted_glass_split.png",backface_culling = true}},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_slab(
"metal",
"steel",
"Steel",
{"metal_steel.png", "metal_steel.png",
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
"black_aluminium",
"Black Aluminium",
{"metal_black_side.png^[transformR270", "metal_black.png",
"metal_black_side.png^[transformFX", "metal_black.png",
"metal_black.png", "metal_black_side.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair_inner(
"metal",
"bronze",
"Bronze",
{"metal_bronze_side.png^[transformR270", "metal_bronze.png",
"metal_bronze_side.png^[transformFX", "metal_bronze.png",
"metal_bronze.png", "metal_bronze_side.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair_inner(
"metal",
"iron",
"Iron",
{"metal_iron_side.png^[transformR270", "metal_iron.png",
"metal_iron_side.png^[transformFX", "metal_iron.png",
"metal_iron.png", "metal_iron_side.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair_inner(
"metal",
"rusted",
"Rusted",
{"metal_rusted_side.png^[transformR270", "metal_rusted.png",
"metal_rusted_side.png^[transformFX", "metal_rusted.png",
"metal_rusted.png", "metal_rusted_side.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair_inner(
"metal",
"steel",
"Steel",
{"metal_steel_side.png^[transformR270", "metal_steel.png",
"metal_steel_side.png^[transformFX", "metal_steel.png",
"metal_steel.png", "metal_steel_side.png"},
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
"black_aluminium",
"Black Aluminium",
{"metal_black_side.png^[transformR90", "metal_black.png",
"metal_black_outer.png", "metal_black_side.png",
"metal_black_side.png^[transformR90", "metal_black_outer.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair_outer(
"metal",
"bronze",
"Bronze",
{"metal_bronze_side.png^[transformR90", "metal_bronze.png",
"metal_bronze_outer.png", "metal_bronze_side.png",
"metal_bronze_side.png^[transformR90", "metal_bronze_outer.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair_outer(
"metal", "iron",
"Iron",
{"metal_iron_side.png^[transformR90", "metal_iron.png",
"metal_iron_outer.png", "metal_iron_side.png",
"metal_iron_side.png^[transformR90", "metal_iron_outer.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair_outer(
"metal",
"rusted",
"Rusted",
{"metal_rusted_side.png^[transformR90", "metal_rusted.png",
"metal_rusted_outer.png", "metal_rusted_side.png",
"metal_rusted_side.png^[transformR90", "metal_rusted_outer.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_stair_outer(
"metal",
"steel",
"Steel",
{"metal_steel_side.png^[transformR90", "metal_steel.png",
"metal_steel_outer.png", "metal_steel_side.png",
"metal_steel_side.png^[transformR90", "metal_steel_outer.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())


-- Grid sytem (remove inner nodeboxes for grid effect)
-- these can double as girders or glass nodes when building

-- Register grid block
-- Node will be called metal:grid_block

function metal.register_grid_block(modname, subname, desc, tiles, groups, sounds)
minetest.register_node("metal:" .. subname .. "_grid_block", {
	description = desc .. " Grid Block",
	drawtype = "nodebox",
	tiles = tiles,
	paramtype = "light",
	is_ground_content = false,
	climbable = true,
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
{"metal_bronze.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_block(
"metal",
"iron",
"Iron",
{"metal_iron.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_block(
"metal",
"rusted",
"Rusted",
{"metal_rusted.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_block(
"metal",
"steel",
"Steel",
{"metal_steel.png"},
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
{"metal_bronze_split.png", "metal_bronze.png",
"metal_bronze_side.png^[transformFX", "metal_bronze_side.png",
"metal_bronze.png", "metal_bronze_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_stair(
"metal",
"iron",
"Iron",
{"metal_iron_split.png", "metal_iron.png",
"metal_iron_side.png^[transformFX", "metal_iron_side.png",
"metal_iron.png", "metal_iron_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_stair(
"metal",
"rusted",
"Rusted",
{"metal_rusted_split.png", "metal_rusted.png",
"metal_rusted_side.png^[transformFX", "metal_rusted_side.png",
"metal_rusted.png", "metal_rusted_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_stair(
"metal",
"steel",
"Steel",
{"metal_steel_split.png", "metal_steel.png",
"metal_steel_side.png^[transformFX", "metal_steel_side.png",
"metal_steel.png", "metal_steel_split.png"},
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
{"metal_bronze.png", "metal_bronze.png",
"metal_bronze_split.png", "metal_bronze_split.png",
"metal_bronze_split.png", "metal_bronze_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_slab(
"metal",
"iron",
"Iron",
{"metal_iron.png", "metal_iron.png",
"metal_iron_split.png", "metal_iron_split.png",
"metal_iron_split.png", "metal_iron_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_slab(
"metal",
"rusted",
"Rusted",
{"metal_rusted.png", "metal_rusted.png",
"metal_rusted_split.png", "metal_rusted_split.png",
"metal_rusted_split.png", "metal_rusted_split.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_slab(
"metal",
"steel",
"Steel",
{"metal_steel.png", "metal_steel.png",
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
{"metal_bronze_side.png^[transformR270", "metal_bronze.png",
"metal_bronze_side.png^[transformFX", "metal_bronze.png",
"metal_bronze.png", "metal_bronze_side.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_stair_inner(
"metal",
"iron",
"Iron",
{"metal_iron_side.png^[transformR270", "metal_iron.png",
"metal_iron_side.png^[transformFX", "metal_iron.png",
"metal_iron.png", "metal_iron_side.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_stair_inner(
"metal",
"rusted",
"Rusted",
{"metal_rusted_side.png^[transformR270", "metal_rusted.png",
"metal_rusted_side.png^[transformFX", "metal_rusted.png",
"metal_rusted.png", "metal_rusted_side.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_stair_inner(
"metal",
"steel",
"Steel",
{"metal_steel_side.png^[transformR270", "metal_steel.png",
"metal_steel_side.png^[transformFX", "metal_steel.png",
"metal_steel.png", "metal_steel_side.png"},
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
{"metal_bronze_side.png^[transformR90", "metal_bronze.png",
"metal_bronze_outer.png", "metal_bronze_side.png",
"metal_bronze_side.png^[transformR90", "metal_bronze_outer.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_stair_outer(
"metal",
"iron",
"Iron ",
{"metal_iron_side.png^[transformR90", "metal_iron.png",
"metal_iron_outer.png", "metal_iron_side.png",
"metal_iron_side.png^[transformR90", "metal_iron_outer.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_stair_outer(
"metal",
"rusted",
"Rusted",
{"metal_rusted_side.png^[transformR90", "metal_rusted.png",
"metal_rusted_outer.png", "metal_rusted_side.png",
"metal_rusted_side.png^[transformR90", "metal_rusted_outer.png"},
{cracky = 1, level = 2},
default.node_sound_metal_defaults())

metal.register_grid_stair_outer(
"metal",
"steel",
"Steel",
{"metal_steel_side.png^[transformR90", "metal_steel.png",
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


--
-- Metal Ladder
--
ladder = {}

function ladder.register_ladder(name, def)

	local default_fields = {
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = def.texture,
	inventory_image = def.image,
	wield_image = def.image,
	sunlight_propagates = true,
	is_ground_content = false,
	legacy_wallmounted = true,
	walkable = true,
	climbable = true,
	groups = {},
	sounds = {},
	drop = {},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, 0.4375, -0.25, 0.5, 0.5},
			{0.25, -0.5, 0.4375, 0.375, 0.5, 0.5},
			{-0.25, 0.3125, 0.4375, 0.25, 0.4375, 0.5},
			{-0.25, 0.0625, 0.4375, 0.25, 0.1875, 0.5},
			{-0.25, -0.1875, 0.4375, 0.25, -0.0625, 0.5},
			{-0.25, -0.4375, 0.4375, 0.25, -0.3125, 0.5},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, 0.4375, 0.375, 0.5, 0.5},
		},
	},
}
for k, v in pairs(default_fields) do
		if not def[k] then
			def[k] = v
		end
	end

	-- Always add to the ladder group, even if no group provided
	def.groups.ladder = 1

	def.texture = nil
	def.material = nil

	minetest.register_node(name, def)
end


ladder.register_ladder("metal:ladder_iron", {
	description = "Iron Ladder",
	image = "metal_ladder_iron.png",
	texture = {"metal_iron.png", "metal_iron.png",
				"metal_iron.png", "metal_iron.png",
				"metal_ladder_iron.png","metal_ladder_iron.png"},
	inventory_image = "metal_ladder_iron.png",
	wield_image = "metal_ladder_iron.png",
	material = "metal:iron",
	groups = {cracky = 2},
	sounds = default.node_sound_metal_defaults(),
})

ladder.register_ladder("metal:ladder_rusted", {
	description = "Rusted Ladder",
	image = "metal_ladder_rusted.png",
	texture = {"metal_rusted.png", "metal_rusted.png",
				"metal_rusted.png", "metal_rusted.png",
				"metal_ladder_rusted.png","metal_ladder_rusted.png"},
	inventory_image = "metal_ladder_rusted.png",
	wield_image = "metal_ladder_rusted.png",
	material = "metal:rusted",
	groups = {cracky = 2},
	sounds = default.node_sound_metal_defaults(),
})

ladder.register_ladder("metal:ladder_steel", {
	description = "Steel Ladder",
	image = "metal_ladder_steel.png",
	texture = {"metal_steel.png", "metal_steel.png",
				"metal_steel.png", "metal_steel.png",
				"metal_ladder_steel.png","metal_ladder_steel.png"},
	inventory_image = "metal_ladder_steel.png",
	wield_image = "metal_ladder_steel.png",
	material = "metal:steel",
	groups = {cracky = 2},
	sounds = default.node_sound_metal_defaults(),
})


--
-- Metal Picket Fence
--

pickets = {}

function pickets.register_picket(subname, recipeitem, groups, images, description, sounds)
	groups.picket = 1
minetest.register_node(":pickets:picket" .. subname, {
	description = description,
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	facedir = simple,
	groups = groups,
	sounds = sounds,
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, -0.4375, 0.5, 0},
			{0.4375, -0.5, -0.0625, 0.5, 0.5, 0},
			{-0.3125, -0.5, -0.0625, -0.1875, 0.5, 0},
			{-0.5, 0.1875, 0, 0.5, 0.3125, 0.0625},
			{0.1875, -0.5, -0.0625, 0.3125, 0.5, 0},
			{-0.5, -0.3125, 0, 0.5, -0.1875, 0.0625},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0},
		}
	},
		selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, 0.5, 0},
		}
	},
})
end

function pickets.register_picket_corner(subname, recipeitem, groups, images, description, sounds)
	groups.picket = 1
minetest.register_node(":pickets:picket_corner" .. subname, {
	description = description,
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	facedir = simple,
	groups = groups,
	sounds = sounds,
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, 0.4375, 0, 0.5, 0.5},
			{0.4375, -0.5, -0.0625, 0.5, 0.5, 0},
			{-0.0625, -0.5, 0.1875, 0, 0.5, 0.3125},
			{0, 0.1875, 0, 0.5, 0.3125, 0.0625},
			{0.1875, -0.5, -0.0625, 0.3125, 0.5, 0},
			{0, -0.3125, 0, 0.5, -0.1875, 0.0625},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
			{0, 0.1875, 0.0625, 0.0625, 0.3125, 0.5},
			{0, -0.3125, 0.0625, 0.0625, -0.1875, 0.5},
		}
	},
		selection_box = {
		type = "fixed",
		fixed = {
			{0, -0.5, -0.0625, 0.5, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0, 0.5, 0.5},
		}
	},
})
end

function pickets.register_picket_icorner(subname, recipeitem, groups, images, description, sounds)
	groups.picket = 1
minetest.register_node(":pickets:picket_icorner" .. subname, {
	description = description,
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	facedir = simple,
	groups = groups,
	sounds = sounds,
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{0, -0.5, -0.5, 0.0625, 0.5, -0.4375},
			{0.4375, -0.5, -0.0625, 0.5, 0.5, 0},
			{0, -0.5, -0.3125, 0.0625, 0.5, -0.1875},
			{0.0625, 0.1875, 0, 0.5, 0.3125, 0.0625},
			{0.1875, -0.5, -0.0625, 0.3125, 0.5, 0},
			{0.0625, -0.3125, 0, 0.5, -0.1875, 0.0625},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
			{-0.0625, 0.1875, -0.5, 0, 0.3125, -0.0625},
			{-0.0625, -0.3125, -0.5, 0, -0.1875, -0.0625},
		}
	},
		selection_box = {
		type = "fixed",
		fixed = {
			{0.0625, -0.5, -0.0625, 0.5, 0.5, 0},
			{0, -0.5, -0.5, 0.0625, 0.5, 0},
		}
	},
})
end

function pickets.register_picket_and_picket_corner_and_picket_icorner(subname, recipeitem, groups, images,desc_picket, desc_picket_corner, desc_picket_icorner,sounds)
	pickets.register_picket(subname, recipeitem, groups, images, desc_picket, sounds)
	pickets.register_picket_corner(subname, recipeitem, groups, images, desc_picket_corner, sounds)
	pickets.register_picket_icorner(subname, recipeitem, groups, images, desc_picket_icorner, sounds)
end


-- Register pickets and picket corners

pickets.register_picket_and_picket_corner_and_picket_icorner("_iron", "metal:iron",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"metal_iron.png", "metal_iron.png",
		"metal_iron_picket.png", "metal_iron_picket.png",
		"metal_iron_picket.png", "metal_iron_picket.png"},
		"Iron Picket",
		"Iron Picket Corner",
		"Iron Picket iCorner",
		default.node_sound_metal_defaults())

pickets.register_picket_and_picket_corner_and_picket_icorner("_rusted", "metal:rusted",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"metal_rusted.png", "metal_rusted.png",
		"metal_rusted_picket.png", "metal_rusted_picket.png",
		"metal_rusted_picket.png", "metal_rusted_picket.png"},
		"Rusted Picket",
		"Rusted Picket Corner",
		"Rusted Picket iCorner",
		default.node_sound_metal_defaults())

pickets.register_picket_and_picket_corner_and_picket_icorner("_steel", "metal:steel",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"metal_steel.png", "metal_steel.png",
		"metal_steel_picket.png", "metal_steel_picket.png",
		"metal_steel_picket.png", "metal_steel_picket.png"},
		"Steel Picket",
		"Steel Picket Corner",
		"Steel Picket iCorner",
		default.node_sound_metal_defaults())
