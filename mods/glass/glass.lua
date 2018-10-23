-- Glass Materials

glass = {}

--
-- Glass Nodes
--

minetest.register_node("glass:glass", {
	description = "Glass",
	drawtype = "glasslike_framed_optional",
	paramtype = "light",
	paramtype2 = "glasslikeliquidlevel",
	use_texture_alpha = true,
	light_source = 4,
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	drop = {},
	tiles = {{
			name = "glass_glass^glass_flash.png", 
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 25,
			},
		},
	}})

minetest.register_node("glass:obsidian_glass", {
	description = "Obsidian Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"glass_obsidian.png"},
	paramtype = "light",
	paramtype2 = "glasslikeliquidlevel",
	is_ground_content = false,
	sunlight_propagates = true,
	groups = {cracky = 3},
	drop = {},
	sounds = default.node_sound_glass_defaults(),
})


function glass.register_block(modname, subname, desc, tiles, groups, sounds)
minetest.register_node("glass:" .. subname .. "_block", {
	description = desc,
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

function glass.register_glass_nodes(modname, subname, desc, tiles, groups, sounds)
	glass.register_block(modname, subname, desc, tiles, groups, sounds)
end


glass.register_block(
"glass",
"glass_glass",
"Glass Block",
{"glass_glass.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_glass_defaults())

glass.register_block(
"glass",
"glass_obsidian_glass",
"Obsidian Glass Block",
{"glass_obsidian.png"},
{cracky = 3, oddly_breakable_by_hand = 3},
default.node_sound_glass_defaults())


function glass.register_stair(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("glass:" .. subname .. "_stair", {
		description = desc,
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
				{-0.4375, -0.4375, -0.4375, 0.4375, -0.0625, 0.4375},
				{-0.5, -0.0625, -0.4375, -0.4375, 0, 0},
				{0.4375, -0.0625, -0.4375, 0.5, 0, 0},
				{-0.5, 0.4375, 0.4375, 0.5, 0.5, 0.5},
				{-0.5, -0.0625, -0.5, 0.5, 0, -0.4375},
				{-0.5, -0.5, -0.5, 0.5, -0.4375, -0.4375},
				{-0.5, -0.5, 0.4375, 0.5, -0.4375, 0.5},
				{0.4375, -0.5, -0.5, 0.5, -0.4375, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, -0.4375, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, -0.0625, -0.4375},
				{0.4375, -0.5, -0.5, 0.5, -0.0625, -0.4375},
				{0.4375, -0.5, 0.4375, 0.5, 0.4375, 0.5},
				{-0.5, -0.5, 0.4375, -0.4375, 0.4375, 0.5},
				{-0.5, -0.0625, -0.0625, 0.5, 0, 0},
				{-0.5, 0.4375, 0, -0.4375, 0.5, 0.4375},
				{0.4375, 0.4375, 0, 0.5, 0.5, 0.4375},
				{-0.4375, 0.4375, 0, 0.4375, 0.5, 0.0625},
				{-0.5, -0.0625, 0, -0.4375, 0.5, 0.0625},
				{0.4375, -0.0625, 0, 0.5, 0.5, 0.0625},
				{-0.4375, -0.0625, 0, 0.4375, 0.0625, 0.0625},
				{-0.4375, -0.4375, 0.0625, 0.4375, 0.4375, 0.4375},
				},
			},
			selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.5, 0.5, 0.5},
			},
		},
	})
end

function glass.register_glass_nodes(modname, subname, desc, tiles, groups, sounds)
	glass.register_stair(modname, subname, desc, tiles, groups, sounds)
end

glass.register_stair(
	"glass",
	"glass", 
	"Glass Stair", 
	{"glass_split.png", "glass.png",
	"glass_stairside.png^[transformFX", "glass_stairside.png",
	"glass.png", "glass_split.png"},
	{cracky = 3},
	default.node_sound_glass_defaults())

