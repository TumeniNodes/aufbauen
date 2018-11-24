
local function is_pane(pos)
	return minetest.get_item_group(minetest.get_node(pos).name, "pane") > 0
end

local function connects_dir(pos, name, dir)
	local aside = vector.add(pos, minetest.facedir_to_dir(dir))
	if is_pane(aside) then
		return true
	end

	local connects_to = minetest.registered_nodes[name].connects_to
	if not connects_to then
		return false
	end
	local list = minetest.find_nodes_in_area(aside, aside, connects_to)

	if #list > 0 then
		return true
	end

	return false
end

local function swap(pos, node, name, param2)
	if node.name == name and node.param2 == param2 then
		return
	end

	minetest.set_node(pos, {name = name, param2 = param2})
end

local function update_pane(pos)
	if not is_pane(pos) then
		return
	end
	local node = minetest.get_node(pos)
	local name = node.name
	if name:sub(-5) == "_flat" then
		name = name:sub(1, -6)
	end

	local any = node.param2
	local c = {}
	local count = 0
	for dir = 0, 3 do
		c[dir] = connects_dir(pos, name, dir)
		if c[dir] then
			any = dir
			count = count + 1
		end
	end

	if count == 0 then
		swap(pos, node, name .. "_flat", any)
	elseif count == 1 then
		swap(pos, node, name .. "_flat", (any + 1) % 4)
	elseif count == 2 then
		if (c[0] and c[2]) or (c[1] and c[3]) then
			swap(pos, node, name .. "_flat", (any + 1) % 4)
		else
			swap(pos, node, name, 0)
		end
	else
		swap(pos, node, name, 0)
	end
end

minetest.register_on_placenode(function(pos, node)
	if minetest.get_item_group(node, "pane") then
		update_pane(pos)
	end
	for i = 0, 3 do
		local dir = minetest.facedir_to_dir(i)
		update_pane(vector.add(pos, dir))
	end
end)

minetest.register_on_dignode(function(pos)
	for i = 0, 3 do
		local dir = minetest.facedir_to_dir(i)
		update_pane(vector.add(pos, dir))
	end
end)

xpanes = {}
function xpanes.register_pane(name, def)
	for i = 1, 15 do
		minetest.register_alias("xpanes:" .. name .. "_" .. i, "xpanes:" .. name .. "_flat")
	end

	local flatgroups = table.copy(def.groups)
	flatgroups.pane = 1
	minetest.register_node(":xpanes:" .. name .. "_flat", {
		description = def.description,
		drawtype = "nodebox",
		paramtype = "light",
		is_ground_content = false,
		sunlight_propagates = true,
		inventory_image = def.inventory_image,
		wield_image = def.wield_image,
		paramtype2 = "facedir",
		tiles = {def.textures[3], def.textures[3], def.textures[1]},
		groups = flatgroups,
		drop = "xpanes:" .. name .. "_flat",
		sounds = def.sounds,
		use_texture_alpha = def.use_texture_alpha or false,
		node_box = {
			type = "fixed",
			fixed = {{-1/2, -1/2, -1/32, 1/2, 1/2, 1/32}},
		},
		selection_box = {
			type = "fixed",
			fixed = {{-1/2, -1/2, -1/32, 1/2, 1/2, 1/32}},
		},
		connect_sides = {"bottom", "left", "right" },
	})

	local groups = table.copy(def.groups)
	groups.pane = 1
	groups.not_in_creative_inventory = 1
	minetest.register_node(":xpanes:" .. name, {
		drawtype = "nodebox",
		paramtype = "light",
		is_ground_content = false,
		sunlight_propagates = true,
		description = def.description,
		tiles = {def.textures[3], def.textures[3], def.textures[1]},
		groups = groups,
		drop = "xpanes:" .. name .. "_flat",
		sounds = def.sounds,
		use_texture_alpha = def.use_texture_alpha or false,
		node_box = {
			type = "connected",
			fixed = {{-1/32, -1/2, -1/32, 1/32, 1/2, 1/32}},
			connect_bottom = {{-1/32, -1/2, -1/32, 1/32, 1/2, 1/32}},
			connect_front = {{-1/32, -1/2, -1/2, 1/32, 1/2, -1/32}},
			connect_left = {{-1/2, -1/2, -1/32, -1/32, 1/2, 1/32}},
			connect_back = {{-1/32, -1/2, 1/32, 1/32, 1/2, 1/2}},
			connect_right = {{1/32, -1/2, -1/32, 1/2, 1/2, 1/32}},
		},
		connects_to = {"group:pane", "group:stone", "group:glass", "group:wood","group:wall"},
	})
end

--[[xpanes.register_pane("pane", {
	description = "Glass Pane",
	textures = {"glass_glass.png","xpanes_pane_half.png","xpanes_edge.png"},
	inventory_image = "glass_glass.png",
	wield_image = "glass_glass.png",
	sounds = default.node_sound_glass_defaults(),
	groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3},
	}
)]]--

