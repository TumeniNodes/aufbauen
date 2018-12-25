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
	sounds = default.node_sound_wood_defaults(),
	drop = {},
})

minetest.register_node("wood:birch_planks", {
	description = "Birch Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_birch_planks.png"},
	is_ground_content = false,
	groups = {choppy = 3, wood = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = {},
})


--
-- Maple Nodes
--

minetest.register_node("wood:maple_planking", {
	description = "Maple Planking",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_maple_planking.png"},
	is_ground_content = false,
	groups = {choppy = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = {},
})

minetest.register_node("wood:maple_planks", {
	description = "Maple Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_maple_planks.png"},
	is_ground_content = false,
	groups = {choppy = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = {},
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
	sounds = default.node_sound_wood_defaults(),
	drop = {},
})

minetest.register_node("wood:oak_planks", {
	description = "Oak Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_oak_planks.png"},
	is_ground_content = false,
	groups = {choppy = 3, wood = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = {},
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
	sounds = default.node_sound_wood_defaults(),
	drop = {},
})

minetest.register_node("wood:pine_planks", {
	description = "Pine Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_pine_planks.png"},
	is_ground_content = false,
	groups = {choppy = 3, wood = 1},
	sounds = default.node_sound_wood_defaults(),drop = {},
})

---
--- Walnut Nodes
---

minetest.register_node("wood:walnut_planking", {
	description = "Walnut Planking",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_walnut_planking.png"},
	is_ground_content = false,
	groups = {choppy = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = {},
})

minetest.register_node("wood:walnut_planks", {
	description = "Walnut Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_walnut_planks.png"},
	is_ground_content = false,
	groups = {choppy = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = {},
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
	sounds = default.node_sound_wood_defaults(),
	drop = {},
})

minetest.register_node("wood:willow_planks", {
	description = "Willow Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_willow_planks.png",},
	groups = {choppy = 1, wood=1},
	sounds = default.node_sound_wood_defaults(),
	drop = {},
})


--
-- Wood Stairs
--

if minetest.get_modpath( "stairs") then
stairs.register_stair_and_slab(
	"birch_planking",
	"wood:birch_planking",
	{choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	{"wood_birch_planking.png"},
	"Birch Planking Stair",
	"Birch Planking Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"birch_planks",
	"wood:birch_planks",
	{choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	{"wood_birch_planks.png"},
	"Birch Planks Stair",
	"Birch Planks_Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"maple_planking",
	"wood:maple_planking",
	{choppy = 2, oddly_breakable_by_hand = 2, wood = 1},
	{"wood_maple_planking.png"},
	"Maple Planking Stair",
	"Maple Planking Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"maple_planks",
	"wood:maple_planks",
	{choppy = 2, oddly_breakable_by_hand = 2, wood = 1},
	{"wood_maple_planks.png"},
	"Maple Planks Stair",
	"Maple Planks Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"oak_planking",
	"wood:oak_planking",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"wood_oak_planking.png"},
	"Oak Planking Stair",
	"Oak Planking Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"oak_planks",
	"wood:oak_planks",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"wood_oak_planks.png"},
	"Oak Planks Stair",
	"Oak Planks Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"pine_planking",
	"wood:pine_planking",
	{choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	{"wood_pine_planking.png"},
	"Pine Planking Stair",
	"Pine Planking Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"pine_planks",
	"wood:pine_planks",
	{choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	{"wood_pine_planks.png"},
	"Pine Planks Stair",
	"Pine Planks Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"walnut_planking",
	"wood:walnut_planking",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"wood_walnut_planking.png"},
	"Walnut Planking Stair",
	"Walnut Planking Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"walnut_planks",
	"wood:walnut_planks",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"wood_walnut_planks.png"},
	"Walnut Planks Stair",
	"Walnut Planks Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"willow_planking",
	"wood:willow_planking",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"wood_willow_planking.png"},
	"Willow Planking Stair",
	"Willow Planking Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"willow_planks",
	"wood:willow_planks",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"wood_willow_planks.png"},
	"Willow Planks Stair",
	"Willow Planks Slab",
	default.node_sound_wood_defaults()
)
end


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


ladder.register_ladder("wood:birch_ladder", {
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

ladder.register_ladder("wood:maple_ladder", {
	description = "Maple Ladder",
	image = "wood_maple_ladder.png",
	texture = {"wood_maple_planks.png", "wood_maple_planks.png",
				"wood_maple_planks.png", "wood_maple_planks.png",
				"wood_maple_ladder.png","wood_maple_ladder.png"},
	inventory_image = "wood_maple_ladder.png",
	wield_image = "wood_maple_ladder.png",
	material = "wood:maple",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

ladder.register_ladder("wood:oak_ladder", {
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

ladder.register_ladder("wood:pine_ladder", {
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

ladder.register_ladder("wood:walnut_ladder", {
	description = "Walnut Ladder",
	image = "wood_walnut_ladder.png",
	texture = {"wood_walnut_planks.png", "wood_walnut_planks.png",
				"wood_walnut_planks.png", "wood_walnut_planks.png",
				"wood_walnut_ladder.png","wood_walnut_ladder.png"},
	inventory_image = "wood_walnut_ladder.png",
	wield_image = "wood_walnut_ladder.png",
	material = "wood:walnut",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

ladder.register_ladder("wood:willow_ladder", {
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
	drop = {},
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
	drop = {},
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
	drop = {},
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

pickets.register_picket_and_picket_corner_and_picket_icorner("_maple", "wood:maple_planks",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"wood_maple_planks.png", "wood_maple_planks.png",
		"wood_maple_picket.png", "wood_maple_picket.png",
		"wood_maple_picket.png", "wood_maple_picket.png"},
		"Maple Picket",
		"Maple Picket Corner",
		"Maple Picket iCorner",
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

pickets.register_picket_and_picket_corner_and_picket_icorner("_walnut", "wood:walnut_planks",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"wood_walnut_planks.png", "wood_walnut_planks.png",
		"wood_walnut_picket.png", "wood_walnut_picket.png",
		"wood_walnut_picket.png", "wood_walnut_picket.png"},
		"Walnut Picket",
		"Walnut Picket Corner",
		"Walnut Picket iCorner",
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