glass.register_stair(
	"glass",
	"obsidian_glass", 
	"Obsidian Glass Stair", 
	{"glass_obsidian_split.png", "glass_obsidian.png",
	"glass_obsidian_stairside.png^[transformFX", "glass_obsidian_stairside.png",
	"glass_obsidian.png", "glass_obsidian_split.png"},
	{cracky = 3},
	default.node_sound_glass_defaults())


-- Register glass slab
-- Node will be called glass:slab

function glass.register_slab(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("glass:" .. subname .. "_slab", {
		description = desc,
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
				{-0.4375, -0.4375, -0.4375, 0.4375, -0.0625, 0.4375},
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

function glass.register_glass_nodes(modname, subname, desc, tiles, groups, sounds)
	glass.register_slab(modname, subname, desc, tiles, groups, sounds)
end

glass.register_slab(
	"glass",
	"glass", 
	"Glass Slab", 
	{"glass_glass.png", "glass_glass.png", "glass_split.png"},
	{cracky = 3},
	default.node_sound_glass_defaults())

glass.register_slab(
	"glass",
	"obsidian_glass", 
	"Obsidian Glass Slab", 
	{"glass_obsidian.png", "glass_obsidian.png", "glass_obsidian_split.png"},
	{cracky = 3},
	default.node_sound_glass_defaults())


-- Register inner stair
-- Node will be called glass:stair_inner

function glass.register_stair_inner(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("glass:" .. subname .. "_stair_inner", {
		description = desc,
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
				{-0.4375, -0.4375, -0.4375, 0.4375, -0.0625, 0.4375},
				{-0.5, 0.4375, -0.5, -0.0625, 0.5, -0.4375},
				{0.4375, -0.0625, -0.4375, 0.5, 0, 0},
				{-0.5, 0.4375, 0.4375, 0.5, 0.5, 0.5},
				{0, -0.0625, -0.5, 0.5, 0, -0.4375},
				{-0.5, -0.5, -0.5, 0.5, -0.4375, -0.4375},
				{-0.5, -0.5, 0.4375, 0.5, -0.4375, 0.5},
				{0.4375, -0.5, -0.5, 0.5, -0.4375, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, -0.4375, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, 0.4375, -0.4375},
				{0.4375, -0.5, -0.5, 0.5, -0.0625, -0.4375},
				{0.4375, -0.5, 0.4375, 0.5, 0.4375, 0.5},
				{-0.5, -0.5, 0.4375, -0.4375, 0.4375, 0.5},
				{-0.0625, -0.0625, -0.0625, 0.5, 0, 0},
				{-0.5, 0.4375, -0.4375, -0.4375, 0.5, 0.4375},
				{0.4375, 0.4375, 0, 0.5, 0.5, 0.4375},
				{0, 0.4375, 0, 0.4375, 0.5, 0.0625},
				{-0.0625, -0.0625, -0.5, 0, 0.5, -0.4375},
				{0.4375, -0.0625, 0, 0.5, 0.5, 0.0625},
				{-0.0625, -0.0625, 0, 0.4375, 0.0625, 0.0625},
				{-0.4375, -0.4375, 0.0625, 0.4375, 0.4375, 0.4375},
				{-0.0625, 0.4375, -0.4375, 0, 0.5, 0.0625},
				{-0.4375, -0.4375, -0.4375, -0.0625, 0.4375, 0.0625},
				{0, -0.0625, -0.4375, 0.0625, 0, -0.0625},
				{-0.0625, 0, -0.4375, 0, 0.0625, 0},
				{-0.0625, 0, -0.0625, 0, 0.4375, 0.0625},
				{0, 0, 0, 0.0625, 0.4375, 0.0625},
				},
			},
			selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.5, 0.5, 0.5},
				{-0.5, 0.0, -0.5, 0.0, 0.5, 0.0},
			},
		},
	})
end

function glass.register_glass_nodes(modname, subname, desc, tiles, groups, sounds)
	glass.register_stair_inner(modname, subname, desc, tiles, groups, sounds)
end

