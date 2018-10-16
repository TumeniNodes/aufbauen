walls = {}

walls.register = function(wall_name, wall_desc, wall_texture_table, wall_mat, wall_sounds)
	--make wall_texture_table paramenter backwards compatible for mods passing single texture
	if type(wall_texture_table) ~= "table" then
		wall_texture_table = { wall_texture_table }
	end
	-- inventory node, and pole-type wall start item
	minetest.register_node(wall_name, {
		description = wall_desc,
		drawtype = "nodebox",
		node_box = {
			type = "connected",
			fixed = {{-1/4, -1/2, -1/4, 1/4, 1/2, 1/4}},
			connect_front = {{-3/16, -1/2, -1/2,  3/16, 3/8, -1/4}},
			connect_left = {{-1/2, -1/2, -3/16, -1/4, 3/8,  3/16}},
			connect_back = {{-3/16, -1/2,  1/4,  3/16, 3/8,  1/2}},
			connect_right = {{ 1/4, -1/2, -3/16,  1/2, 3/8,  3/16}},
		},
		connects_to = { "group:wall", "group:stone", "group:fence", "group:pane" },
		paramtype = "light",
		is_ground_content = false,
		walkable = true,
		groups = {cracky = 3, wall = 1, stone = 2},
		tiles = wall_texture_table,
		sounds = wall_sounds,
				after_place_node = function(pos, placer, itemstack, pointed_thing)
			local pos_under = {x = pos.x, y = pos.y - 1, z = pos.z}
			local pos_above = {x = pos.x, y = pos.y + 1, z = pos.z}
			local node_under = string.gsub(minetest.get_node(pos_under).name, "_full$", "")
			local node_above = string.gsub(minetest.get_node(pos_above).name, "_full$", "")

			if minetest.get_item_group(node_under, "wall") == 1 then
				minetest.set_node(pos_under, {name = node_under .. "_full"})
			end
			if minetest.get_item_group(node_above, "wall") == 1 then
				minetest.set_node(pos, {name = wall_name .. "_full"})
			end
		end,
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			local pos_under = {x = pos.x, y = pos.y - 1, z = pos.z}
			local node_under = string.gsub(minetest.get_node(pos_under).name, "_full$", "")
			if minetest.get_item_group(node_under, "wall") == 1 and
					digger and digger:is_player() then
				minetest.set_node(pos_under, {name = node_under})
			end
		end,
	})

	minetest.register_node(wall_name .. "_full", {
		description = wall_desc,
		drawtype = "nodebox",
		node_box = {
			type = "connected",
			fixed = {{-1/4, -1/2, -1/4, 1/4, 1/2, 1/4}},
			connect_front = {{-3/16, -1/2, -1/2,  3/16, 1/2, -1/4}},
			connect_left = {{-1/2, -1/2, -3/16, -1/4, 1/2,  3/16}},
			connect_back = {{-3/16, -1/2,  1/4,  3/16, 1/2,  1/2}},
			connect_right = {{ 1/4, -1/2, -3/16,  1/2, 1/2,  3/16}},
		},
		connects_to = {"group:wall", "group:stone", "group:fence", "group:pane"},
		paramtype = "light",
		is_ground_content = false,
		groups = {cracky = 3, wall = 1, stone = 2},
		tiles = wall_texture_table,
		sounds = wall_sounds,
		drop = wall_name,
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			local pos_under = {x = pos.x, y = pos.y - 1, z = pos.z}
			local node_under = string.gsub(minetest.get_node(pos_under).name, "_full$", "")
			if minetest.get_item_group(node_under, "wall") == 1 and
					digger and digger:is_player() then
				minetest.set_node(pos_under, {name = node_under})
			end
		end,
})

	-- add a low wall and full low wall to use between original walls or alone
	minetest.register_node(wall_name .. "_low", {
		description = wall_desc .. " Low",
		drawtype = "nodebox",
		node_box = {
			type = "connected",
			fixed = {{-3/16, -1/2, -3/16, 3/16, 3/8, 3/16}},
			connect_top = {{-3/16, -1/2, -3/16, 3/16, 1/2, 3/16}},
			connect_front = {{-3/16, -1/2, -1/2,  3/16, 3/8, 3/16}},
			connect_left = {{-1/2, -1/2, -3/16, -3/16, 3/8,  3/16}},
			connect_back = {{-3/16, -1/2,  3/16,  3/16, 3/8,  1/2}},
			connect_right = {{ 3/16, -1/2, -3/16,  1/2, 3/8,  3/16}},
		},
		connects_to = {"group:wall", "group:stone", "group:fence", "group:pane"},
		paramtype = "light",
		is_ground_content = false,
		walkable = true,
		groups = {cracky = 3, wall = 1, stone = 2},
		tiles = wall_texture_table,
		sounds = wall_sounds,
		after_place_node = function(pos, placer, itemstack, pointed_thing)
			local pos_under = {x = pos.x, y = pos.y - 1, z = pos.z}
			local pos_above = {x = pos.x, y = pos.y + 1, z = pos.z}
			local node_under = string.gsub(minetest.get_node(pos_under).name, "_full$", "")
			local node_above = string.gsub(minetest.get_node(pos_above).name, "_full$", "")

			if minetest.get_item_group(node_under, "wall") == 1 then
				minetest.set_node(pos_under, {name = node_under .. "_full"})
			end
			if minetest.get_item_group(node_above, "wall") == 1 then
				minetest.set_node(pos, {name = wall_name .. "_low_full"})
			end
		end,
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			local pos_under = {x = pos.x, y = pos.y - 1, z = pos.z}
			local node_under = string.gsub(minetest.get_node(pos_under).name, "_full$", "")
			if minetest.get_item_group(node_under, "wall") == 1 and
					digger and digger:is_player() then
				minetest.set_node(pos_under, {name = node_under})
			end
		end,
	})

	minetest.register_node(wall_name .. "_low_full", {
		description = wall_desc .. " Low Full",
		drawtype = "nodebox",
		node_box = {
			type = "connected",
			fixed = {{-3/16, -1/2, -3/16, 3/16, 1/2, 3/16}},
			connect_front = {{-3/16, -1/2, -1/2,  3/16, 1/2, 3/16}},
			connect_left = {{-1/2, -1/2, -3/16, -3/16, 1/2,  3/16}},
			connect_back = {{-3/16, -1/2,  3/16,  3/16, 1/2,  1/2}},
			connect_right = {{ 3/16, -1/2, -3/16,  1/2, 1/2,  3/16}},
		},
		connects_to = {"group:wall", "group:stone", "group:fence", "group:pane"},
		paramtype = "light",
		is_ground_content = false,
		groups = {cracky = 3, wall = 1, stone = 2},
		tiles = wall_texture_table,
		sounds = wall_sounds,
		drop = wall_name,
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			local pos_under = {x = pos.x, y = pos.y - 1, z = pos.z}
			local node_under = string.gsub(minetest.get_node(pos_under).name, "_full$", "")
			if minetest.get_item_group(node_under, "wall") == 1 and
					digger and digger:is_player() then
				minetest.set_node(pos_under, {name = node_under})
			end
		end,
})

	-- crafting recipe
	minetest.register_craft({
		output = wall_name .. " 6",
		recipe = {
			{ '', '', '' },
			{ wall_mat, wall_mat, wall_mat},
			{ wall_mat, wall_mat, wall_mat},
		}
	})
