-- mods/default/nodes.lua


--[[ Node name convention:

Although many node names are in combined-word form, the required form for new
node names is words separated by underscores. If both forms are used in written
language (for example pinewood and pine wood) the underscore form should be used.

--]]


--[[ Index:

Stone
-----

default_granite
default:limestone
default:river_stone?
default:mossy_river_stone?
default:rock
default:mossy_rock
default:sandstone
default:stone
default:mossy_stone


Soft / Non-Stone
----------------
(1. Material 2. Modified forms)

default:dirt
default:dirt_path
default:dirt_with_coniferous_litter
default:dirt_with_grass
default:dirt_with_snow

default:soil?
default:soil_with_dry_grass (change to wetland or swamp grass)?

default:clay
default:gravel
default:sand

Trees
-----
(1. Trunk 2. Fabricated trunk 3. Leaves 4. Sapling 5. Fruits)

default:tree (turn into maple tree, change schematic)
default:wood
default:leaves
default:sapling
x-default:apple

default:willow_tree
default:willow_wood
default:willow_leaves
default:willow_sapling
x-default:emergent_jungle_sapling (replace with emergent willow?)

default:pine_tree
default:pine_wood
default:pine_needles
default:pine_sapling

x-default:acacia_tree (replace with ash or elm)
x-default:acacia_wood
x-default:acacia_leaves
x-default:acacia_sapling

default:birch_tree
default:birch_wood
default:birch_leaves
default:birch_sapling


Plantlife
---------

default:papyrus
default:dry_shrub

default:grass_1
default:grass_2
default:grass_3
default:grass_4
default:grass_5

default:dry_grass_1 (switch to wetland grass or swamp grass)
default:dry_grass_2
default:dry_grass_3
default:dry_grass_4
default:dry_grass_5

default:fern_1
default:fern_2
default:fern_3

default:marram_grass_1
default:marram_grass_2
default:marram_grass_3

default:bush_stem
default:bush_leaves
default:bush_sapling

default:pine_bush_stem
default:pine_bush_needles
default:pine_bush_sapling

default:sand_with_kelp

Corals
------

default:coral_brown
default:coral_orange
default:coral_skeleton

Liquids
-------
(1. Source 2. Flowing)

default:water_source
default:water_flowing

default:river_water_source
default:river_water_flowing (make same colour as water source)

default:lava_source
default:lava_flowing

--]]

--default = {}
--
-- Stone
--

