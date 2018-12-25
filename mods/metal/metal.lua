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
	drop = {},
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
"Grey Aluminium",
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


--
-- Metal Stairs
--

if minetest.get_modpath( "stairs") then
stairs.register_stair_and_slab(
	"bronze",
	"metal:bronze",
	{cracky = 1, level = 2},
	{"metal_bronze.png"},
	"Bronze Stair",
	"Bronze Slab",
	default.node_sound_metal_defaults()
)

stairs.register_stair_and_slab(
	"iron",
	"metal:iron",
	{cracky = 1, level = 2},
	{"metal_iron.png"},
	"Iron Stair",
	"Iron Slab",
	default.node_sound_metal_defaults()
)

stairs.register_stair_and_slab(
	"rusted",
	"metal:rusted",
	{cracky = 1, level = 2},
	{"metal_rusted.png"},
	"Rusted Stair",
	"Rusted Slab",
	default.node_sound_metal_defaults()
)

stairs.register_stair_and_slab(
	"steel",
	"metal:steel",
	{cracky = 1, level = 2},
	{"metal_steel.png"},
	"Steel Stair",
	"Steel Slab",
	default.node_sound_metal_defaults()
)
end


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
	drop = {},
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
	not_in_creative_inventory = true,
	legacy_facedir_simple = true,
	is_ground_content = false,
	drop = {},
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