end

--stone walls
walls.register("walls:cobblestone", "Cobblestone Wall", "stone_cobblestone.png",
		"stone:cobblestone", default.node_sound_stone_defaults())

walls.register("walls:cobblestone_mossy", "Mossy Cobblestone Wall", "stone_cobblestone_mossy.png",
		"stone:cobblestone_mossy", default.node_sound_stone_defaults())

walls.register("walls:rock", "Rock Wall", "default_rock.png",
		"default:rock", default.node_sound_stone_defaults())

walls.register("walls:rock_mossy", "Mossy Rock Wall", "default_rock_mossy.png",
		"default:rock_mossy", default.node_sound_stone_defaults())

walls.register("walls:stone", "Stone Wall", "default_stone.png",
		"default:stone", default.node_sound_stone_defaults())

walls.register("walls:stone_mossy", "Mossy Stone Wall", "default_stone_mossy.png",
		"default:stone_mossy", default.node_sound_stone_defaults())

walls.register("walls:stone_block", "Stone Block Wall", "stone_stone_block.png",
		"stone:stone_block", default.node_sound_stone_defaults())

walls.register("walls:stone_block_half", "Stone Block Wall Half", "stone_stone_block_half.png",
		"stone:stone_block_half", default.node_sound_stone_defaults())

walls.register("walls:stone_brick", "Stone Brick Wall", "stone_stone_brick.png",
		"stone:stone_brick", default.node_sound_stone_defaults())

walls.register("walls:stone_cinderblock", "Stone Cinderblock Wall", "stone_stone_cinderblock.png",
		"stone:stone_cinderblock", default.node_sound_stone_defaults())

walls.register("walls:sandstone", "Sandstone Wall", "default_sandstone.png",
		"default:sandstone", default.node_sound_stone_defaults())

walls.register("walls:sandstone_block", "Sandstone Block Wall", "stone_sandstone_block.png",
		"stone:sandstone_block", default.node_sound_stone_defaults())

walls.register("walls:sandstone_brick", "Sandstone Brick Wall", "stone_sandstone_brick.png",
		"stone:sandstone_brick", default.node_sound_stone_defaults())

--wood walls
walls.register("walls:birch", "Birch Wall", "wood_birch_planks.png",
		"wood:birch_planks", default.node_sound_stone_defaults())

walls.register("walls:junglewood", "Jungle Wood Wall", "wood_junglewood_planks.png",
		"wood:junglewood_planks", default.node_sound_stone_defaults())

walls.register("walls:oak", "Oak Wall", "wood_oak_planks.png",
		"wood:oak_planks", default.node_sound_stone_defaults())

walls.register("walls:pine", "Pine Wall", "wood_pine_planks.png",
		"wood:pine_planks", default.node_sound_stone_defaults())

walls.register("walls:willow", "Willow Wall", "wood_willow_planks.png",
		"wood:willow_planks", default.node_sound_stone_defaults())

walls.register("walls:wood", "Wood Wall", "wood_wood_planks.png",
		"wood:wood_planks", default.node_sound_stone_defaults())

--metal walls