minetest.register_node("default:granite", {
	description = "Granite",
	tiles = {"default_granite.png"},
	groups = {cracky = 3, stone = 1},
--	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("default:granite_mossy", {
	description = "Granite",
	tiles = {"default_granite.png^stone_moss.png"},
	groups = {cracky = 3, stone = 1},
--	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("default:limestone", {
	description = "Limestone",
	tiles = {"default_limestone.png"},
	groups = {crumbly = 1, cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("default:river_rock", {
	description = "River Rock",
	tiles = {"default_river_rock.png"},
	groups = {cracky = 3, stone = 1},
--	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("default:river_rock_mossy", {
	description = "Mossy River Rock",
	tiles = {"default_river_rock_mossy.png"},
	groups = {cracky = 3, stone = 1},
	drop = {},
--	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:rock", {
	description = "Rock",
	tiles = {"default_rock.png"},
	groups = {cracky = 3, stone = 1},
--	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("default:rock_mossy", {
	description = "Mossy Rock",
	tiles = {"default_rock_mossy.png"},
	groups = {cracky = 3, stone = 1},
--	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("default:sandstone", {
	description = "Sandstone",
	tiles = {"default_sandstone.png"},
	groups = {crumbly = 1, cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("default:stone", {
	description = "Stone",
	tiles = {"default_stone.png"},
	groups = {cracky = 3, stone = 1},
--	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("default:stone_mossy", {
	description = "Mossy Stone",
	tiles = {"default_stone_mossy.png"},
	groups = {cracky = 3, stone = 1},
--	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})


--
-- Soft / Non-Stone
--

minetest.register_node("default:dirt_path", {
	description = "Dirt Path",
	drawtype = "nodebox",
	node_box = {
		type = "connected",
		fixed = {
			{-1/2, -1/2, -1/2, 1/2, 3/8, 1/2},
			},
		},
	tiles = {"default_dirt.png"},
	groups = {crumbly = 3, soil = 1},
	sounds = default.node_sound_dirt_defaults(),
	drop = {},
})

-- Path dirt don't convert
minetest.register_node("default:path_dirt", {
	description = "Path Dirt",
	tiles = {"default_dirt.png"},
	groups = {crumbly = 3, soil = 1},
	sounds = default.node_sound_dirt_defaults(),
	drop = {},
})

minetest.register_node("default:dirt", {
	description = "Dirt",
	tiles = {"default_dirt.png"},
	groups = {crumbly = 3, soil = 1},
	sounds = default.node_sound_dirt_defaults(),
	drop = {},
})

minetest.register_node("default:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles = {"default_grass.png", "default_dirt.png",
		{name = "default_dirt.png^default_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	drop = {},
	}),
})

--[[minetest.register_node("default:dirt_with_grass_footsteps", {
	description = "Dirt with Grass and Footsteps",
	tiles = {"default_grass.png^default_footprint.png", "default_dirt.png",
		{name = "default_dirt.png^default_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, not_in_creative_inventory = 1},
	drop = {},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})]]--

minetest.register_node("default:dirt_with_dry_grass", {
	description = "Dirt with Dry Grass",
	tiles = {"default_dry_grass.png",
		"default_dirt.png",
		{name = "default_dirt.png^default_dry_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.4},
	drop = {},
	}),
})

--[[minetest.register_node("default:dirt_with_snow", {
	description = "Dirt with Snow",
	tiles = {"default_snow.png", "default_dirt.png",
		{name = "default_dirt.png^default_snow_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, snowy = 1},
	drop = {},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_snow_footstep", gain = 0.2},
	}),
})]]--

minetest.register_node("default:dirt_with_coniferous_litter", {
	description = "Dirt with Coniferous Litter",
	tiles = {
		"default_coniferous_litter.png",
		"default_dirt.png",
		{name = "default_dirt.png^default_coniferous_litter_side.png",
			tileable_vertical = false}
	},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.4},
	drop = {},
	}),
})

minetest.register_node("default:sand", {
	description = "Sand",
	tiles = {"default_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
	sounds = default.node_sound_sand_defaults(),
	drop = {},
})

minetest.register_node("default:granite_gravel", {
	description = "Granite Gravel",
	tiles = {"default_granite_gravel.png"},
	groups = {crumbly = 2, falling_node = 1},
	sounds = default.node_sound_gravel_defaults(),
	drop = {},
})

minetest.register_node("default:granite_gravel_mossy", {
	description = "Mossy Granite Gravel",
	tiles = {"default_granite_gravel_mossy.png"},
	groups = {crumbly = 2, falling_node = 1},
	sounds = default.node_sound_gravel_defaults(),
	drop = {},
})

minetest.register_node("default:granite_gravel_path", {
	description = "Granite Gravel Path",
	drawtype = "nodebox",
	node_box = {
		type = "connected",
		fixed = {
			{-1/2, -1/2, -1/2, 1/2, 3/8, 1/2},
			},
		},
	tiles = {"default_granite_gravel.png"},
	groups = {crumbly = 3, soil = 1},
	sounds = default.node_sound_dirt_defaults(),
	drop = {},
})

minetest.register_node("default:granite_gravel_mossy_path", {
	description = "Mossy Granite Gravel Path",
	drawtype = "nodebox",
	node_box = {
		type = "connected",
		fixed = {
			{-1/2, -1/2, -1/2, 1/2, 3/8, 1/2},
			},
		},
	tiles = {"default_granite_gravel_mossy.png"},
	groups = {crumbly = 3, soil = 1},
	sounds = default.node_sound_dirt_defaults(),
	drop = {},
})

minetest.register_node("default:rock_gravel", {
	description = "Rock Gravel",
	tiles = {"default_rock_gravel.png"},
	groups = {crumbly = 2, falling_node = 1},
	sounds = default.node_sound_gravel_defaults(),
	drop = {},
})

minetest.register_node("default:rock_gravel_mossy", {
	description = "Mossy Rock Gravel",
	tiles = {"default_rock_gravel_mossy.png"},
	groups = {crumbly = 2, falling_node = 1},
	sounds = default.node_sound_gravel_defaults(),
	drop = {},
})

minetest.register_node("default:rock_gravel_path", {
	description = "Rock Gravel Path",
	drawtype = "nodebox",
	node_box = {
		type = "connected",
		fixed = {
			{-1/2, -1/2, -1/2, 1/2, 3/8, 1/2},
			},
		},
	tiles = {"default_rock_gravel.png"},
	groups = {crumbly = 3, soil = 1},
	sounds = default.node_sound_dirt_defaults(),
	drop = {},
})

minetest.register_node("default:rock_gravel_mossy_path", {
	description = "Mossy Rock Gravel Path",
	drawtype = "nodebox",
	node_box = {
		type = "connected",
		fixed = {
			{-1/2, -1/2, -1/2, 1/2, 3/8, 1/2},
			},
		},
	tiles = {"default_rock_gravel_mossy.png"},
	groups = {crumbly = 3, soil = 1},
	sounds = default.node_sound_dirt_defaults(),
	drop = {},
})

minetest.register_node("default:clay", {
	description = "Clay",
	tiles = {"default_clay.png"},
	groups = {crumbly = 3},
	sounds = default.node_sound_dirt_defaults(),
	drop = {},
})


--[[minetest.register_node("default:snow", {
	description = "Snow",
	tiles = {"default_snow.png"},
	inventory_image = "default_snowball.png",
	wield_image = "default_snowball.png",
	paramtype = "light",
	buildable_to = true,
	floodable = true,
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -7 / 16, 0.5},
		},
	},
	groups = {crumbly = 3, falling_node = 1, puts_out_fire = 1, snowy = 1},
	sounds = default.node_sound_snow_defaults(),

	on_construct = function(pos)
		pos.y = pos.y - 1
		if minetest.get_node(pos).name == "default:dirt_with_grass" then
			minetest.set_node(pos, {name = "default:dirt_with_snow"})
		end
	end,
})

minetest.register_node("default:snowblock", {
	description = "Snow Block",
	tiles = {"default_snow.png"},
	groups = {crumbly = 3, puts_out_fire = 1, cools_lava = 1, snowy = 1},
	sounds = default.node_sound_snow_defaults(),

	on_construct = function(pos)
		pos.y = pos.y - 1
		if minetest.get_node(pos).name == "default:dirt_with_grass" then
			minetest.set_node(pos, {name = "default:dirt_with_snow"})
		end
	end,
})

-- 'is ground content = false' to avoid tunnels in sea ice or ice rivers
minetest.register_node("default:ice", {
	description = "Ice",
	tiles = {"default_ice.png"},
	is_ground_content = false,
	paramtype = "light",
	groups = {cracky = 3, puts_out_fire = 1, cools_lava = 1, slippery = 3},
	drop = {},
	sounds = default.node_sound_glass_defaults(),
})

-- Mapgen-placed ice with 'is ground content = true' to contain tunnels
minetest.register_node("default:cave_ice", {
	description = "Cave Ice",
	tiles = {"default_ice.png"},
	paramtype = "light",
	groups = {cracky = 3, puts_out_fire = 1, cools_lava = 1, slippery = 3},
	drop = {},
	sounds = default.node_sound_glass_defaults(),
})]]--


--
-- Trees
--

minetest.register_node("default:tree", {
	description = "Apple Tree",
	paramtype2 = "facedir",
	tiles = {"default_tree_top.png", "default_tree_top.png", "default_tree.png"},
	is_ground_content = false,
	groups = {choppy = 2, tree = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = {},
	
	on_place = minetest.rotate_node
})

minetest.register_node("default:sapling", {
	description = "Apple Tree Sapling",
	paramtype = "light",
	drawtype = "plantlike",
	tiles = {"default_sapling.png"},
	inventory_image = "default_sapling.png",
	wield_image = "default_sapling.png",
	sunlight_propagates = true,
	walkable = false,
	on_timer = default.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"default:sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 6, z = 2},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

minetest.register_node("default:leaves", {
	description = "Apple Tree Leaves",
	paramtype = "light",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves.png"},
	special_tiles = {"default_leaves_simple.png"},
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},

	after_place_node = default.after_place_leaves,
})

--[[minetest.register_node("default:apple", {
	description = "Apple",
	drawtype = "plantlike",
	tiles = {"default_apple.png"},
	inventory_image = "default_apple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-3 / 16, -7 / 16, -3 / 16, 3 / 16, 4 / 16, 3 / 16}
	},
	groups = {fleshy = 3, dig_immediate = 3, flammable = 2,
		leafdecay = 3, leafdecay_drop = 1, food_apple = 1},
	on_use = minetest.item_eat(2),
	sounds = default.node_sound_leaves_defaults(),
	drop = {},

	after_place_node = function(pos, placer, itemstack)
		minetest.set_node(pos, {name = "default:apple", param2 = 1})
	end,

	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		if oldnode.param2 == 0 then
			minetest.set_node(pos, {name = "default:apple_mark"})
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		end
	end,
})

minetest.register_node("default:apple_mark", {
	description = "Apple Marker",
	drawtype = "airlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	groups = {not_in_creative_inventory = 1},
	on_timer = function(pos, elapsed)
		if not minetest.find_node_near(pos, 1, "default:leaves") then
			minetest.remove_node(pos)
		elseif minetest.get_node_light(pos) < 11 then
			minetest.get_node_timer(pos):start(200)
		else
			minetest.set_node(pos, {name = "default:apple"})
		end
	end
})]]--

--- Willow Tree

minetest.register_node("default:willow_tree", {
	description = "Willow Tree",
	paramtype2 = "facedir",
	tiles = {"default_willow_tree.png",},
	groups = {choppy = 2, tree = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = {},

	on_place = minetest.rotate_node
})

minetest.register_node("default:willow_log", {
	description = "Willow Tree Log",
	paramtype2 = "facedir",
	tiles = {
		"default_willow_log.png",
		"default_willow_log.png",
		"default_willow_tree.png",
	},
	groups = {choppy = 2, tree = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = {},

	on_place = minetest.rotate_node
})

minetest.register_node("default:willow_leaves", {
	description = "Willow Tree Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_willow_leaves.png"},
	special_tiles = {"default_willow_leaves_simple.png"},
	paramtype = "light",
    walkable = false,
    climbable = true,
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:willow_sapling", {
	description = "Willow Tree Sapling",
	drawtype = "plantlike",
	tiles = {"default_willow_sapling.png"},
	inventory_image = "default_willow_sapling.png",
	wield_image = "default_willow_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = default.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"default:willow_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 15, z = 2},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

--[[
minetest.register_node("default:jungletree", {
	description = "Jungle Tree",
	tiles = {"default_jungletree_top.png", "default_jungletree_top.png",
		"default_jungletree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})]]--


--[[minetest.register_node("default:jungleleaves", {
	description = "Jungle Tree Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_jungleleaves.png"},
	special_tiles = {"default_jungleleaves_simple.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {'default:junglesapling'}, rarity = 20},
			{items = {'default:jungleleaves'}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:junglesapling", {
	description = "Jungle Tree Sapling",
	drawtype = "plantlike",
	tiles = {"default_junglesapling.png"},
	inventory_image = "default_junglesapling.png",
	wield_image = "default_junglesapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = default.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"default:junglesapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 15, z = 2},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})


minetest.register_node("default:emergent_jungle_sapling", {
	description = "Emergent Jungle Tree Sapling",
	drawtype = "plantlike",
	tiles = {"default_emergent_jungle_sapling.png"},
	inventory_image = "default_emergent_jungle_sapling.png",
	wield_image = "default_emergent_jungle_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = default.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"default:emergent_jungle_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -3, y = -5, z = -3},
			{x = 3, y = 31, z = 3},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})]]--


minetest.register_node("default:pine_tree", {
	description = "Pine Tree",
	tiles = {"default_pine_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy = 3, tree = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = {},

	on_place = minetest.rotate_node
})

minetest.register_node("default:pine_log", {
	description = "Pine Tree Log",
	tiles = {"default_pine_log.png", "default_pine_log.png",
		"default_pine_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy = 3, tree = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = {},

	on_place = minetest.rotate_node
})

minetest.register_node("default:pine_needles",{
	description = "Pine Needles",
	drawtype = "allfaces_optional",
	tiles = {"default_pine_needles.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:pine_sapling", {
	description = "Pine Tree Sapling",
	drawtype = "plantlike",
	tiles = {"default_pine_sapling.png"},
	inventory_image = "default_pine_sapling.png",
	wield_image = "default_pine_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = default.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"default:pine_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 14, z = 2},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})


minetest.register_node("default:birch_tree", {
	description = "Birch Tree",
	tiles = {"default_birch_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy = 3, tree = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = {},

	on_place = minetest.rotate_node
})

minetest.register_node("default:birch_log", {
	description = "Birch Tree Log",
	tiles = {"default_birch_log.png", "default_birch_log.png",
		"default_birch_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy = 3, tree = 1},
	sounds = default.node_sound_wood_defaults(),
	drop = {},

	on_place = minetest.rotate_node
})

minetest.register_node("default:birch_leaves", {
	description = "Birch Tree Leaves",
	drawtype = "allfaces_optional",
	tiles = {"default_birch_leaves.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:birch_sapling", {
	description = "Birch Tree Sapling",
	drawtype = "plantlike",
	tiles = {"default_birch_sapling.png"},
	inventory_image = "default_birch_sapling.png",
	wield_image = "default_birch_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = default.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-3 / 16, -0.5, -3 / 16, 3 / 16, 0.5, 3 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"default:birch_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 12, z = 2},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})


--
-- Plantlife (non-cubic)
--

minetest.register_node("default:papyrus", {
	description = "Papyrus",
	drawtype = "plantlike",
	tiles = {"default_papyrus.png"},
	inventory_image = "default_papyrus.png",
	wield_image = "default_papyrus.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})

minetest.register_node("default:dry_shrub", {
	description = "Dry Shrub",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"default_dry_shrub.png"},
	inventory_image = "default_dry_shrub.png",
	wield_image = "default_dry_shrub.png",
	paramtype = "light",
	paramtype2 = "meshoptions",
	place_param2 = 4,
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
	},
})

minetest.register_node("default:junglegrass", {
	description = "Jungle Grass",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.69,
	tiles = {"default_junglegrass.png"},
	inventory_image = "default_junglegrass.png",
	wield_image = "default_junglegrass.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
})


minetest.register_node("default:grass_1", {
	description = "Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"default_grass_1.png"},
	inventory_image = "default_grass_3.png",
	wield_image = "default_grass_3.png",
	paramtype = "light",
	sunlight_propagates = true,
	paramtype2 = "meshoptions",
	place_param2 = 8,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16},
	},

	on_place = function(itemstack, placer, pointed_thing)
		local stack = ItemStack("default:grass_" .. math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("default:grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 5 do
	minetest.register_node("default:grass_" .. i, {
		description = "Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"default_grass_" .. i .. ".png"},
		inventory_image = "default_grass_" .. i .. ".png",
		wield_image = "default_grass_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		paramtype2 = "meshoptions",
		place_param2 = 8,
		walkable = false,
		buildable_to = true,
		groups = {snappy = 3, flora = 1, attached_node = 1,
			not_in_creative_inventory = 1, grass = 1, flammable = 1},
		sounds = default.node_sound_leaves_defaults(),
		drop = {},
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16},
		},
	})
end


minetest.register_node("default:dry_grass_1", {
	description = "Dry Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"default_dry_grass_1.png"},
	inventory_image = "default_dry_grass_3.png",
	wield_image = "default_dry_grass_3.png",
	paramtype = "light",
	sunlight_propagates = true,
	paramtype2 = "meshoptions",
	place_param2 = 8,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, flora = 1,
		attached_node = 1, dry_grass = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16},
	},

	on_place = function(itemstack, placer, pointed_thing)
		local stack = ItemStack("default:dry_grass_" .. math.random(1, 5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("default:dry_grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 5 do
	minetest.register_node("default:dry_grass_" .. i, {
		description = "Dry Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"default_dry_grass_" .. i .. ".png"},
		inventory_image = "default_dry_grass_" .. i .. ".png",
		wield_image = "default_dry_grass_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		paramtype2 = "meshoptions",
		place_param2 = 8,
		walkable = false,
		buildable_to = true,
		groups = {snappy = 3, flammable = 3, flora = 1, attached_node = 1,
			not_in_creative_inventory=1, dry_grass = 1},
		sounds = default.node_sound_leaves_defaults(),
		drop = {},
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -1 / 16, 6 / 16},
		},
	})
end


minetest.register_node("default:fern_1", {
	description = "Fern",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"default_fern_1.png"},
	inventory_image = "default_fern_1.png",
	wield_image = "default_fern_1.png",
	paramtype = "light",
	sunlight_propagates = true,
	paramtype2 = "meshoptions",
	place_param2 = 8,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
	},

	on_place = function(itemstack, placer, pointed_thing)
		local stack = ItemStack("default:fern_" .. math.random(1, 3))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("default:fern_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 3 do
	minetest.register_node("default:fern_" .. i, {
		description = "Fern",
		drawtype = "plantlike",
		waving = 1,
		visual_scale = 2,
		tiles = {"default_fern_" .. i .. ".png"},
		inventory_image = "default_fern_" .. i .. ".png",
		wield_image = "default_fern_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		paramtype2 = "meshoptions",
		place_param2 = 8,
		walkable = false,
		buildable_to = true,
		groups = {snappy = 3, flammable = 3, flora = 1, attached_node = 1,
			not_in_creative_inventory=1},
		sounds = default.node_sound_leaves_defaults(),
		drop = {},
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
		},
	})
end


minetest.register_node("default:marram_grass_1", {
	description = "Marram Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"default_marram_grass_1.png"},
	inventory_image = "default_marram_grass_1.png",
	wield_image = "default_marram_grass_1.png",
	paramtype = "light",
	sunlight_propagates = true,
	paramtype2 = "meshoptions",
	place_param2 = 8,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
	},

	on_place = function(itemstack, placer, pointed_thing)
		local stack = ItemStack("default:marram_grass_" .. math.random(1, 3))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("default:marram_grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,
})

for i = 2, 3 do
	minetest.register_node("default:marram_grass_" .. i, {
		description = "Marram Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"default_marram_grass_" .. i .. ".png"},
		inventory_image = "default_marram_grass_" .. i .. ".png",
		wield_image = "default_marram_grass_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
	paramtype2 = "meshoptions",
	place_param2 = 8,
		walkable = false,
		buildable_to = true,
		groups = {snappy = 3, flammable = 3, attached_node = 1,
			not_in_creative_inventory=1},
		sounds = default.node_sound_leaves_defaults(),
		drop = {},
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -0.25, 6 / 16},
		},
	})
end


minetest.register_node("default:bush_stem", {
	description = "Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"default_bush_stem.png"},
	inventory_image = "default_bush_stem.png",
	wield_image = "default_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
	drop = {},
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_node("default:bush_leaves", {
	description = "Bush Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves_simple.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:bush_sapling", {
	description = "Bush Sapling",
	drawtype = "plantlike",
	tiles = {"default_bush_sapling.png"},
	inventory_image = "default_bush_sapling.png",
	wield_image = "default_bush_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = default.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 2 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"default:bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})


minetest.register_node("default:pine_bush_stem", {
	description = "Pine Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"default_pine_bush_stem.png"},
	inventory_image = "default_pine_bush_stem.png",
	wield_image = "default_pine_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
	drop = {},
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_node("default:pine_bush_needles", {
	description = "Pine Bush Needles",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_pine_bush_needles.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:pine_bush_sapling", {
	description = "Pine Bush Sapling",
	drawtype = "plantlike",
	tiles = {"default_pine_bush_sapling.png"},
	inventory_image = "default_pine_bush_sapling.png",
	wield_image = "default_pine_bush_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = default.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 2 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {},

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"default:pine_bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

minetest.register_node("default:sand_with_kelp", {
	description = "Kelp",
	drawtype = "plantlike_rooted",
	waving = 1,
	tiles = {"default_sand.png"},
	special_tiles = {{name = "default_kelp.png", tileable_vertical = true}},
	inventory_image = "default_kelp.png",
	paramtype = "light",
	paramtype2 = "leveled",
	groups = {snappy = 3},
	drop = {},
	selection_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
				{-2/16, 0.5, -2/16, 2/16, 3.5, 2/16},
		},
	},
	node_dig_prediction = "default:sand",
	node_placement_prediction = "",

	on_place = function(itemstack, placer, pointed_thing)
		-- Call on_rightclick if the pointed node defines it
		if pointed_thing.type == "node" and placer and
				not placer:get_player_control().sneak then
			local node_ptu = minetest.get_node(pointed_thing.under)
			local def_ptu = minetest.registered_nodes[node_ptu.name]
			if def_ptu and def_ptu.on_rightclick then
				return def_ptu.on_rightclick(pointed_thing.under, node_ptu, placer,
					itemstack, pointed_thing)
			end
		end

		local pos = pointed_thing.under
		if minetest.get_node(pos).name ~= "default:sand" then
			return itemstack
		end

		local height = math.random(4, 6)
		local pos_top = {x = pos.x, y = pos.y + height, z = pos.z}
		local node_top = minetest.get_node(pos_top)
		local def_top = minetest.registered_nodes[node_top.name]
		local player_name = placer:get_player_name()

		if def_top and def_top.liquidtype == "source" and
				minetest.get_item_group(node_top.name, "water") > 0 then
			if not minetest.is_protected(pos, player_name) and
					not minetest.is_protected(pos_top, player_name) then
				minetest.set_node(pos, {name = "default:sand_with_kelp",
					param2 = height * 16})
				if not (creative and creative.is_enabled_for
						and creative.is_enabled_for(player_name)) then
					itemstack:take_item()
				end
			else
				minetest.chat_send_player(player_name, "Node is protected")
				minetest.record_protection_violation(pos, player_name)
			end
		end

		return itemstack
	end,

	after_destruct  = function(pos, oldnode)
		minetest.set_node(pos, {name = "default:sand"})
	end
})


--
-- Corals
--

minetest.register_node("default:coral_brown", {
	description = "Brown Coral",
	tiles = {"default_coral_brown.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("default:coral_orange", {
	description = "Orange Coral",
	tiles = {"default_coral_orange.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})

minetest.register_node("default:coral_skeleton", {
	description = "Coral Skeleton",
	tiles = {"default_coral_skeleton.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drop = {},
})


--
-- Liquids
--

minetest.register_node("default:water_source", {
	description = "Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_water_source.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.5,
			},
		},
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name = "default_water_source.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.5,
			},
			backface_culling = false,
		},
	},
	alpha = 225,
--    use_texture_alpha = true,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "default:water_flowing",
	liquid_alternative_source = "default:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 220, r = 68, g = 93, b = 100},
	groups = {water = 3, liquid = 3, puts_out_fire = 1, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("default:water_flowing", {
	description = "Flowing Water",
	drawtype = "flowingliquid",
	tiles = {"default_water.png"},
	special_tiles = {
		{
			name = "default_water_flowing.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "default_water_flowing.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 225,
--    use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "default:water_flowing",
	liquid_alternative_source = "default:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 220, r = 68, g = 93, b = 100},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})


minetest.register_node("default:river_water_source", {
	description = "River Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_water_source.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		{
			name = "default_water_source.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 230,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "default:water_flowing",
	liquid_alternative_source = "default:water_source",
	liquid_viscosity = 1,
	-- Not renewable to avoid horizontal spread of water sources in sloping
	-- rivers that can cause water to overflow riverbanks and cause floods.
	-- River water source is instead made renewable by the 'force renew'
	-- option used in the 'bucket' mod by the river water bucket.
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 220, r = 68, g = 93, b = 100},
	groups = {water = 3, liquid = 3, puts_out_fire = 1, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("default:river_water_flowing", {
	description = "Flowing River Water",
	drawtype = "flowingliquid",
	tiles = {"default_water.png"},
	special_tiles = {
		{
			name = "default_water_flowing.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "default_water_flowing.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 230,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "default:water_flowing",
	liquid_alternative_source = "default:water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 220, r = 68, g = 93, b = 100},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("default:lava_source", {
	description = "Lava Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_lava_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	special_tiles = {
		-- New-style lava source material (mostly unused)
		{
			name = "default_lava_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
			backface_culling = false,
		},
	},
	paramtype = "light",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "default:lava_flowing",
	liquid_alternative_source = "default:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, igniter = 1},
})

minetest.register_node("default:lava_flowing", {
	description = "Flowing Lava",
	drawtype = "flowingliquid",
	tiles = {"default_lava.png"},
	special_tiles = {
		{
			name = "default_lava_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
		{
			name = "default_lava_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "default:lava_flowing",
	liquid_alternative_source = "default:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, igniter = 1,
		not_in_creative_inventory = 1},
})

--
-- Signs this needs to be moved too
--
local function register_sign(material, desc, def)
	minetest.register_node("default:sign_wall_" .. material, {
		description = desc .. " Sign",
		drawtype = "nodebox",
		tiles = {"default_sign_wall_" .. material .. ".png"},
		inventory_image = "default_sign_" .. material .. ".png",
		wield_image = "default_sign_" .. material .. ".png",
		paramtype = "light",
		paramtype2 = "wallmounted",
		sunlight_propagates = true,
		is_ground_content = false,
		walkable = false,
		node_box = {
			type = "wallmounted",
			wall_top    = {-0.4375, 0.4375, -0.3125, 0.4375, 0.5, 0.3125},
			wall_bottom = {-0.4375, -0.5, -0.3125, 0.4375, -0.4375, 0.3125},
			wall_side   = {-0.5, -0.3125, -0.4375, -0.4375, 0.3125, 0.4375},
		},
		groups = def.groups,
		legacy_wallmounted = true,
		sounds = def.sounds,
		drop = {},

		on_construct = function(pos)
			--local n = minetest.get_node(pos)
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec", "field[text;;${text}]")
		end,
		on_receive_fields = function(pos, formname, fields, sender)
			--print("Sign at "..minetest.pos_to_string(pos).." got "..dump(fields))
			local player_name = sender:get_player_name()
			if minetest.is_protected(pos, player_name) then
				minetest.record_protection_violation(pos, player_name)
				return
			end
			local meta = minetest.get_meta(pos)
			if not fields.text then return end
			minetest.log("action", (player_name or "") .. " wrote \"" ..
				fields.text .. "\" to sign at " .. minetest.pos_to_string(pos))
			meta:set_string("text", fields.text)
			meta:set_string("infotext", '"' .. fields.text .. '"')
		end,
	})
end

register_sign("wood", "Wooden", {
	groups = {choppy = 2, attached_node = 1},
	sounds = default.node_sound_wood_defaults(),
})

register_sign("steel", "Steel", {
	groups = {cracky = 2, attached_node = 1},
	sounds = default.node_sound_metal_defaults(),
})


--
-- register trees for leafdecay
--

if minetest.get_mapgen_setting("mg_name") == "v6" then
	default.register_leafdecay({
		trunks = {"default:tree"},
		leaves = {"default:apple", "default:leaves"},
		radius = 2,
	})

	default.register_leafdecay({
		trunks = {"default:jungletree"},
		leaves = {"default:jungleleaves"},
		radius = 3,
	})

	default.register_leafdecay({
		trunks = {"default:pine_tree"},
		leaves = {"default:pine_needles"},
		radius = 3,
	})
else
	default.register_leafdecay({
		trunks = {"default:tree"},
		leaves = {"default:leaves"},
		radius = 3,
	})

	default.register_leafdecay({
		trunks = {"default:willow_tree"},
		leaves = {"default:willow_leaves"},
		radius = 2,
	})

	default.register_leafdecay({
		trunks = {"default:pine_tree"},
		leaves = {"default:pine_needles"},
		radius = 2,
	})
end

default.register_leafdecay({
	trunks = {"default:birch_tree"},
	leaves = {"default:birch_leaves"},
	radius = 2,
})

default.register_leafdecay({
	trunks = {"default:bush_stem"},
	leaves = {"default:bush_leaves"},
	radius = 1,
})

default.register_leafdecay({
	trunks = {"default:pine_bush_stem"},
	leaves = {"default:pine_bush_needles"},
	radius = 1,
})

