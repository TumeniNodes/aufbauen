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
	image = "wood_birch_ladder.png",
	texture = {"wood_birch_planks.png", "wood_birch_planks.png",
				"wood_birch_planks.png", "wood_birch_planks.png",
				"wood_birch_ladder.png","wood_birch_ladder.png"},
	inventory_image = "wood_birch_ladder.png",
	wield_image = "wood_birch_ladder.png",
	material = "wood:birch",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

ladder.register_ladder("wood:ladder_junglewood", {
	description = "Junglewood Ladder",
	image = "wood_junglewood_ladder.png",
	texture = {"wood_junglewood_planks.png", "wood_junglewood_planks.png",
				"wood_junglewood_planks.png", "wood_junglewood_planks.png",
				"wood_junglewood_ladder.png","wood_junglewood_ladder.png"},
	inventory_image = "wood_junglewood_ladder.png",
	wield_image = "wood_junglewood_ladder.png",
	material = "wood:junglewood",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

ladder.register_ladder("wood:ladder_oak", {
	description = "Oak Ladder",
	image = "wood_oak_ladder.png",
	texture = {"wood_oak_planks.png", "wood_oak_planks.png",
				"wood_oak_planks.png", "wood_oak_planks.png",
				"wood_oak_ladder.png","wood_oak_ladder.png"},
	inventory_image = "wood_oak_ladder.png",
	wield_image = "wood_oak_ladder.png",
	material = "wood:oak",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

ladder.register_ladder("wood:ladder_pine", {
	description = "Pine Ladder",
	image = "wood_pine_ladder.png",
	texture = {"wood_pine_planks.png", "wood_pine_planks.png",
				"wood_pine_planks.png", "wood_pine_planks.png",
				"wood_pine_ladder.png","wood_pine_ladder.png"},
	inventory_image = "wood_pine_ladder.png",
	wield_image = "wood_pine_ladder.png",
	material = "wood:pine",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

ladder.register_ladder("wood:ladder_willow", {
	description = "Willow Ladder",
	image = "wood_willow_ladder.png",
	texture = {"wood_willow_planks.png", "wood_willow_planks.png",
				"wood_willow_planks.png", "wood_willow_planks.png",
				"wood_willow_ladder.png","wood_willow_ladder.png"},
	inventory_image = "wood_willow_ladder.png",
	wield_image = "wood_willow_ladder.png",
	material = "wood:willow",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

ladder.register_ladder("wood:ladder_wood", {
	description = "Wood Ladder",
	image = "wood_wood_ladder.png",
	texture = {"wood_wood_planks.png", "wood_wood_planks.png",
				"wood_wood_planks.png", "wood_wood_planks.png",
				"wood_wood_ladder.png","wood_wood_ladder.png"},
	inventory_image = "wood_wood_ladder.png",
	wield_image = "wood_wood_ladder.png",
	material = "wood:wood",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})


--
-- Picket Fence
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

pickets.register_picket_and_picket_corner_and_picket_icorner("_birch", "wood:birch_planks",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"wood_birch_planks.png", "wood_birch_planks.png",
		"wood_birch_picket.png", "wood_birch_picket.png",
		"wood_birch_picket.png", "wood_birch_picket.png"},
		"Brich Picket",
		"Birch Picket Corner",
		"Birch Picket iCorner",
		default.node_sound_wood_defaults())

pickets.register_picket_and_picket_corner_and_picket_icorner("_junglewood", "wood:junglewood_planks",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"wood_junglewood_planks.png", "wood_junglewood_planks.png",
		"wood_junglewood_picket.png", "wood_junglewood_picket.png",
		"wood_junglewood_picket.png", "wood_junglewood_picket.png"},
		"Junglewood Picket",
		"Junglewood Picket Corner",
		"Junglewood Picket iCorner",
		default.node_sound_wood_defaults())

pickets.register_picket_and_picket_corner_and_picket_icorner("_oak", "wood:oak_planks",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"wood_oak_planks.png", "wood_oak_planks.png",
		"wood_oak_picket.png", "wood_oak_picket.png",
		"wood_oak_picket.png", "wood_oak_picket.png"},
		"Oak Picket",
		"Oak Picket Corner",
		"Oak Picket iCorner",
		default.node_sound_wood_defaults())

pickets.register_picket_and_picket_corner_and_picket_icorner("_pine", "wood:pine_planks",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"wood_pine_planks.png", "wood_pine_planks.png",
		"wood_pine_picket.png", "wood_pine_picket.png",
		"wood_pine_picket.png", "wood_pine_picket.png"},
		"Pine Picket",
		"Pine Picket Corner",
		"Pine Picket iCorner",
		default.node_sound_wood_defaults())

pickets.register_picket_and_picket_corner_and_picket_icorner("_willow", "wood:willow_planks",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"wood_willow_planks.png", "wood_willow_planks.png",
		"wood_willow_picket.png", "wood_willow_picket.png",
		"wood_willow_picket.png", "wood_willow_picket.png"},
		"Willow Picket",
		"Willow Picket Corner",
		"Willow Picket iCorner",
		default.node_sound_wood_defaults())

pickets.register_picket_and_picket_corner_and_picket_icorner("_wood", "wood:wood_planks",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"wood_wood_planks.png", "wood_wood_planks.png",
		"wood_wood_picket.png", "wood_wood_picket.png",
		"wood_wood_picket.png", "wood_wood_picket.png"},
		"Wood Picket",
		"Wood Picket Corner",
		"Wood Picket iCorner",
		default.node_sound_wood_defaults())