xpanes.register_pane("pane_birch", {
	description = "Birch Glass Pane",
	textures = {{name = "xpanes_birch.png",backface_culling = true},"xpanes_pane_half.png","xpanes_birch_edge.png"},
	use_texture_alpha = true,
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_birch.png", "xpanes_blank.png"),
	wield_image = "xpanes_birch.png",
	sounds = default.node_sound_glass_defaults(),
	groups = {snappy=2, cracky=3},
	}
)

xpanes.register_pane("picket_birch", {
	description = "Birch Picket",
	textures = {"xpanes_birch_picket.png","xpanes_pane_half.png","xpanes_blank.png"},
	use_texture_alpha = true,
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_birch_picket.png", "xpanes_blank.png"),
	wield_image = "xpanes_birch_picket.png",
	sounds = default.node_sound_wood_defaults(),
	groups = {snappy=2, cracky=3},
	}
)

xpanes.register_pane("pane_junglewood", {
	description = "Junglewood Glass Pane",
	textures = {{name = "xpanes_junglewood.png",backface_culling = true},"xpanes_pane_half.png","xpanes_junglewood_edge.png"},
	use_texture_alpha = true,
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_junglewood.png", "xpanes_blank.png"),
	wield_image = "xpanes_junglewood.png",
	sounds = default.node_sound_glass_defaults(),
	groups = {snappy=2, cracky=3},
	}
)

xpanes.register_pane("picket_junglewood", {
	description = "Junglewood Picket",
	textures = {"xpanes_junglewood_picket.png","xpanes_pane_half.png","xpanes_blank.png"},
	use_texture_alpha = true,
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_junglewood_picket.png", "xpanes_blank.png"),
	wield_image = "xpanes_junglewood_picket.png",
	sounds = default.node_sound_wood_defaults(),
	groups = {snappy=2, cracky=3},
	}
)

xpanes.register_pane("pane_oak", {
	description = "Oak Glass Pane",
	textures = {{name = "xpanes_oak.png",backface_culling = true},"xpanes_pane_half.png","xpanes_oak_edge.png"},
	use_texture_alpha = true,
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_oak.png", "xpanes_blank.png"),
	wield_image = "xpanes_oak.png",
	sounds = default.node_sound_glass_defaults(),
	groups = {snappy=2, cracky=3},
	}
)

xpanes.register_pane("picket_oak", {
	description = "Oak Picket",
	textures = {"xpanes_oak_picket.png","xpanes_pane_half.png","xpanes_blank.png"},
	use_texture_alpha = true,
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_oak_picket.png", "xpanes_blank.png"),
	wield_image = "xpanes_oak_picket.png",
	sounds = default.node_sound_wood_defaults(),
	groups = {snappy=2, cracky=3},
	}
)

xpanes.register_pane("pane_pine", {
	description = "Pine Glass Pane",
	textures = {{name = "xpanes_pine.png",backface_culling = true},"xpanes_pane_half.png","xpanes_pine_edge.png"},
	use_texture_alpha = true,
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_pine.png", "xpanes_blank.png"),
	wield_image = "xpanes_pine.png",
	sounds = default.node_sound_glass_defaults(),
	groups = {snappy=2, cracky=3},
	}
)

xpanes.register_pane("picket_pine", {
	description = "Pine Picket",
	textures = {"xpanes_pine_picket.png","xpanes_pane_half.png","xpanes_blank.png"},
	use_texture_alpha = true,
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_pine_picket.png", "xpanes_blank.png"),
	wield_image = "xpanes_pine_picket.png",
	sounds = default.node_sound_wood_defaults(),
	groups = {snappy=2, cracky=3},
	}
)

xpanes.register_pane("pane_willow", {
	description = "Willow Glass Pane",
	textures = {{name = "xpanes_willow.png",backface_culling = true},"xpanes_pane_half.png","xpanes_willow_edge.png"},
	use_texture_alpha = true,
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_willow.png", "xpanes_blank.png"),
	wield_image = "xpanes_willow.png",
	sounds = default.node_sound_glass_defaults(),
	groups = {snappy=2, cracky=3},
	}
)

xpanes.register_pane("picket_willow", {
	description = "Willow Picket",
	textures = {"xpanes_willow_picket.png","xpanes_pane_half.png","xpanes_blank.png"},
	use_texture_alpha = true,
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_willow_picket.png", "xpanes_blank.png"),
	wield_image = "xpanes_willow_picket.png",
	sounds = default.node_sound_wood_defaults(),
	groups = {snappy=2, cracky=3},
	}
)

