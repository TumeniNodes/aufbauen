
fence = {}


--
-- Fence registration helper
--

function fence.register_fence(name, def)

	-- Allow almost everything to be overridden
	local default_fields = {
		paramtype = "light",
		paramtype2 = "facedir",
		drop = {},
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
		connects_to = {"group:fence", "group:wood", "group:tree", "group:wall"},
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
-- Fences
--

fence.register_fence("wood:birch_fence", {
	description = "Birch Fence",
	image = "wood_birch_fence.png",
	texture = {"wood_birch_fence.png"},
	inventory_image = "wood_birch_fence_inv.png",
	wield_image = "wood_birch_fence_inv.png",
	material = "wood:birch",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence("wood:granite_fence", {
	description = "Granite Fence Post",
	image = "wood_granite_fence.png",
	texture = {"wood_granite_fence_top.png", "wood_granite_fence_top.png", "wood_granite_fence.png"},
	inventory_image = "wood_granite_fence_inv.png",
	wield_image = "wood_granite_fence_inv.png",
	material = "wood:granite",
	drop = {},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

fence.register_fence("wood:junglewood_fence", {
	description = "Junglewood Fence",
	image = "wood_junglewood_fence.png",
	texture = {"wood_junglewood_fence.png"},
	inventory_image = "wood_junglewood_fence_inv.png",
	wield_image = "wood_junglewood_fence_inv.png",
	material = "wood:junglewood",
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
	drop = {}
})

fence.register_fence("wood:maple_fence", {
	description = "Maple Fence",
	image = "wood_maple_fence.png",
	texture = {"wood_maple_fence.png"},
	inventory_image = "wood_maple_fence_inv.png",
	wield_image = "wood_maple_fence_inv.png",
	material = "wood:maple",
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence("wood:oak_fence", {
	description = "Oak Fence",
	image = "wood_oak_fence.png",
	texture = {"wood_oak_fence.png"},
	inventory_image = "wood_oak_fence_inv.png",
	wield_image = "wood_oak_fence_inv.png",
	material = "wood:oak",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence("wood:pine_fence", {
	description = "Pine Fence",
	image = "wood_pine_fence.png",
	texture = {"wood_pine_fence.png"},
	inventory_image = "wood_pine_fence_inv.png",
	wield_image = "wood_pine_fence_inv.png",
	material = "wood:pine",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence("wood:willow_fence", {
	description = "Willow Fence",
	image = "wood_willow_fence.png",
	texture = {"wood_willow_fence.png"},
	inventory_image = "wood_willow_fence_inv.png",
	wield_image = "wood_willow_fence_inv.png",
	material = "wood:willow_planks",
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})


--
-- Fence rail registration helper
--

function fence.register_fence_rail(name, def)

	-- Allow almost everything to be overridden
	local default_fields = {
		paramtype = "light",
		paramtype2 = "facedir",
		drop = {},
		drawtype = "nodebox",
		node_box = {
			type = "connected",
			fixed = {
				{-1/16,  3/16, -1/16, 1/16,  5/16, 1/16},
				{-1/16, -3/16, -1/16, 1/16, -5/16, 1/16}
			},
			-- connect_top =
			-- connect_bottom =
			connect_front = {
				{-1/16,  3/16, -1/2, 1/16,  5/16, -1/16},
				{-1/16, -5/16, -1/2, 1/16, -3/16, -1/16}},
			connect_left = {
				{-1/2,  3/16, -1/16, -1/16,  5/16, 1/16},
				{-1/2, -5/16, -1/16, -1/16, -3/16, 1/16}},
			connect_back = {
				{-1/16,  3/16, 1/16, 1/16,  5/16, 1/2},
				{-1/16, -5/16, 1/16, 1/16, -3/16, 1/2}},
			connect_right = {
				{1/16,  3/16, -1/16, 1/2,  5/16, 1/16},
				{1/16, -5/16, -1/16, 1/2, -3/16, 1/16}},
		},
		selection_box = {
			type = "fixed",
			fixed = {
					{-1/16, -5/16, -1/16, 1/16, 5/16, 1/16},
			},
		},
		connects_to = {"group:fence", "group:wall"},
		inventory_image = fence_rail_texture,
		wield_image = fence_rail_texture,
		tiles = {def.texture},
		sunlight_propagates = true,
		is_ground_content = false,
		groups = {},
	}
	for k, v in pairs(default_fields) do
		if def[k] == nil then
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
--Fence Rails
--

fence.register_fence_rail("wood:birch_fence_rail", {
	description = "Birch Fence Rail",
	texture = "wood_birch_fence_rail.png",
	inventory_image = "wood_birch_fence_rail_inv.png",
	wield_image = "wood_birch_fence_rail_inv.png",
	material = "wood:birch",
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence_rail("wood:junglewood_fence_rail", {
	description = "Jungle Wood Fence Rail",
	texture = "wood_junglewood_fence_rail.png",
	inventory_image = "wood_junglewood_fence_rail_inv.png",
	wield_image = "wood_junglewood_fence_rail_inv.png",
	material = "wood:junglewood",
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence_rail("wood:maple_fence_rail", {
	description = "Maple Fence Rail",
	texture = "wood_maple_fence_rail.png",
	inventory_image = "wood_maple_fence_rail_inv.png",
	wield_image = "wood_maple_fence_rail_inv.png",
	material = "wood:maple",
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence_rail("wood:oak_fence_rail", {
	description = "Oak Fence Rail",
	texture = "wood_oak_fence_rail.png",
	inventory_image = "wood_oak_fence_rail_inv.png",
	wield_image = "wood_oak_fence_rail_inv.png",
	material = "wood:oak",
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence_rail("wood:pine_fence_rail", {
	description = "Pine Fence Rail",
	texture = "wood_pine_fence_rail.png",
	inventory_image = "wood_pine_fence_rail_inv.png",
	wield_image = "wood_pine_fence_rail_inv.png",
	material = "wood:pine",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence_rail("wood:willow_fence_rail", {
	description = "Willow Fence Rail",
	texture = "wood_willow_fence_rail.png",
	inventory_image = "wood_willow_fence_rail_inv.png",
	wield_image = "wood_willow_fence_rail_inv.png",
	material = "wood:willow",
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})


--
-- Fence gate registration helper
--

function fence.register_fence_gate(name, def)
	local fence = {
		description = def.description,
		drawtype = "mesh",
		tiles = {},
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = false,
		drop = {},
		connect_sides = {"left", "right"},
		groups = def.groups,
		sounds = def.sounds,
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			local node_def = minetest.registered_nodes[node.name]
			minetest.swap_node(pos, {name = node_def.gate, param2 = node.param2})
			minetest.sound_play(node_def.sound, {pos = pos, gain = 0.3,
				max_hear_distance = 8})
			return itemstack
		end,
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/4, 1/2, 1/2, 1/4},
		},
	}


	if type(def.texture) == "string" then
		fence.tiles[1] = {name = def.texture, backface_culling = true}
	elseif def.texture.backface_culling == nil then
		fence.tiles[1] = table.copy(def.texture)
		fence.tiles[1].backface_culling = true
	else
		fence.tiles[1] = def.texture
	end

	if not fence.sounds then
		fence.sounds = default.node_sound_wood_defaults()
	end

	fence.groups.fence = 1

	local fence_closed = table.copy(fence)
	fence_closed.mesh = "wood_fence_gate_closed.obj"
	fence_closed.gate = name .. "_open"
	fence_closed.sound = "wood_fencegate_open"
	fence_closed.collision_box = {
		type = "fixed",
		fixed = {-1/2, -1/2, -1/4, 1/2, 1/2, 1/4},
	}

	local fence_open = table.copy(fence)
	fence_open.mesh = "wood_fence_gate_open.obj"
	fence_open.gate = name .. "_closed"
	fence_open.sound = "wood_fencegate_close"
	fence_open.groups.not_in_creative_inventory = 1
	fence_open.collision_box = {
		type = "fixed",
		fixed = {{-1/2, -1/2, -1/4, -3/8, 1/2, 1/4},
			{-1/2, -3/8, -1/2, -3/8, 3/8, 0}},
	}

	minetest.register_node(":" .. name .. "_closed", fence_closed)
	minetest.register_node(":" .. name .. "_open", fence_open)
end


--
-- Fence Gates
--

fence.register_fence_gate("wood:birch_fence_gate", {
	description = "Birch Fence Gate",
	texture = "wood_birch_fence.png",
	material = "default:birch",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3}
})

fence.register_fence_gate("wood:granite_fence_gate", {
	description = "Granite Fence Gate",
	texture = "wood_granite_fence.png",
	material = "wood:granite",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

fence.register_fence_gate("wood:junglewood_fence_gate", {
	description = "Junglewood Fence Gate",
	texture = "wood_junglewood_fence.png",
	material = "default:wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

fence.register_fence_gate("wood:maple_fence_gate", {
	description = "Maple Fence Gate",
	texture = "wood_maple_fence.png",
	material = "default:maple",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

fence.register_fence_gate("wood:oak_fence_gate", {
	description = "Oak Fence Gate",
	texture = "wood_oak_fence.png",
	material = "default:oak",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3}
})

fence.register_fence_gate("wood:pine_fence_gate", {
	description = "Pine Fence Gate",
	texture = "wood_pine_fence.png",
	material = "default:pine",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3}
})

fence.register_fence_gate("wood:willow_fence_gate", {
	description = "Willow Fence Gate",
	texture = "wood_willow_fence.png",
	material = "default:willow",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})
