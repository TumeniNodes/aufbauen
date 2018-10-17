-- Metal Materials

metal = {}

function metal.register_block(modname, subname, desc, tiles)
minetest.register_node("metal:" .. subname .. "_block", {
	description = desc .. "Block",
	drawtype = "nodebox",
	tiles = {tiles},
	paramtype = "light",
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_metal_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.4375, 0.4375, 0.4375, 0.4375},
			{-0.5, -0.5, -0.5, -0.4375, 0.5, -0.4375},
			{0.4375, -0.5, -0.5, 0.5, 0.5, -0.4375},
			{-0.5, -0.5, 0.4375, -0.4375, 0.5, 0.5},
			{0.4375, -0.5, 0.4375, 0.5, 0.5, 0.5},
			{-0.5, 0.4375, 0.4375, 0.5, 0.5, 0.5},
			{-0.5, 0.4375, -0.5, 0.5, 0.5, -0.4375},
			{-0.5, -0.5, -0.5, 0.5, -0.4375, -0.4375},
			{-0.5, -0.5, 0.4375, 0.5, -0.4375, 0.5},
			{0.4375, 0.4375, -0.5, 0.5, 0.5, 0.5},
			{0.4375, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, 0.4375, -0.5, -0.4375, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.4375, -0.4375, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
	})
end

function metal.register_metal_nodes(modname, subname, desc, tiles)
	metal.register_block(modname, subname, desc, tiles)
end

metal.register_block("metal", "bronze", "Bronze Block", "metal_bronze_block.png")
metal.register_block("metal", "copper",  "Copper Block", "metal_copper_block.png")
metal.register_block("metal", "iron", "Iron Block", "metal_iron_block.png")
metal.register_block("metal", "steel", "Steel Block", "metal_steel_block.png")


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


minetest.register_node("metal:furnace", {
	description = "Furnace",
	tiles = {
		"metal_furnace_top.png", "metal_furnace_bottom.png",
		"metal_furnace_side.png", "metal_furnace_side.png",
		"metal_furnace_side.png", "metal_furnace_front.png"
	},
	paramtype2 = "facedir",
	groups = {cracky=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),

	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "metal:furnace_active", param2 = node.param2})
	end,
})

minetest.register_node("metal:furnace_active", {
	description = "Furnace",
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
				length = 1.5
			},
		}
	},
	paramtype2 = "facedir",
	light_source = 4,
	drop = {},
	not_in_creative_inventory = true,
	legacy_facedir_simple = true,
	is_ground_content = false,

	on_rightclick = function(pos, node, puncher)
		minetest.swap_node(pos, {name = "metal:furnace", param2 = node.param2})
	end,
})
