
fence = {}


--
-- Fence registration helper
--

function fence.register_fence(name, def)

	-- Allow almost everything to be overridden
	local default_fields = {
		paramtype = "light",
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

fence.register_fence("wood:fence_birch", {
	description = "Birch Fence",
	image = "wood_fence_birch.png",
	texture = {"wood_fence_birch.png"},
	inventory_image = "wood_fence_birch_inv.png",
	wield_image = "wood_fence_birch_inv.png",
	material = "wood:birch_wood",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence("wood:fence_junglewood", {
	description = "Jungle Wood Fence",
	image = "wood_fence_junglewood.png",
	texture = {"wood_fence_junglewood.png"},
	inventory_image = "wood_fence_junglewood_inv.png",
	wield_image = "wood_fence_junglewood_inv.png",
	material = "wood:junglewood",
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
	drop = {}
})

fence.register_fence("wood:fence_oak", {
	description = "Oak Fence",
	image = "wood_fence_oak.png",
	texture = {"wood_fence_oak.png"},
	inventory_image = "wood_fence_oak_inv.png",
	wield_image = "wood_fence_oak_inv.png",
	material = "wood:oak_wood",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence("wood:fence_pine", {
	description = "Pine Fence",
	image = "wood_fence_pine.png",
	texture = {"wood_fence_pine.png"},
	inventory_image = "wood_fence_pine_inv.png",
	wield_image = "wood_fence_pine_inv.png",
	material = "wood:pine_wood",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence("wood:fence_willow", {
	description = "Willow Fence",
	image = "wood_fence_willow.png",
	texture = {"wood_fence_willow.png"},
	inventory_image = "wood_fence_willow_inv.png",
	wield_image = "wood_fence_willow_inv.png",
	material = "wood:willow_planks",
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence("wood:fence_wood", {
	description = "Wood Fence",
	image = "wood_fence_wood.png",
	texture = {"wood_fence_wood.png"},
	inventory_image = "wood_fence_wood_inv.png",
	wield_image = "wood_fence_wood_inv.png",
	material = "wood:wood",
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence("wood:fence_granite", {
	description = "Granite Fence Post",
	image = "wood_fence_granite.png",
	texture = {"wood_fence_granite_top.png", "wood_fence_granite_top.png", "wood_fence_granite.png"},
	inventory_image = "wood_fence_granite_inv.png",
	wield_image = "wood_fence_granite_inv.png",
	material = "wood:granite",
	drop = {},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})


--
-- Fence rail registration helper
--

function fence.register_fence_rail(name, def)

	-- Allow almost everything to be overridden
	local default_fields = {
		paramtype = "light",
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

fence.register_fence_rail("wood:fence_rail_birch", {
	description = "Birch Fence Rail",
	texture = "wood_fence_rail_birch.png",
	inventory_image = "wood_fence_rail_birch_inv.png",
	wield_image = "wood_fence_rail_birch_inv.png",
	material = "wood:birch_wood",
	drop = {},
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence_rail("wood:fence_rail_junglewood", {
	description = "Jungle Wood Fence Rail",
	texture = "wood_fence_rail_junglewood.png",
	inventory_image = "wood_fence_rail_junglewood_inv.png",
	wield_image = "wood_fence_rail_junglewood_inv.png",
	material = "wood:junglewood",
	drop = {},
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence_rail("wood:fence_rail_oak", {
	description = "Oak Fence Rail",
	texture = "wood_fence_rail_oak.png",
	inventory_image = "wood_fence_rail_oak_inv.png",
	wield_image = "wood_fence_rail_oak_inv.png",
	material = "wood:oak_wood",
	drop = {},
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence_rail("wood:fence_rail_pine", {
	description = "Pine Fence Rail",
	texture = "wood_fence_rail_pine.png",
	inventory_image = "wood_fence_rail_pine_inv.png",
	wield_image = "wood_fence_rail_pine_inv.png",
	material = "wood:pine_wood",
	drop = {},
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence_rail("wood:fence_rail_willow", {
	description = "Willow Fence Rail",
	texture = "wood_fence_rail_willow.png",
	inventory_image = "wood_fence_rail_willow_inv.png",
	wield_image = "wood_fence_rail_willow_inv.png",
	material = "wood:willow_wood",
	groups = {choppy = 2},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})

fence.register_fence_rail("wood:fence_rail_wood", {
	description = "Wood Fence Rail",
	texture = "wood_fence_rail_wood.png",
	inventory_image = "wood_fence_rail_wood_inv.png",
	wield_image = "wood_fence_rail_wood_inv.png",
	material = "wood:wood",
	groups = {choppy = 2},
	drop = {},
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
		drop = name .. "_closed",
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

fence.register_fence_gate("wood:fence_gate_birch", {
	description = "Birch Fence Gate",
	texture = "wood_fence_gate_birch.png",
	material = "default:birch_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3}
})

fence.register_fence_gate("wood:fence_gate_junglewood", {
	description = "Junglewood Fence Gate",
	texture = "wood_fence_gate_junglewood.png",
	material = "default:wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

fence.register_fence_gate("wood:fence_gate_oak", {
	description = "Oak Fence Gate",
	texture = "wood_fence_gate_oak.png",
	material = "default:oak_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3}
})

fence.register_fence_gate("wood:fence_gate_pine", {
	description = "Pine Fence Gate",
	texture = "wood_fence_gate_pine.png",
	material = "default:pine_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3}
})

fence.register_fence_gate("wood:fence_gate_willow", {
	description = "Willow Fence Gate",
	texture = "wood_fence_gate_willow.png",
	material = "default:willow_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

fence.register_fence_gate("wood:fence_gate_wood", {
	description = "Wood Fence Gate",
	texture = "wood_fence_gate_wood.png",
	material = "default:wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

fence.register_fence_gate("wood:fence_gate_granite", {
	description = "Granite Fence Gate",
	texture = "wood_fence_gate_granite.png",
	material = "wood:wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})
