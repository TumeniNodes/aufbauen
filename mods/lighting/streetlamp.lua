--[[

	lighting
	================
	streetlamp.lua: a modified & rebranded copy of tublib_addons2
	Copyright (C) 2017-2018 Joachim Stolberg

	on the forum: https://forum.minetest.net/viewtopic.php?f=9&t=18773

    on github: https://github.com/joe7575/techpack

	LGPLv2.1+
	See LICENSE.txt for more information
]]--

--	textures modified from tublib_addons2, Copyright (C) 2017-2018 Joachim Stolberg
   --===============================================================================--

-- Manual Streetlamps

minetest.register_node("lighting:streetlamp_off", {
	description = "Street Lamp Off",
	use_texture_alpha = true,
	tiles = {'lighting_streetlamp_top.png',
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
			{-3/16, -1/2, -3/16, 3/16, 1/8, 3/16},
			{-1/16, 1/8, -1/16, 1/16, 3/16, 1/16},
			{-5/16, 0, -5/16, 5/16, 1/16, 5/16},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-3/16, -1/2, -3/16, 3/16, 1/8, 3/16},
	},
	on_rightclick = function(pos, node, clicker)
		node.name = "lighting:streetlamp_on"
		minetest.swap_node(pos, node)
	end,
})

minetest.register_node("lighting:streetlamp_on", {
	description = "Street Lamp ",
	use_texture_alpha = true,
	tiles = {'lighting_streetlamp_top.png',
		'lighting_streetlamp_top.png',
		{
			image = 'lighting_streetlamp_on.png',
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 4.0
			},
		}
	},
	drawtype = "nodebox",
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 6,
	groups = {not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-3/16, -1/2, -3/16, 3/16, 1/8, 3/16},
			{-1/16, 1/8, -1/16, 1/16, 3/16, 1/16},
			{-5/16, 0, -5/16, 5/16, 1/16, 5/16},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-3/16, -1/2, -3/16, 3/16, 1/8, 3/16},
	},
	on_rightclick = function(pos, node, clicker)
		node.name = "lighting:streetlamp_off"
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


-- Time of Day Streetlamps

minetest.register_node("lighting:tod_streetlamp_off", {
	description = "TOD Street Lamp Off",
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
			{-3/16, -1/2, -3/16, 3/16, 1/8, 3/16},
			{-1/16, 1/8, -1/16, 1/16, 3/16, 1/16},
			{-5/16, 0, -5/16, 5/16, 1/16, 5/16},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-3/16, -1/2, -3/16, 3/16, 1/8, 3/16},
	},
})

minetest.register_node("lighting:tod_streetlamp_on", {
	description = "TOD Street Lamp ",
	use_texture_alpha = true,
	tiles = {'lighting_streetlamp_top.png',
		'lighting_streetlamp_top.png',
		{
			image = 'lighting_streetlamp_on.png',
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 4.0
			},
		}
	},
	drawtype = "nodebox",
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 6,
	groups = {not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-3/16, -1/2, -3/16, 3/16, 1/8, 3/16},
			{-1/16, 1/8, -1/16, 1/16, 3/16, 1/16},
			{-5/16, 0, -5/16, 5/16, 1/16, 5/16},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-3/16, -1/2, -3/16, 3/16, 1/8, 3/16},
	},
})

	minetest.register_abm({
		nodenames = {"lighting:tod_streetlamp_off", "lighting:tod_streetlamp_on"},
		interval = 10,
		chance = 1,
--		catch_up = false,
		action = function(pos, node)
			local tod = minetest.get_timeofday()
			if tod >= 0.2 and tod <= 0.8 then
				if node.name == "lighting:tod_streetlamp_on" then
					minetest.swap_node(pos, {name = "lighting:tod_streetlamp_off", param2 = node.param2})
				end
			else
				if node.name == "lighting:tod_streetlamp_off" then
					minetest.swap_node(pos, {name = "lighting:tod_streetlamp_on", param2 = node.param2})
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


-- Hanging Time of Day Streetlamps

minetest.register_node("lighting:tod_streetlamp_hanging_off", {
	description = "TOD Hanging Street Lamp Off",
	use_texture_alpha = true,
	tiles = {
		'lighting_streetlamp_top.png',
		'lighting_streetlamp_top.png',
		'lighting_streetlamp_hanging_off.png',
	},
	drawtype = "nodebox",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 3},
	sounds = default.node_sound_glass_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-3/16, -3/16, -3/16, 3/16, 7/16, 3/16},
			{-1/16, 7/16, -1/16, 1/16, 1/2, 1/16},
			{-5/16, 5/16, -5/16, 5/16, 3/8, 5/16},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-3/16, -3/16, -3/16, 3/16, 7/16, 3/16},
	},
})

