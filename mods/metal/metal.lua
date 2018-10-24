-- Metal Materials

metal = {}

function metal.register_block(modname, subname, desc, tiles, groups, sounds)
minetest.register_node("metal:" .. subname .. "_block", {
	description = desc .. "Block",
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

function metal.register_metal_nodes(modname, subname, desc, tiles)
	metal.register_block(modname, subname, desc, tiles)
end

metal.register_block("metal", "bronze", "Bronze Block", {"metal_bronze_block.png"}, {cracky = 3, oddly_breakable_by_hand = 3}, default.node_sound_metal_defaults())
metal.register_block("metal", "copper",  "Copper Block", {"metal_copper_block.png"}, {cracky = 3, oddly_breakable_by_hand = 3}, default.node_sound_metal_defaults())
metal.register_block("metal", "iron", "Iron Block", {"metal_iron_block.png"}, {cracky = 3, oddly_breakable_by_hand = 3}, default.node_sound_metal_defaults())
metal.register_block("metal", "steel", "Steel Block", {"metal_steel_block.png"}, {cracky = 3, oddly_breakable_by_hand = 3}, default.node_sound_metal_defaults())


-- Register metal stair
-- Node will be called metal:stair

function metal.register_stair(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("metal:" .. subname .. "_stair", {
		description = desc .. "Stair",
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

function metal.register_metal_nodes(modname, subname, desc, tiles, groups, sounds)
	metal.register_stair(modname, subname, desc, tiles, groups, sounds)
end

metal.register_stair("metal", "bronze", "Bronze Stair", {"metal_bronze_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_stair("metal", "copper",  "Copper Stair", {"metal_copper_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_stair("metal", "iron", "Iron Stair", {"metal_iron_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_stair("metal", "steel", "Steel Stair", {"metal_steel_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())


-- Register metal slab
-- Node will be called metal:slab

function metal.register_slab(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("metal:" .. subname .. "_slab", {
		description = desc .. "Slab",
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

function metal.register_metal_nodes(modname, subname, desc, tiles, groups, sounds)
	metal.register_slab(modname, subname, desc, tiles, groups, sounds)
end

metal.register_slab("metal", "bronze", "Bronze Slab", {"metal_bronze_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_slab("metal", "copper",  "Copper Slab", {"metal_copper_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_slab("metal", "iron", "Iron Slab", {"metal_iron_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_slab("metal", "steel", "Steel Slab", {"metal_steel_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())


-- Register inner stair
-- Node will be called metal:stair_inner

function metal.register_stair_inner(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("metal:" .. subname .. "_stair_inner", {
		description = desc .. "Inner Stair",
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

function metal.register_metal_nodes(modname, subname, desc, tiles, groups, sounds)
	metal.register_stair_inner(modname, subname, desc, tiles, groups, sounds)
end

metal.register_stair_inner("metal", "bronze", "Bronze Inner Stair", {"metal_bronze_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_stair_inner("metal", "copper",  "Copper Inner Stair", {"metal_copper_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_stair_inner("metal", "iron", "Iron Inner Stair", {"metal_iron_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_stair_inner("metal", "steel", "Steel Inner Stair", {"metal_steel_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())


-- Register outer stair
-- Node will be called metal:stair_outer

function metal.register_stair_outer(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("metal:" .. subname .. "_stair_outer", {
		description = desc .. "Outer Stair",
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

function metal.register_metal_nodes(modname, subname, desc, tiles, groups, sounds)
	metal.register_stair_outer(modname, subname, desc, tiles, groups, sounds)
end

metal.register_stair_outer("metal", "bronze", "Bronze Outer Stair", {"metal_bronze_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_stair_outer("metal", "copper",  "Copper Outer Stair", {"metal_copper_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_stair_outer("metal", "iron", "Iron Outer Stair", {"metal_iron_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_stair_outer("metal", "steel", "Steel Outer Stair", {"metal_steel_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())


-- Grid sytem (remove inner nodeboxes for grid effect)

-- Register metal stair grid
-- Node will be called metal:stair_grid

function metal.register_stair_grid(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("metal:" .. subname .. "_stair_grid", {
		description = desc .. "Stair Grid",
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

function metal.register_metal_nodes(modname, subname, desc, tiles, groups, sounds)
	metal.register_stair_grid(modname, subname, desc, tiles, groups, sounds)
end

metal.register_stair_grid("metal", "bronze", "Bronze Stair Grid", {"metal_bronze_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_stair_grid("metal", "copper",  "Copper Stair Grid", {"metal_copper_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_stair_grid("metal", "iron", "Iron Stair Grid", {"metal_iron_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_stair_grid("metal", "steel", "Steel Stair Grid", {"metal_steel_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())


-- Register metal slab grid
-- Node will be called metal:slab_grid

function metal.register_slab_grid(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("metal:" .. subname .. "_slab_grid", {
		description = desc .. "Slab Grid",
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

function metal.register_metal_nodes(modname, subname, desc, tiles, groups, sounds)
	metal.register_slab_grid(modname, subname, desc, tiles, groups, sounds)
end

metal.register_slab_grid("metal", "bronze", "Bronze Slab Grid", {"metal_bronze_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_slab_grid("metal", "copper",  "Copper Slab Grid", {"metal_copper_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_slab_grid("metal", "iron", "Iron Slab Grid", {"metal_iron_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_slab_grid("metal", "steel", "Steel Slab Grid", {"metal_steel_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())


-- Register inner stair
-- Node will be called metal:stair_frame_inner

function metal.register_stair_grid_inner(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("metal:" .. subname .. "_stair_grid_inner", {
		description = desc .. "Inner Stair Grid",
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
				{-0.0625, 0.4375, -0.4375, 0, 0.5, 0.0625},
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

function metal.register_metal_nodes(modname, subname, desc, tiles, groups, sounds)
	metal.register_stair_grid_inner(modname, subname, desc, tiles, groups, sounds)
end

metal.register_stair_grid_inner("metal", "bronze", "Bronze Inner Stair Grid", {"metal_bronze_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_stair_grid_inner("metal", "copper",  "Copper Inner Stair Grid", {"metal_copper_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_stair_grid_inner("metal", "iron", "Iron Inner Stair Grid", {"metal_iron_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_stair_grid_inner("metal", "steel", "Steel Inner Stair Grid", {"metal_steel_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())


-- Register outer stair grid
-- Node will be called metal:stair_grid_outer

function metal.register_stair_grid_outer(modname, subname, desc, tiles, groups, sounds)
	minetest.register_node("metal:" .. subname .. "_stair_grid_outer", {
		description = desc .. "Outer Stair Grid",
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

function metal.register_metal_nodes(modname, subname, desc, tiles, groups, sounds)
	metal.register_stair_grid_outer(modname, subname, desc, tiles, groups, sounds)
end

metal.register_stair_grid_outer("metal", "bronze", "Bronze Outer Stair Grid", {"metal_bronze_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_stair_grid_outer("metal", "copper",  "Copper Outer Stair Grid", {"metal_copper_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_stair_grid_outer("metal", "iron", "Iron Outer Stair Grid", {"metal_iron_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_stair_grid_outer("metal", "steel", "Steel Outer Stair Grid", {"metal_steel_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())


-- Register block grid
-- Node will be called metal:block_grid

function metal.register_block_grid(modname, subname, desc, tiles, groups, sounds)
minetest.register_node("metal:" .. subname .. "_block_grid", {
	description = desc .. "Block Grid",
	drawtype = "nodebox",
	tiles = tiles,
--	paramtype = "light",
	is_ground_content = false,
	groups = groups,
	sounds = sounds,
	node_box = {
		type = "fixed",
		fixed = {
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


function metal.register_metal_nodes(modname, subname, desc, tiles, groups, sounds)
	metal.register_block_grid(modname, subname, desc, tiles, groups, sounds)
end

metal.register_block_grid("metal", "bronze", "Bronze Block Grid", {"metal_bronze_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_block_grid("metal", "copper",  "Copper Block Grid", {"metal_copper_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_block_grid("metal", "iron", "Iron Block Grid", {"metal_iron_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())
metal.register_block_grid("metal", "steel", "Steel Block Grid", {"metal_steel_block.png"}, {cracky = 1, level = 2}, default.node_sound_metal_defaults())



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
	drop = {},
	not_in_creative_inventory = true,
	legacy_facedir_simple = true,
	is_ground_content = false,
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

minetest.register_node("metal:ladder_iron", {
	description = "Iron Ladder",
	drawtype = "signlike",
	tiles = {"metal_ladder_iron.png"},
	inventory_image = "metal_ladder_iron.png",
	wield_image = "metal_ladder_iron.png",
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
