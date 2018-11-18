-- Exterior Deco Wall Lamps

-- Manual Wall Lamps

minetest.register_node("lighting:wall_lamp_off", {
	description = "Wall Lamp Off",
	use_texture_alpha = true,
	tiles = {
		-- up, down, right, left, back, front
		'lighting_streetlamp_top.png',
		'lighting_streetlamp_top.png',
		'lighting_wall_lamp_offR.png',
		'lighting_wall_lamp_offL.png',
		'lighting_streetlamp_off.png',
		'lighting_streetlamp_off.png',
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
--	legacy_facedir_simple = true,
	sunlight_propagates = true,
	groups = {snappy = 3},
	sounds = default.node_sound_glass_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-3/16, -1/2, 1/8, 3/16, 1/8, 1/2},
			{-1/16, 1/8, 5/16, 1/16, 3/16, 7/16},
			{-5/16, 0, 0, 5/16, 1/16, 1/2},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-3/16, -1/2, 1/8, 3/16, 1/8, 1/2},
	},
	on_rightclick = function(pos, node, clicker)
		node.name = "lighting:wall_lamp_on"
		minetest.swap_node(pos, node)
	end,
})

minetest.register_node("lighting:wall_lamp_on", {
	description = "Street Lamp ",
	use_texture_alpha = true,
	tiles = {
		'lighting_streetlamp_top.png',
		'lighting_streetlamp_top.png',
		{image = 'lighting_wall_lamp_onR.png',
		animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 4.0
				}
			},
		{image = 'lighting_wall_lamp_onL.png',
		animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 4.0
				}
			},
		{image = 'lighting_streetlamp_on.png',
		animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 4.0
				}
			},
		{image = 'lighting_streetlamp_on.png',
		animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 4.0
				}
			},
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
--	legacy_facedir_simple = true,
	sunlight_propagates = true,
	light_source = 6,
	groups = {not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-3/16, -1/2, 1/8, 3/16, 1/8, 1/2},
			{-1/16, 1/8, 5/16, 1/16, 3/16, 7/16},
			{-5/16, 0, 0, 5/16, 1/16, 1/2},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-3/16, -1/2, 1/8, 3/16, 1/8, 1/2},
	},
	on_rightclick = function(pos, node, clicker)
		node.name = "lighting:wall_lamp_off"
		minetest.swap_node(pos, node)
	end,
})

	minetest.register_abm({
			nodenames = {"lighting:streetlamp_off", "lighting:streetlamp_on"},
			interval = 10,
			chance = 1,
			catch_up = false,
			action = function(pos, node)
				local tod = minetest.get_timeofday()
				if tod >= 0.2 and tod <= 0.8 then
					if node.name == "lighting:streetlamp_on" then
						minetest.swap_node(pos, {name = "lighting:streetlamp_off"})
					end
				else
					if node.name == "lighting:streetlamp_off" then
						minetest.swap_node(pos, {name = "lighting:streetlamp_on"})
					else
						minetest.add_particle({
						pos = {x=pos.x, y=pos.y-0.1, z=pos.z},
						velocity = {x=0, y=0, z=0},
						acceleration = {x=0, y=0, z=0},
						expirationtime = 0,
						size = 0, -- until I figure a better visual image
						collisiondetection = false,
						collisionremoval = false,
						vertical = true,
						texture = "lighting_streetlamp_glow.png",
--						animation = ,
						glow = 4
					})
				end
			end
		end
	})



-- Time of Day Wall Lamps

minetest.register_node("lighting:tod_wall_lamp_off", {
	description = "TOD Wall Lamp Off",
	use_texture_alpha = true,
	tiles = {
		-- up, down, right, left, back, front
		'lighting_streetlamp_top.png',
		'lighting_streetlamp_top.png',
		'lighting_wall_lamp_offR.png',
		'lighting_wall_lamp_offL.png',
		'lighting_streetlamp_off.png',
		'lighting_streetlamp_off.png',
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
--	legacy_facedir_simple = true,
	sunlight_propagates = true,
	groups = {snappy = 3},
	sounds = default.node_sound_glass_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-3/16, -1/2, 1/8, 3/16, 1/8, 1/2},
			{-1/16, 1/8, 5/16, 1/16, 3/16, 7/16},
			{-5/16, 0, 0, 5/16, 1/16, 1/2},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-3/16, -1/2, 1/8, 3/16, 1/8, 1/2},
	},
})

minetest.register_node("lighting:tod_wall_lamp_on", {
	description = "TOD Wall Lamp ",
	use_texture_alpha = true,
	tiles = {
		'lighting_streetlamp_top.png',
		'lighting_streetlamp_top.png',
		{image = 'lighting_wall_lamp_onR.png',
		animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 4.0
				}
			},
		{image = 'lighting_wall_lamp_onL.png',
		animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 4.0
				}
			},
		{image = 'lighting_streetlamp_on.png',
		animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 4.0
				}
			},
		{image = 'lighting_streetlamp_on.png',
		animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 4.0
				}
			},
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
--	legacy_facedir_simple = true,
	sunlight_propagates = true,
	light_source = 6,
	groups = {not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-3/16, -1/2, 1/8, 3/16, 1/8, 1/2},
			{-1/16, 1/8, 5/16, 1/16, 3/16, 7/16},
			{-5/16, 0, 0, 5/16, 1/16, 1/2},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-3/16, -1/2, 1/8, 3/16, 1/8, 1/2},
	},
})

	minetest.register_abm({
			nodenames = {"lighting:tod_wall_lamp_off", "lighting:tod_wall_lamp_on"},
			interval = 10,
			chance = 1,
--			catch_up = false,
			action = function(pos, node)
				local tod = minetest.get_timeofday()
				if tod >= 0.2 and tod <= 0.8 then
					if node.name == "lighting:tod_wall_lamp_on" then
						minetest.swap_node(pos, {name = "lighting:tod_wall_lamp_off", param2 = node.param2})
					end
				else
					if node.name == "lighting:tod_wall_lamp_off" then
						minetest.swap_node(pos, {name = "lighting:tod_wall_lamp_on", param2 = node.param2})
						minetest.add_particle({
							pos = {x=pos.x, y=pos.y-0.1, z=pos.z+0.2},
							velocity = {x=0, y=0, z=0},
							acceleration = {x=0, y=0, z=0},
							expirationtime = 0,
							size = 0, -- until I figure a better visual image
							collisiondetection = false,
							collisionremoval = false,
							vertical = true,
							texture = "lighting_streetlamp_glow.png",
--							animation = ,
							glow = 4
						})
					end
				end
			end
		})