glass.register_stair_inner(
	"glass",
	"glass", 
	"Glass Inner Stair", 
	{"glass_stairside.png^[transformR270", "glass_glass.png",
	"glass_stairside.png^[transformFX", "glass_glass.png",
	"glass_glass.png", "glass_stairside.png"},
	{cracky = 3},
	default.node_sound_glass_defaults())

glass.register_stair_inner(
	"glass",
	"obsidian_glass", 
	"Obsidian Glass Inner Stair", 
	{"glass_obsidian_stairside.png^[transformR270", "glass_obsidian.png",
	"glass_obsidian_stairside.png^[transformFX", "glass_obsidian.png",
	"glass_obsidian.png", "glass_obsidian_stairside.png"},
	{cracky = 3},
	default.node_sound_glass_defaults())


-- Register outer stair
-- Node will be called glass:stair_outer

function glass.register_stair_outer(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("glass:" .. subname .. "_stair_outer", {
		description = desc,
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
				{-0.4375, -0.4375, -0.4375, 0.4375, -0.0625, 0.4375},
				{-0.5, -0.0625, -0.4375, -0.4375, 0, 0},
				{0.4375, -0.0625, -0.4375, 0.5, 0, 0.4375},
				{-0.5, 0.4375, 0.4375, 0, 0.5, 0.5},
				{-0.5, -0.0625, -0.5, 0.5, 0, -0.4375},
				{-0.5, -0.5, -0.5, 0.5, -0.4375, -0.4375},
				{-0.5, -0.5, 0.4375, 0.4375, -0.4375, 0.5},
				{0.4375, -0.5, -0.5, 0.5, -0.4375, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, -0.4375, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, -0.0625, -0.4375},
				{0.4375, -0.5, -0.5, 0.5, -0.0625, -0.4375},
				{0.4375, -0.5, 0.4375, 0.5, -0.0625, 0.5},
				{-0.5, -0.5, 0.4375, -0.4375, 0.4375, 0.5},
				{-0.5, -0.0625, -0.0625, 0.0625, 0, 0},
				{-0.5, 0.4375, 0, -0.4375, 0.5, 0.4375},
				{-0.0625, 0.4375, 0.0625, 0, 0.5, 0.4375},
				{-0.4375, 0.4375, 0, -0.0625, 0.5, 0.0625},
				{-0.5, -0.0625, 0, -0.4375, 0.5, 0.0625},
				{-0.0625, 0.0625, 0, 0, 0.5, 0.0625},
				{-0.4375, -0.0625, 0, 0, 0.0625, 0.0625},
				{-0.4375, -0.4375, 0.0625, -0.0625, 0.4375, 0.4375},
				{0, -0.0625, 0.4375, 0.5, 0, 0.5},
				{0, -0.0625, 0, 0.0625, 0, 0.4375},
				{-0.0625, 0, 0, 0, 0.0625, 0.4375},
				{-0.0625, 0, 0.4375, 0, 0.4375, 0.5},
				},
			},
			selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.0, 0.5, 0.5},
			},
		},
	})
end

function glass.register_glass_nodes(modname, subname, desc, tiles, groups, sounds)
	glass.register_stair_outer(modname, subname, desc, tiles, groups, sounds)
end

glass.register_stair_outer(
	"glass",
	"glass", 
	"Glass Outer Stair", 
	{"glass_stairside.png^[transformR90", "glass_glass.png",
	"glass_outer_stairside.png", "glass_stairside.png",
	"glass_stairside.png^[transformR90","glass_outer_stairside.png"},
	{cracky = 3},
	default.node_sound_glass_defaults())

glass.register_stair_outer(
	"glass",
	"obsidian_glass", 
	"Obsidian Glass Outer Stair", 
	{"glass_obsidian_stairside.png^[transformR90", "glass_obsidian.png",
	"glass_obsidian_outer_stairside.png", "glass_obsidian_stairside.png",
	"glass_obsidian_stairside.png^[transformR90","glass_obsidian_outer_stairside.png"},
	{cracky = 3},
	default.node_sound_glass_defaults())