xpanes.register_pane("pane_wood", {
	description = "Wood Glass Pane",
	textures = {{name = "xpanes_wood.png",backface_culling = true},"xpanes_pane_half.png","xpanes_wood_edge.png"},
	use_texture_alpha = true,
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_wood.png", "xpanes_blank.png"),
	wield_image = "xpanes_wood.png",
	sounds = default.node_sound_glass_defaults(),
	groups = {snappy=2, cracky=3},
	}
)

xpanes.register_pane("picket_wood", {
	description = "Wood Picket",
	textures = {"xpanes_wood_picket.png","xpanes_pane_half.png","xpanes_blank.png"},
	use_texture_alpha = true,
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_wood_picket.png", "xpanes_blank.png"),
	wield_image = "xpanes_wood_picket.png",
	sounds = default.node_sound_wood_defaults(),
	groups = {snappy=2, cracky=3},
	}
)

xpanes.register_pane("pane_iron", {
	description = "Iron Glass Pane",
	textures = {"xpanes_iron.png", "xpanes_pane_half.png","xpanes_iron_edge.png"},
	use_texture_alpha = true,
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_iron.png", "xpanes_blank.png"),
	wield_image = "xpanes_iron.png",
	sounds = default.node_sound_metal_defaults(),
	groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3},
	}
)

xpanes.register_pane("picket_iron", {
	description = "Iron Picket",
	textures = {"xpanes_iron_picket.png","xpanes_pane_half.png","xpanes_blank.png"},
	use_texture_alpha = true,
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_iron_picket.png", "xpanes_blank.png"),
	wield_image = "xpanes_iron_picket.png",
	sounds = default.node_sound_metal_defaults(),
	groups = {snappy=2, cracky=3},
	}
)

xpanes.register_pane("pane_rusted", {
	description = "Rusted Glass Pane",
	textures = {"xpanes_rusted.png", "xpanes_pane_half.png","xpanes_rusted_edge.png"},
	use_texture_alpha = true,
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_rusted.png", "xpanes_blank.png"),
	wield_image = "xpanes_rusted.png",
	sounds = default.node_sound_metal_defaults(),
	groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3},
	}
)

xpanes.register_pane("picket_rusted", {
	description = "Rusted Picket",
	textures = {"xpanes_rusted_picket.png","xpanes_pane_half.png","xpanes_blank.png"},
	use_texture_alpha = true,
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_rusted_picket.png", "xpanes_blank.png"),
	wield_image = "xpanes_rusted_picket.png",
	sounds = default.node_sound_metal_defaults(),
	groups = {snappy=2, cracky=3},
	}
)

xpanes.register_pane("pane_steel", {
	description = "Steel Glass Pane",
	textures = {"xpanes_steel.png", "xpanes_pane_half.png","xpanes_steel_edge.png"},
	use_texture_alpha = true,
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_steel.png", "xpanes_blank.png"),
	wield_image = "xpanes_steel.png",
	sounds = default.node_sound_metal_defaults(),
	groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3},
	}
)

xpanes.register_pane("picket_steel", {
	description = "Steel Picket",
	textures = {"xpanes_steel_picket.png","xpanes_pane_half.png","xpanes_blank.png"},
	use_texture_alpha = true,
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_steel_picket.png", "xpanes_blank.png"),
	wield_image = "xpanes_steel_picket.png",
	sounds = default.node_sound_metal_defaults(),
	groups = {snappy=2, cracky=3},
	}
)

xpanes.register_pane("iron_bar", {
	description = "Iron Bars",
	textures = {"xpanes_iron_bar.png","xpanes_iron_edge.png","xpanes_iron_edge.png"},
	inventory_image = "xpanes_iron_bar.png",
	wield_image = "xpanes_iron_bar.png",
	groups = {cracky=2},
	sounds = default.node_sound_metal_defaults(),
	}
)

xpanes.register_pane("rusted_bar", {
	description = "Rusted Bars",
	textures = {{name = "xpanes_rusted_bar.png",backface_culling = true},"xpanes_rusted_edge.png","xpanes_rusted_edge.png"},
	inventory_image = minetest.inventorycube("xpanes_blank.png", "xpanes_rusted_bar.png", "xpanes_blank.png"),
	wield_image = "xpanes_rusted_bar.png",
	groups = {cracky=2},
	sounds = default.node_sound_metal_defaults(),
	}
)

xpanes.register_pane("steel_bar", {
	description = "Steel Bars",
	textures = {"xpanes_steel_bar.png","xpanes_steel_edge.png","xpanes_steel_edge.png"},
	inventory_image = "xpanes_steel_bar.png",
	wield_image = "xpanes_steel_bar.png",
	groups = {cracky=2},
	sounds = default.node_sound_metal_defaults(),
	}
)

minetest.register_lbm({
	name = "xpanes:gen2",
	nodenames = {"group:pane"},
	action = function(pos, node)
		update_pane(pos)
		for i = 0, 3 do
			local dir = minetest.facedir_to_dir(i)
			update_pane(vector.add(pos, dir))
		end
	end
})
