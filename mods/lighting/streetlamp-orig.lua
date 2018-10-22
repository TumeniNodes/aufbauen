--[[

	lighting
	================
    streetlamp.lua: a modified & rebranded copy of tublib_addons2
	Copyright (C) 2017-2018 Joachim Stolberg

    one the forum: https://forum.minetest.net/viewtopic.php?f=9&t=18773

    on github: https://github.com/joe7575/techpack

	LGPLv2.1+
	See LICENSE.txt for more information
]]--

--   textures modified from tublib_addons2, Copyright (C) 2017-2018 Joachim Stolberg
   --===============================================================================--

-- Manual Streetlamps

minetest.register_node("lighting:streetlamp_off", {
	description = "Street Lamp Off",
    use_texture_alpha = true,
	tiles = {
		-- up, down, right, left, back, front
		'lighting_streetlamp_top.png',
		'lighting_streetlamp_top.png',
		'lighting_streetlamp_off.png',
	},
	drawtype = "nodebox",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 3},
	sounds = default.node_sound_glass_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-5/16, -8/16, -5/16, 5/16,  8/16,  5/16},
			{-2/16, -8/16, -2/16, 2/16,  8/16,  2/16},
			{-8/16,  4/16, -8/16, 8/16,  5/16,  8/16},
			{-5/16, -8/16, -5/16, 5/16, -7/16,  5/16},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-8/16, -8/16, -8/16,   8/16, 8/16, 8/16},
	},
	on_rightclick = function(pos, node, clicker)
		node.name = "lighting:streetlamp_on"
		minetest.swap_node(pos, node)
	end,
})

minetest.register_node("lighting:streetlamp_on", {
	description = "Street Lamp ",
    use_texture_alpha = true,
	tiles = {
		-- up, down, right, left, back, front
		'lighting_streetlamp_top.png',
		'lighting_streetlamp_top.png',
		'lighting_streetlamp_on.png',
	},
	drawtype = "nodebox",
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 12,
	groups = {not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-5/16, -8/16, -5/16, 5/16,  8/16,  5/16},
			{-2/16, -8/16, -2/16, 2/16,  8/16,  2/16},
			{-8/16,  4/16, -8/16, 8/16,  5/16,  8/16},
			{-5/16, -8/16, -5/16, 5/16, -7/16,  5/16},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-8/16, -8/16, -8/16,   8/16, 8/16, 8/16},
	},
	on_rightclick = function(pos, node, clicker)
		node.name = "lighting:streetlamp_off"
		minetest.swap_node(pos, node)
	end,
})


-- Time of Day Streetlamps

minetest.register_node("lighting:tod_streetlamp_off", {
	description = "Street Lamp Off",
    use_texture_alpha = true,
	tiles = {
		-- up, down, right, left, back, front
		'lighting_streetlamp_top.png',
		'lighting_streetlamp_top.png',
		'lighting_streetlamp_off.png',
	},
	drawtype = "nodebox",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 3},
	sounds = default.node_sound_glass_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-5/16, -8/16, -5/16, 5/16,  8/16,  5/16},
			{-2/16, -8/16, -2/16, 2/16,  8/16,  2/16},
			{-8/16,  4/16, -8/16, 8/16,  5/16,  8/16},
			{-5/16, -8/16, -5/16, 5/16, -7/16,  5/16},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-8/16, -8/16, -8/16,   8/16, 8/16, 8/16},
    },
})

minetest.register_node("lighting:tod_streetlamp_on", {
	description = "Street Lamp ",
    use_texture_alpha = true,
	tiles = {
		-- up, down, right, left, back, front
		'lighting_streetlamp_top.png',
		'lighting_streetlamp_top.png',
		'lighting_streetlamp_on.png',
	},
	drawtype = "nodebox",
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 12,
	groups = {not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-5/16, -8/16, -5/16, 5/16,  8/16,  5/16},
			{-2/16, -8/16, -2/16, 2/16,  8/16,  2/16},
			{-8/16,  4/16, -8/16, 8/16,  5/16,  8/16},
			{-5/16, -8/16, -5/16, 5/16, -7/16,  5/16},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-8/16, -8/16, -8/16,   8/16, 8/16, 8/16},
	},
})

    minetest.register_abm({
        	nodenames = {"lighting:tod_streetlamp_off", "lighting:tod_streetlamp_on"},
        	interval = 10,
        	chance = 1,
--            catch_up = false,
        	action = function(pos, node)
        		local tod = minetest.get_timeofday()
        		if tod >= 0.2 and tod <= 0.8 then
        			if node.name == "lighting:tod_streetlamp_on" then
        				minetest.swap_node(pos, {name = "lighting:tod_streetlamp_off"})
        			end
        		else
        			if node.name == "lighting:tod_streetlamp_off" then
        				minetest.swap_node(pos, {name = "lighting:tod_streetlamp_on"})
        			else
        				minetest.add_particle({
        					pos = {x=pos.x, y=pos.y+0.1, z=pos.z},
        					velocity = {x=0, y=0, z=0},
        					acceleration = {x=0, y=0, z=0},
        					expirationtime = 11,
        					size = 20,
        					collisiondetection = false,
        					collisionremoval = false,
        					vertical = true,
        					texture = "lighting_streetlamp_glow.png",
        					glow = 9
        				})
        			end
        		end
        	end
        })

