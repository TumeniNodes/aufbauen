-- Wood Materials


--
-- Birch Nodes
--

minetest.register_node("wood:birch_planking", {
	description = "Birch Planking",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_birch_planking.png"},
	is_ground_content = false,
	groups = {choppy = 3, wood = 1},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("wood:birch_planks", {
	description = "Birch Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_birch_planks.png"},
	is_ground_content = false,
	groups = {choppy = 3, wood = 1},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})


---
--- Junglewood Nodes
---

minetest.register_node("wood:junglewood_planking", {
	description = "Jungle Wood Planking",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_junglewood_planking.png"},
	is_ground_content = false,
	groups = {choppy = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("wood:junglewood_planks", {
	description = "Jungle Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_junglewood_planks.png"},
	is_ground_content = false,
	groups = {choppy = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})


--
-- Oak Nodes
--

minetest.register_node("wood:oak_planking", {
	description = "Oak Planking",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_oak_planking.png"},
	is_ground_content = false,
	groups = {choppy = 3, wood = 1},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("wood:oak_planks", {
	description = "Oak Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_oak_planks.png"},
	is_ground_content = false,
	groups = {choppy = 3, wood = 1},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})


--
-- Pine Nodes
--

minetest.register_node("wood:pine_planking", {
	description = "Pine Planking",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_pine_planking.png"},
	is_ground_content = false,
	groups = {choppy = 3, wood = 1},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("wood:pine_planks", {
	description = "Pine Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_pine_planks.png"},
	is_ground_content = false,
	groups = {choppy = 3, wood = 1},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})

--
-- Willow Nodes
--

minetest.register_node("wood:willow_planking", {
	description = "Willow Planking",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_willow_planking.png",},
	groups = {choppy = 1, wood=1},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("wood:willow_planks", {
	description = "Willow Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_willow_planks.png",},
	groups = {choppy = 1, wood=1},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})


--
-- Wood Nodes
--

minetest.register_node("wood:wood_planking", {
	description = "Wood Planking",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_wood_planking.png"},
	is_ground_content = false,
	groups = {choppy = 2, wood = 1},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("wood:wood_planks", {
	description = "Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_wood_planks.png"},
	is_ground_content = false,
	groups = {choppy = 2, wood = 1},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})


--
-- Wood Ladder
--

minetest.register_node("wood:ladder_birch", {
	description = "Birch Ladder",
	drawtype = "nodebox",
	tiles = {"wood_birch_planks.png", "wood_birch_planks.png",
			"wood_birch_planks.png", "wood_birch_planks.png",
			"wood_ladder_birch.png", "wood_ladder_birch.png"},
	inventory_image = "wood_ladder_birch.png",
	wield_image = "wood_ladder_birch.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = true,
	climbable = true,
	is_ground_content = false,
	groups = {choppy = 2},
	drop = {},
	legacy_wallmounted = true,
	sounds = default.node_sound_wood_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, 0.4375, -0.25, 0.5, 0.5},
			{0.25, -0.5, 0.4375, 0.375, 0.5, 0.5},
			{-0.4375, 0.3125, 0.375, 0.4375, 0.4375, 0.4375},
			{-0.4375, 0.0625, 0.375, 0.4375, 0.1875, 0.4375},
			{-0.4375, -0.1875, 0.375, 0.4375, -0.0625, 0.4375},
			{-0.4375, -0.4375, 0.375, 0.4375, -0.3125, 0.4375},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, 0.375, 0.4375, 0.5, 0.4375},
		},
	},
})

minetest.register_node("wood:ladder_junglewood", {
	description = "Junglewood Ladder",
	drawtype = "signlike",
	tiles = {"wood_ladder_junglewood.png"},
	inventory_image = "wood_ladder_junglewood.png",
	wield_image = "wood_ladder_junglewood.png",
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
	groups = {choppy = 2},
	drop = {},
	legacy_wallmounted = true,
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("wood:ladder_oak", {
	description = "Oak Ladder",
	drawtype = "signlike",
	tiles = {"wood_ladder_oak.png"},
	inventory_image = "wood_ladder_oak.png",
	wield_image = "wood_ladder_oak.png",
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
	groups = {choppy = 2},
	drop = {},
	legacy_wallmounted = true,
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("wood:ladder_pine", {
	description = "Pine Ladder",
	drawtype = "signlike",
	tiles = {"wood_ladder_pine.png"},
	inventory_image = "wood_ladder_pine.png",
	wield_image = "wood_ladder_pine.png",
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
	groups = {choppy = 2},
	drop = {},
	legacy_wallmounted = true,
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("wood:ladder_willow", {
	description = "Willow Ladder",
	drawtype = "signlike",
	tiles = {"wood_ladder_willow.png"},
	inventory_image = "wood_ladder_willow.png",
	wield_image = "wood_ladder_willow.png",
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
	groups = {choppy = 2},
	drop = {},
	legacy_wallmounted = true,
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("wood:ladder_wood", {
	description = "Wooden Ladder",
	drawtype = "signlike",
	tiles = {"wood_ladder_wood.png"},
	inventory_image = "wood_ladder_wood.png",
	wield_image = "wood_ladder_wood.png",
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
	groups = {choppy = 2},
	drop = {},
	legacy_wallmounted = true,
	sounds = default.node_sound_wood_defaults(),
})


--
-- Fences
--

--[[
default.register_fence("wood:fence_birch", {
	description = "Birch Fence",
	image = "wood_fence_birch.png",
	texture = {"wood_fence_birch.png"},
	inventory_image = "wood_fence_birch_inv.png",
	wield_image = "wood_fence_birch_inv.png",
	material = "wood:birch_wood",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

default.register_fence("wood:fence_junglewood", {
	description = "Jungle Wood Fence",
	image = "wood_fence_junglewood.png",
	texture = {"wood_fence_junglewood.png"},
	inventory_image = "wood_fence_junglewood_inv.png",
	wield_image = "wood_fence_junglewood_inv.png",
	material = "wood:junglewood",
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
	drop = {}
})

default.register_fence("wood:fence_oak", {
	description = "Oak Fence",
	image = "wood_fence_oak.png",
	texture = {"wood_fence_oak.png"},
	inventory_image = "wood_fence_oak_inv.png",
	wield_image = "wood_fence_oak_inv.png",
	material = "wood:oak_wood",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

default.register_fence("wood:fence_pine", {
	description = "Pine Fence",
	image = "wood_fence_pine.png",
	texture = {"wood_fence_pine.png"},
	inventory_image = "wood_fence_pine_inv.png",
	wield_image = "wood_fence_pine_inv.png",
	material = "wood:pine_wood",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

default.register_fence("wood:fence_willow", {
	description = "Willow Fence",
	image = "wood_fence_willow.png",
	texture = {"wood_fence_willow.png"},
	inventory_image = "wood_fence_willow_inv.png",
	wield_image = "wood_fence_willow_inv.png",
	material = "wood:willow_planks",
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})

default.register_fence("wood:fence_wood", {
	description = "Wood Fence",
	image = "wood_fence_wood.png",
	texture = {"wood_fence_wood.png"},
	inventory_image = "wood_fence_wood_inv.png",
	wield_image = "wood_fence_wood_inv.png",
	material = "wood:wood",
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})

default.register_fence("wood:fence_granite", {
	description = "Granite Fence Post",
	image = "wood_fence_granite.png",
	texture = {"wood_fence_granite_top.png", "wood_fence_granite_top.png", "wood_fence_granite.png"},
	inventory_image = "wood_fence_granite_inv.png",
	wield_image = "wood_fence_granite_inv.png",
	material = "wood:granite",
	drop = {},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})


--
--Fence Rails
--

default.register_fence_rail("wood:fence_rail_birch", {
	description = "Birch Fence Rail",
	texture = "wood_fence_rail_birch.png",
	inventory_image = "wood_fence_rail_birch_inv.png",
	wield_image = "wood_fence_rail_birch_inv.png",
	material = "wood:birch_wood",
	drop = {},
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})

default.register_fence_rail("wood:fence_rail_junglewood", {
	description = "Jungle Wood Fence Rail",
	texture = "wood_fence_rail_junglewood.png",
	inventory_image = "wood_fence_rail_junglewood_inv.png",
	wield_image = "wood_fence_rail_junglewood_inv.png",
	material = "wood:junglewood",
	drop = {},
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})

default.register_fence_rail("wood:fence_rail_oak", {
	description = "Oak Fence Rail",
	texture = "wood_fence_rail_oak.png",
	inventory_image = "wood_fence_rail_oak_inv.png",
	wield_image = "wood_fence_rail_oak_inv.png",
	material = "wood:oak_wood",
	drop = {},
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})

default.register_fence_rail("wood:fence_rail_pine", {
	description = "Pine Fence Rail",
	texture = "wood_fence_rail_pine.png",
	inventory_image = "wood_fence_rail_pine_inv.png",
	wield_image = "wood_fence_rail_pine_inv.png",
	material = "wood:pine_wood",
	drop = {},
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

default.register_fence_rail("wood:fence_rail_willow", {
	description = "Willow Fence Rail",
	texture = "wood_fence_rail_willow.png",
	inventory_image = "wood_fence_rail_willow_inv.png",
	wield_image = "wood_fence_rail_willow_inv.png",
	material = "wood:willow_wood",
	groups = {choppy = 2},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})

default.register_fence_rail("wood:fence_rail_wood", {
	description = "Wood Fence Rail",
	texture = "wood_fence_rail_wood.png",
	inventory_image = "wood_fence_rail_wood_inv.png",
	wield_image = "wood_fence_rail_wood_inv.png",
	material = "wood:wood",
	groups = {choppy = 2},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})
]]--
