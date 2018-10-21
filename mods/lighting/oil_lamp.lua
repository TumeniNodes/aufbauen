local function on_flood(pos, oldnode, newnode)
	minetest.add_item(pos, ItemStack("lighting:oil_lamp 1"))
	-- Play flame-extinguish sound if liquid is not an 'igniter'
	local nodedef = minetest.registered_items[newnode.name]
	if not (nodedef and nodedef.groups and
			nodedef.groups.igniter and nodedef.groups.igniter > 0) then
		minetest.sound_play(
			"default_cool_lava",
			{pos = pos, max_hear_distance = 16, gain = 0.1}
		)
	end
	-- Remove the oil_lamp node
	return false
end

minetest.register_node("lighting:oil_lamp", {
	description = "Oil Lamp",
	drawtype = "mesh",
	mesh = "torch_floor.obj",
	inventory_image = "lighting_oil_lamp_on_floor.png",
	wield_image = "lighting_oil_lamp_on_floor.png",
	tiles = {{
		    name = "lighting_oil_lamp_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	liquids_pointable = false,
	light_source = 6,
	groups = {choppy=2, dig_immediate=3, flammable=1, attached_node=1, torch=1},
	drop = "{}",
	selection_box = {
		type = "wallmounted",
		wall_bottom = {-1/8, -1/2, -1/8, 1/8, 2/16, 1/8},
	},
	sounds = default.node_sound_wood_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		local under = pointed_thing.under
		local node = minetest.get_node(under)
		local def = minetest.registered_nodes[node.name]
		if def and def.on_rightclick and
			not (placer and placer:is_player() and
			placer:get_player_control().sneak) then
			return def.on_rightclick(under, node, placer, itemstack,
				pointed_thing) or itemstack
		end

		local above = pointed_thing.above
		local wdir = minetest.dir_to_wallmounted(vector.subtract(under, above))
		local fakestack = itemstack
		if wdir == 1 then
			fakestack:set_name("lighting:oil_lamp")
		else
			fakestack:set_name("lighting:oil_lamp_wall")
		end

		itemstack = minetest.item_place(fakestack, placer, pointed_thing, param2)
		itemstack:set_name("lighting:oil_lamp")

		return itemstack
	end,
	floodable = true,
	on_flood = on_flood,
})

minetest.register_node("lighting:oil_lamp_wall", {
	drawtype = "mesh",
	mesh = "oil_lamp_wall.obj",
	tiles = {{
		    name = "lighting_oil_lamp_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 6,
	groups = {choppy=2, dig_immediate=3, flammable=1, not_in_creative_inventory=1, attached_node=1, torch=1},
	drop = "{}",
	selection_box = {
		type = "wallmounted",
		wall_side = {-1/2, -7/16, -3/16, -1/8, 3/8, 3/16},
	},
	sounds = default.node_sound_wood_defaults(),
	floodable = true,
	on_flood = on_flood,
})

minetest.register_lbm({
	name = "lighting:3dtorch",
	nodenames = {"lighting:oil_lamp", "lighting:floor", "lighting:wall"},
	action = function(pos, node)
		if node.param2 == 1 then
			minetest.set_node(pos, {name = "lighting:oil_lamp",
				param2 = node.param2})
		else
			minetest.set_node(pos, {name = "lighting:oil_lamp_wall",
				param2 = node.param2})
		end
	end
})
