-- Glass Materials

glass = {}

--
-- Basic glass nodes
--

--[[function glass.register_basic_glass(modname, subname, desc, tiles, groups, sounds)
minetest.register_node("glass:" .. subname .. "_glass", {
	drawtype = "glasslike_framed",
	description = desc .. " Basic Glass",
	tiles = tiles,
	is_ground_content = false,
	groups = groups,
	sounds = sounds,
	})
end

glass.register_basic_glass(
"glass",
"white_aluminium",
"White Aluminium",
{"glass_white.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

glass.register_basic_glass(
"glass",
"black_aluminium",
"Black Aluminium",
{"glass_black.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_metal_defaults())

--
-- 3D glass nodes
--

function glass.register_block(modname, subname, desc, tiles, groups, sounds)
minetest.register_node("glass:" .. subname .. "_block", {
	description = desc .. " Block",
	drawtype = "nodebox",
	tiles = tiles,
--	paramtype = "light",
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

glass.register_block(
"glass",
"glass",
"White Aluminium",
{"glass_white.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_glass_defaults())

glass.register_block(
"glass",
"glass",
"Black Aluminium",
{"glass_black.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_glass_defaults())


-- Register glass stair
-- Node will be called glass:stair

function glass.register_stair(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("glass:" .. subname .. "_stair", {
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

glass.register_stair(
"glass",
"white_aluminium",
"White Aluminium", 
{"glass_white_split.png", "glass_white.png",
"glass_white_side.png^[transformFX", "glass_white_side.png",
"glass_white.png", "glass_white_split.png"},
{cracky = 3},
default.node_sound_glass_defaults())

glass.register_stair(
"glass",
"black_aluminium", 
"Black Aluminium", 
{"glass_black_split.png", "glass_black.png",
"glass_black_side.png^[transformFX", "glass_black_side.png",
"glass_black.png", "glass_black_split.png"},
{cracky = 3},
default.node_sound_glass_defaults())


-- Register glass slab
-- Node will be called glass:slab

function glass.register_slab(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("glass:" .. subname .. "_slab", {
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

glass.register_slab(
	"glass",
	"glass", 
	"Glass", 
	{"glass_glass.png", "glass_glass.png", "glass_split.png"},
	{cracky = 3},
	default.node_sound_glass_defaults())

glass.register_slab(
	"glass",
	"obsidian_glass", 
	"Obsidian Glass", 
	{"glass_obsidian.png", "glass_obsidian.png", "glass_obsidian_split.png"},
	{cracky = 3},
	default.node_sound_glass_defaults())


-- Register inner stair
-- Node will be called glass:stair_inner

function glass.register_stair_inner(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("glass:" .. subname .. "_stair_inner", {
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

glass.register_stair_inner(
	"glass",
	"glass", 
	"Glass", 
	{"glass_stairside.png^[transformR270", "glass_glass.png",
	"glass_stairside.png^[transformFX", "glass_glass.png",
	"glass_glass.png", "glass_stairside.png"},
	{cracky = 3},
	default.node_sound_glass_defaults())

glass.register_stair_inner(
	"glass",
	"obsidian_glass", 
	"Obsidian Glass", 
	{"glass_obsidian_stairside.png^[transformR270", "glass_obsidian.png",
	"glass_obsidian_stairside.png^[transformFX", "glass_obsidian.png",
	"glass_obsidian.png", "glass_obsidian_stairside.png"},
	{cracky = 3},
	default.node_sound_glass_defaults())


-- Register outer stair
-- Node will be called glass:stair_outer

function glass.register_stair_outer(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("glass:" .. subname .. "_stair_outer", {
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

glass.register_stair_outer(
	"glass",
	"glass", 
	"Glass", 
	{"glass_stairside.png^[transformR90", "glass_glass.png",
	"glass_outer_stairside.png", "glass_stairside.png",
	"glass_stairside.png^[transformR90","glass_outer_stairside.png"},
	{cracky = 3},
	default.node_sound_glass_defaults())

glass.register_stair_outer(
	"glass",
	"obsidian_glass", 
	"Obsidian Glass", 
	{"glass_obsidian_stairside.png^[transformR90", "glass_obsidian.png",
	"glass_obsidian_outer_stairside.png", "glass_obsidian_stairside.png",
	"glass_obsidian_stairside.png^[transformR90","glass_obsidian_outer_stairside.png"},
	{cracky = 3},
	default.node_sound_glass_defaults())
]]--
