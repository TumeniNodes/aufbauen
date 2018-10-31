

--
-- Chest
--

local get_chest_formspec = function(pos)
	local spos = pos.x .. "," .. pos.y .. "," ..pos.z
	local formspec =
		"size[8,9]"..
		default.gui_bg ..
		default.gui_bg_img ..
		default.gui_slots ..
		"list[nodemeta:".. spos .. ";main;,0;8,4;]"..
		"list[current_player;main;,5;8,4;]"
	return formspec
end

local function has_chest_privilege(meta, player)
	local name = ""
	if player then
		if minetest.check_player_privs(player, "protection_bypass") then
			return true
		end
		name = player:get_player_name()
	end
	if name ~= meta:get_string("owner") then
		return false
	end
	return true
end

minetest.register_node("wood:chest",{
	drawtype = "nodebox",
	description = "Chest",
	tiles = {"wood_chest_top.png",
			"wood_chest_top.png",
			"wood_chest_side.png",
			"wood_chest_side.png",
			"wood_chest_back.png",
			"wood_chest_front.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.3125, 0.5, -0.0625, 0.3125},
			{-0.5, -0.0625, -0.25, 0.5, 0, 0.25},
			{-0.5, 0, -0.1875,0.5, 0.0625, 0.1875},
			{-0.5, 0.0625, -0.0625, 0.5, 0.125, 0.0625},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.4, 0.5, 0.2, 0.4},

		},
	},
	sounds = default.node_sound_wood_defaults(),
	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "Chest (owned by @1)", meta:get_string("owner"))
	end,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Chest")
		meta:set_string("owner", "")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main") and has_chest_privilege(meta, player)
	end,
	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		local meta = minetest.get_meta(pos)
		if not has_chest_privilege(meta, player) then
			minetest.log("action", "@1 tried to access a locked chest belonging to @2 at @3",
				player:get_player_name(), meta:get_string("owner"), minetest.pos_to_string(pos))
			return 0
		end
		return count
	end,
	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if not has_chest_privilege(meta, player) then
			minetest.log("action", "@1 tried to access a locked chest belonging to @2 at @3",
					player:get_player_name(), meta:get_string("owner"), minetest.pos_to_string(pos))
			return 0
		end
		return stack:get_count()
	end,
	allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if not has_chest_privilege(meta, player) then
			minetest.log("action", "@1 tried to access a locked chest belonging to @2 at @3",
				player:get_player_name(), meta:get_string("owner"), minetest.pos_to_string(pos))
			return 0
		end
		return stack:get_count()
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", "@1 moves stuff in locked chest at @2", player:get_player_name(), minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", "@1 moves stuff to locked chest at @2", player:get_player_name(), minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", "@1 takes stuff from locked chest at @2", player:get_player_name(), minetest.pos_to_string(pos))
	end,
	on_rightclick = function(pos, node, clicker)
		local meta = minetest.get_meta(pos)
		if has_chest_privilege(meta, clicker) then
			minetest.show_formspec(
				clicker:get_player_name(),
				"wood:chest",
				get_chest_formspec(pos)
			)
		end
	end,
	on_blast = function() end,
})
