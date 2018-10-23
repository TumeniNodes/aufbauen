-- Minetest 5.0 mod: metal_stairs 0.1 | Copyright © 2018 TumeniNodes
-- See README.txt for licensing and other information.

metal_stairs = {}

-- Register metal stair
-- Node will be called metal_stairs:stair

function metal_stairs.register_stair(modname, subname, desc, tiles)
	minetest.register_node("metal_stairs:" .. subname .. "_stair", {
		description = desc .. "Stair",
		drawtype = "nodebox",
		tiles = {tiles},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 1, level = 2},
		sounds = default.node_sound_metal_defaults(),
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

function metal_stairs.register_metal_nodes(modname, subname, desc, tiles)
	metal_stairs.register_stair(modname, subname, desc, tiles)
end

metal_stairs.register_stair("metal_stairs", "bronze", "Bronze Stair", "metal_bronze_block.png")
metal_stairs.register_stair("metal_stairs", "copper",  "Copper Stair", "metal_copper_block.png")
metal_stairs.register_stair("metal_stairs", "iron", "Iron Stair", "metal_iron_block.png")
metal_stairs.register_stair("metal_stairs", "steel", "Steel Stair", "metal_steel_block.png")


-- Register metal slab
-- Node will be called metal_stairs:slab

function metal_stairs.register_slab(modname, subname, desc, tiles)
	minetest.register_node("metal_stairs:" .. subname .. "_slab", {
		description = desc .. "Slab",
		drawtype = "nodebox",
		tiles = {tiles},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 1, level = 2},
		sounds = default.node_sound_metal_defaults(),
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

function metal_stairs.register_metal_nodes(modname, subname, desc, tiles)
	metal_stairs.register_slab(modname, subname, desc, tiles)
end

metal_stairs.register_slab("metal_stairs", "bronze", "Bronze Slab", "metal_bronze_block.png")
metal_stairs.register_slab("metal_stairs", "copper",  "Copper Slab", "metal_copper_block.png")
metal_stairs.register_slab("metal_stairs", "iron", "Iron Slab", "metal_iron_block.png")
metal_stairs.register_slab("metal_stairs", "steel", "Steel Slab", "metal_steel_block.png")



-- Register inner stair
-- Node will be called metal_stairs:stair_inner

function metal_stairs.register_stair_inner(modname, subname, desc, tiles)
	minetest.register_node("metal_stairs:" .. subname .. "_stair_inner", {
		description = desc .. "Inner Stair",
		drawtype = "nodebox",
		tiles = {tiles},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 1, level = 2},
		sounds = default.node_sound_metal_defaults(),
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

function metal_stairs.register_metal_nodes(modname, subname, desc, tiles)
	metal_stairs.register_stair_inner(modname, subname, desc, tiles)
end

metal_stairs.register_stair_inner("metal_stairs", "bronze", "Bronze Inner Stair", "metal_bronze_block.png")
metal_stairs.register_stair_inner("metal_stairs", "copper",  "Copper Inner Stair", "metal_copper_block.png")
metal_stairs.register_stair_inner("metal_stairs", "iron", "Iron Inner Stair", "metal_iron_block.png")
metal_stairs.register_stair_inner("metal_stairs", "steel", "Steel Inner Stair", "metal_steel_block.png")



-- Register outer stair
-- Node will be called metal_stairs:stair_outer

function metal_stairs.register_stair_outer(modname, subname, desc, tiles)
	minetest.register_node("metal_stairs:" .. subname .. "_stair_outer", {
		description = desc .. "Outer Stair",
		drawtype = "nodebox",
		tiles = {tiles},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 1, level = 2},
		sounds = default.node_sound_metal_defaults(),
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

function metal_stairs.register_metal_nodes(modname, subname, desc, tiles)
	metal_stairs.register_stair_outer(modname, subname, desc, tiles)
end

metal_stairs.register_stair_outer("metal_stairs", "bronze", "Bronze Outer Stair", "metal_bronze_block.png")
metal_stairs.register_stair_outer("metal_stairs", "copper",  "Copper Outer Stair", "metal_copper_block.png")
metal_stairs.register_stair_outer("metal_stairs", "iron", "Iron Outer Stair", "metal_iron_block.png")
metal_stairs.register_stair_outer("metal_stairs", "steel", "Steel Outer Stair", "metal_steel_block.png")


-- Grid sytem (remove inner nodeboxes for grid effect)

-- Register metal stair grid
-- Node will be called metal_stairs:stair_grid

function metal_stairs.register_stair_grid(modname, subname, desc, tiles)
	minetest.register_node("metal_stairs:" .. subname .. "_stair_grid", {
		description = desc .. "Stair Grid",
		drawtype = "nodebox",
		tiles = {tiles},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 1, level = 2},
		sounds = default.node_sound_metal_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
--				{-0.4375, -0.4375, -0.4375, 0.4375, -0.0625, 0.4375},
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
--				{-0.4375, -0.4375, 0.0625, 0.4375, 0.4375, 0.4375},
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

function metal_stairs.register_metal_nodes(modname, subname, desc, tiles)
	metal_stairs.register_stair_grid(modname, subname, desc, tiles)
end

metal_stairs.register_stair_grid("metal_stairs", "bronze", "Bronze Stair Grid", "metal_bronze_block.png")
metal_stairs.register_stair_grid("metal_stairs", "copper",  "Copper Stair Grid", "metal_copper_block.png")
metal_stairs.register_stair_grid("metal_stairs", "iron", "Iron Stair Grid", "metal_iron_block.png")
metal_stairs.register_stair_grid("metal_stairs", "steel", "Steel Stair Grid", "metal_steel_block.png")


-- Register metal slab grid
-- Node will be called metal_stairs:slab_grid

function metal_stairs.register_slab_grid(modname, subname, desc, tiles)
	minetest.register_node("metal_stairs:" .. subname .. "_slab_grid", {
		description = desc .. "Slab Grid",
		drawtype = "nodebox",
		tiles = {tiles},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 1, level = 2},
		sounds = default.node_sound_metal_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
--				{-0.4375, -0.4375, -0.4375, 0.4375, -0.0625, 0.4375},
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

function metal_stairs.register_metal_nodes(modname, subname, desc, tiles)
	metal_stairs.register_slab_grid(modname, subname, desc, tiles)
end

metal_stairs.register_slab_grid("metal_stairs", "bronze", "Bronze Slab Grid", "metal_bronze_block.png")
metal_stairs.register_slab_grid("metal_stairs", "copper",  "Copper Slab Grid", "metal_copper_block.png")
metal_stairs.register_slab_grid("metal_stairs", "iron", "Iron Slab Grid", "metal_iron_block.png")
metal_stairs.register_slab_grid("metal_stairs", "steel", "Steel Slab Grid", "metal_steel_block.png")


-- Register inner stair
-- Node will be called metal_stairs:stair_frame_inner

function metal_stairs.register_stair_grid_inner(modname, subname, desc, tiles)
	minetest.register_node("metal_stairs:" .. subname .. "_stair_grid_inner", {
		description = desc .. "Inner Stair Grid",
		drawtype = "nodebox",
		tiles = {tiles},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 1, level = 2},
		sounds = default.node_sound_metal_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
--				{-0.4375, -0.4375, -0.4375, 0.4375, -0.0625, 0.4375},
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
--				{-0.4375, -0.4375, 0.0625, 0.4375, 0.4375, 0.4375},
				{-0.0625, 0.4375, -0.4375, 0, 0.5, 0.0625},
--				{-0.4375, -0.4375, -0.4375, -0.0625, 0.4375, 0.0625},
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

function metal_stairs.register_metal_nodes(modname, subname, desc, tiles)
	metal_stairs.register_stair_grid_inner(modname, subname, desc, tiles)
end

metal_stairs.register_stair_grid_inner("metal_stairs", "bronze", "Bronze Inner Stair Grid", "metal_bronze_block.png")
metal_stairs.register_stair_grid_inner("metal_stairs", "copper",  "Copper Inner Stair Grid", "metal_copper_block.png")
metal_stairs.register_stair_grid_inner("metal_stairs", "iron", "Iron Inner Stair Grid", "metal_iron_block.png")
metal_stairs.register_stair_grid_inner("metal_stairs", "steel", "Steel Inner Stair Grid", "metal_steel_block.png")


-- Register outer stair grid
-- Node will be called metal_stairs:stair_grid_outer

function metal_stairs.register_stair_grid_outer(modname, subname, desc, tiles)
	minetest.register_node("metal_stairs:" .. subname .. "_stair_grid_outer", {
		description = desc .. "Outer Stair Grid",
		drawtype = "nodebox",
		tiles = {tiles},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 1, level = 2},
		sounds = default.node_sound_metal_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
--				{-0.4375, -0.4375, -0.4375, 0.4375, -0.0625, 0.4375},
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
--				{-0.4375, -0.4375, 0.0625, -0.0625, 0.4375, 0.4375},
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

function metal_stairs.register_metal_nodes(modname, subname, desc, tiles)
	metal_stairs.register_stair_grid_outer(modname, subname, desc, tiles)
end

metal_stairs.register_stair_grid_outer("metal_stairs", "bronze", "Bronze Outer Stair Grid", "metal_bronze_block.png")
metal_stairs.register_stair_grid_outer("metal_stairs", "copper",  "Copper Outer Stair Grid", "metal_copper_block.png")
metal_stairs.register_stair_grid_outer("metal_stairs", "iron", "Iron Outer Stair Grid", "metal_iron_block.png")
metal_stairs.register_stair_grid_outer("metal_stairs", "steel", "Steel Outer Stair Grid", "metal_steel_block.png")


-- Register block grid
-- Node will be called metal_stairs:block_grid

function metal_stairs.register_block_grid(modname, subname, desc, tiles)
minetest.register_node("metal_stairs:" .. subname .. "_block_grid", {
	description = desc .. "Block Grid",
	drawtype = "nodebox",
	tiles = {tiles},
--	paramtype = "light",
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_metal_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
--			{-7/16, -7/16, -7/16, 7/16, 7/16, 7/16},
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


function metal_stairs.register_metal_nodes(modname, subname, desc, tiles)
	metal_stairs.register_block_grid(modname, subname, desc, tiles)
end

metal_stairs.register_block_grid("metal", "bronze", "Bronze Block Grid", "metal_bronze_block.png")
metal_stairs.register_block_grid("metal", "copper",  "Copper Block Grid", "metal_copper_block.png")
metal_stairs.register_block_grid("metal", "iron", "Iron Block Grid", "metal_iron_block.png")
metal_stairs.register_block_grid("metal", "steel", "Steel Block Grid", "metal_steel_block.png")