minetest.register_node("lighting:tod_streetlamp_hanging_on", {
	description = "TOD Hanging Street Lamp ",
	use_texture_alpha = true,
	tiles = {'lighting_streetlamp_top.png',
		'lighting_streetlamp_top.png',
		{
			image = 'lighting_streetlamp_hanging_on.png',
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 4.0
			},
		}
	},
	drawtype = "nodebox",
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 6,
	groups = {not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-3/16, -3/16, -3/16, 3/16, 7/16, 3/16},
			{-1/16, 7/16, -1/16, 1/16, 1/2, 1/16},
			{-5/16, 5/16, -5/16, 5/16, 3/8, 5/16},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-3/16, -3/16, -3/16, 3/16, 7/16, 3/16},
	},
})

	minetest.register_abm({
		nodenames = {"lighting:tod_streetlamp_hanging_off", "lighting:tod_streetlamp_hanging_on"},
		interval = 10,
		chance = 1,
--		catch_up = false,
		action = function(pos, node)
			local tod = minetest.get_timeofday()
			if tod >= 0.2 and tod <= 0.8 then
				if node.name == "lighting:tod_streetlamp_hanging_on" then
					minetest.swap_node(pos, {name = "lighting:tod_streetlamp_hanging_off", param2 = node.param2})
				end
			else
				if node.name == "lighting:tod_streetlamp_hanging_off" then
					minetest.swap_node(pos, {name = "lighting:tod_streetlamp_hanging_on", param2 = node.param2})
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


-- Lamp Posts

function minetest.register_lamp_post(name, def)

	local default_fields = {
		paramtype = "light",
		paramtype2 = "facedir",
		drawtype = "nodebox",
		node_box = {
			type = "connected",
			fixed = {{-1/8, -1/2, -1/8, 1/8, 1/2, 1/8}},
		-- connect_top =
		-- connect_bottom =
			connect_front = {{-1/16,3/16,-1/2,1/16,5/16,-1/8},
				{-1/16,-5/16,-1/2,1/16,-3/16,-1/8}},
			connect_left = {{-1/2,3/16,-1/16,-1/8,5/16,1/16},
				{-1/2,-5/16,-1/16,-1/8,-3/16,1/16}},
			connect_back = {{-1/16,3/16,1/8,1/16,5/16,1/2},
				{-1/16,-5/16,1/8,1/16,-3/16,1/2}},
			connect_right = {{1/8,3/16,-1/16,1/2,5/16,1/16},
				{1/8,-5/16,-1/16,1/2,-3/16,1/16}},
		},
		connects_to = {"group:fence", "group:wood", "group:wall", "group:cracky"},
		inventory_image = def.image,
		wield_image = def.image,
		tiles = def.texture,
		sunlight_propagates = true,
		is_ground_content = false,
		groups = {},
	}
	for k, v in pairs(default_fields) do
		if not def[k] then
			def[k] = v
		end
	end

	-- Always add to the fence group, even if no group provided
	def.groups.fence = 1

	def.texture = nil
	def.material = nil

	minetest.register_node(name, def)
end

--
-- Lamp Post Materials
--

minetest.register_lamp_post("lighting:lamp_post_black_iron", {
	description = "Black Iron Lamp Post",
	image = "lamp_post_black_iron.png",
	texture = {"lamp_post_black_iron.png"},
	inventory_image = "lamp_post_black_iron.png",
	wield_image = "lamp_post_black_iron.png",
	material = "metal:black_iron",
	groups = {cracky = 3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_lamp_post("lighting:lamp_post_iron", {
	description = "Iron Lamp Post",
	image = "lamp_post_iron.png",
	texture = {"lamp_post_iron.png"},
	inventory_image = "lamp_post_iron.png",
	wield_image = "lamp_post_iron.png",
	material = "metal:iron",
	groups = {cracky = 3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_lamp_post("lighting:lamp_post_rusted", {
	description = "Rusted Lamp Post",
	image = "lamp_post_rusted.png",
	texture = {"lamp_post_rusted.png"},
	inventory_image = "lamp_post_rusted.png",
	wield_image = "lamp_post_rusted.png",
	material = "metal:rusted",
	groups = {cracky = 3},
	sounds = default.node_sound_metal_defaults(),
})
