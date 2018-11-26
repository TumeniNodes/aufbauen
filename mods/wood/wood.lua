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


ladder.register_ladder("wood:ladder_birch", {
	description = "Birch Ladder",
	image = "wood_ladder_birch.png",
	texture = {"wood_birch_planks.png", "wood_birch_planks.png",
				"wood_birch_planks.png", "wood_birch_planks.png",
				"wood_ladder_birch.png","wood_ladder_birch.png"},
	inventory_image = "wood_ladder_birch.png",
	wield_image = "wood_ladder_birch.png",
	material = "wood:birch",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

ladder.register_ladder("wood:ladder_junglewood", {
	description = "Junglewood Ladder",
	image = "wood_ladder_junglewood.png",
	texture = {"wood_junglewood_planks.png", "wood_junglewood_planks.png",
				"wood_junglewood_planks.png", "wood_junglewood_planks.png",
				"wood_ladder_junglewood.png","wood_ladder_junglewood.png"},
	inventory_image = "wood_ladder_junglewood.png",
	wield_image = "wood_ladder_junglewood.png",
	material = "wood:junglewood",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

ladder.register_ladder("wood:ladder_oak", {
	description = "Oak Ladder",
	image = "wood_ladder_oak.png",
	texture = {"wood_oak_planks.png", "wood_oak_planks.png",
				"wood_oak_planks.png", "wood_oak_planks.png",
				"wood_ladder_oak.png","wood_ladder_oak.png"},
	inventory_image = "wood_ladder_oak.png",
	wield_image = "wood_ladder_oak.png",
	material = "wood:oak",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

ladder.register_ladder("wood:ladder_pine", {
	description = "Pine Ladder",
	image = "wood_ladder_pine.png",
	texture = {"wood_pine_planks.png", "wood_pine_planks.png",
				"wood_pine_planks.png", "wood_pine_planks.png",
				"wood_ladder_pine.png","wood_ladder_pine.png"},
	inventory_image = "wood_ladder_pine.png",
	wield_image = "wood_ladder_pine.png",
	material = "wood:pine",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

ladder.register_ladder("wood:ladder_willow", {
	description = "Willow Ladder",
	image = "wood_ladder_willow.png",
	texture = {"wood_willow_planks.png", "wood_willow_planks.png",
				"wood_willow_planks.png", "wood_willow_planks.png",
				"wood_ladder_willow.png","wood_ladder_willow.png"},
	inventory_image = "wood_ladder_willow.png",
	wield_image = "wood_ladder_willow.png",
	material = "wood:willow",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

ladder.register_ladder("wood:ladder_wood", {
	description = "Wood Ladder",
	image = "wood_ladder_wood.png",
	texture = {"wood_wood_planks.png", "wood_wood_planks.png",
				"wood_wood_planks.png", "wood_wood_planks.png",
				"wood_ladder_wood.png","wood_ladder_wood.png"},
	inventory_image = "wood_ladder_wood.png",
	wield_image = "wood_ladder_wood.png",
	material = "wood:wood",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

