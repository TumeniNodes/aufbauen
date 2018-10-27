-- Wood Materials


--
-- Birch Nodes
--

minetest.register_node("wood:birch_planking", {
	description = "Birch Planking",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_birch_planking.png"},
	is_ground_content = false,
	groups = {choppy = 3, wood = 1},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("wood:birch_planks", {
	description = "Birch Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_birch_planks.png"},
	is_ground_content = false,
	groups = {choppy = 3, wood = 1},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})


---
--- Junglewood Nodes
---

minetest.register_node("wood:junglewood_planking", {
	description = "Jungle Wood Planking",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_junglewood_planking.png"},
	is_ground_content = false,
	groups = {choppy = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("wood:junglewood_planks", {
	description = "Jungle Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_junglewood_planks.png"},
	is_ground_content = false,
	groups = {choppy = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})


--
-- Oak Nodes
--

minetest.register_node("wood:oak_planking", {
	description = "Oak Planking",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_oak_planking.png"},
	is_ground_content = false,
	groups = {choppy = 3, wood = 1},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("wood:oak_planks", {
	description = "Oak Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_oak_planks.png"},
	is_ground_content = false,
	groups = {choppy = 3, wood = 1},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})


--
-- Pine Nodes
--

minetest.register_node("wood:pine_planking", {
	description = "Pine Planking",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_pine_planking.png"},
	is_ground_content = false,
	groups = {choppy = 3, wood = 1},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("wood:pine_planks", {
	description = "Pine Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_pine_planks.png"},
	is_ground_content = false,
	groups = {choppy = 3, wood = 1},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})

--
-- Willow Nodes
--

minetest.register_node("wood:willow_planking", {
	description = "Willow Planking",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_willow_planking.png",},
	groups = {choppy = 1, wood=1},
	drop = {},
	sounds = default.node_sound_wood_defaults()
})

minetest.register_node("wood:willow_planks", {
	description = "Willow Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_willow_planks.png",},
	groups = {choppy = 1, wood=1},
	drop = {},
	sounds = default.node_sound_wood_defaults()
})


--
-- Wood Nodes
--

minetest.register_node("wood:wood_planking", {
	description = "Wood Planking",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_wood_planking.png"},
	is_ground_content = false,
	groups = {choppy = 2, wood = 1},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("wood:wood_planks", {
	description = "Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"wood_wood_planks.png"},
	is_ground_content = false,
	groups = {choppy = 2, wood = 1},
	drop = {},
	sounds = default.node_sound_wood_defaults(),
})


--
-- Wood Ladder
--

minetest.register_node("wood:ladder_wood", {
	description = "Wooden Ladder",
	drawtype = "signlike",
	tiles = {"wood_ladder_wood.png"},
	inventory_image = "wood_ladder_wood.png",
	wield_image = "wood_ladder_wood.png",
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
	groups = {choppy = 2},
	drop = {},
	legacy_wallmounted = true,
	sounds = default.node_sound_wood_defaults(),
})


--
-- Fences
--

default.register_fence("wood:fence_birch", {
	description = "Birch Fence",
	image = "wood_fence_birch.png",
	texture = {"wood_fence_birch.png"},
	inventory_image = "wood_fence_birch_inv.png",
	wield_image = "wood_fence_birch_inv.png",
	material = "wood:birch_wood",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults()
})

default.register_fence("wood:fence_junglewood", {
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

default.register_fence("wood:fence_oak", {
	description = "Oak Fence",
	image = "wood_fence_oak.png",
	texture = {"wood_fence_oak.png"},
	inventory_image = "wood_fence_oak_inv.png",
	wield_image = "wood_fence_oak_inv.png",
	material = "wood:oak_wood",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults()
})

default.register_fence("wood:fence_pine", {
	description = "Pine Fence",
	image = "wood_fence_pine.png",
	texture = {"wood_fence_pine.png"},
	inventory_image = "wood_fence_pine_inv.png",
	wield_image = "wood_fence_pine_inv.png",
	material = "wood:pine_wood",
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults()
})

default.register_fence("wood:fence_willow", {
	description = "Willow Fence",
	image = "wood_fence_willow.png",
	texture = {"wood_fence_willow.png"},
	inventory_image = "wood_fence_willow_inv.png",
	wield_image = "wood_fence_willow_inv.png",
	material = "wood:willow_planks",
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults()
})

default.register_fence("wood:fence_wood", {
	description = "Wood Fence",
	image = "wood_fence_wood.png",
	texture = {"wood_fence_wood.png"},
	inventory_image = "wood_fence_wood_inv.png",
	wield_image = "wood_fence_wood_inv.png",
	material = "wood:wood",
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults()
})

default.register_fence("wood:fence_granite", {
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
--Fence Rails
--

default.register_fence_rail("wood:fence_rail_birch", {
	description = "Birch Fence Rail",
	texture = "wood_fence_rail_birch.png",
	inventory_image = "wood_fence_rail_birch_inv.png",
	wield_image = "wood_fence_rail_birch_inv.png",
	material = "wood:birch_wood",
	drop = {},
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})

default.register_fence_rail("wood:fence_rail_junglewood", {
	description = "Jungle Wood Fence Rail",
	texture = "wood_fence_rail_junglewood.png",
	inventory_image = "wood_fence_rail_junglewood_inv.png",
	wield_image = "wood_fence_rail_junglewood_inv.png",
	material = "wood:junglewood",
	drop = {},
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults()
})

default.register_fence_rail("wood:fence_rail_oak", {
	description = "Oak Fence Rail",
	texture = "wood_fence_rail_oak.png",
	inventory_image = "wood_fence_rail_oak_inv.png",
	wield_image = "wood_fence_rail_oak_inv.png",
	material = "wood:oak_wood",
	drop = {},
	groups = {choppy = 2},
	sounds = default.node_sound_wood_defaults(),
})

default.register_fence_rail("wood:fence_rail_pine", {
	description = "Pine Fence Rail",
	texture = "wood_fence_rail_pine.png",
	inventory_image = "wood_fence_rail_pine_inv.png",
	wield_image = "wood_fence_rail_pine_inv.png",
	material = "wood:pine_wood",
	drop = {},
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults()
})

default.register_fence_rail("wood:fence_rail_willow", {
	description = "Willow Fence Rail",
	texture = "wood_fence_rail_willow.png",
	inventory_image = "wood_fence_rail_willow_inv.png",
	wield_image = "wood_fence_rail_willow_inv.png",
	material = "wood:willow_wood",
	groups = {choppy = 2},
	drop = {},
	sounds = default.node_sound_wood_defaults()
})

default.register_fence_rail("wood:fence_rail_wood", {
	description = "Wood Fence Rail",
	texture = "wood_fence_rail_wood.png",
	inventory_image = "wood_fence_rail_wood_inv.png",
	wield_image = "wood_fence_rail_wood_inv.png",
	material = "wood:wood",
	groups = {choppy = 2},
	drop = {},
	sounds = default.node_sound_wood_defaults()
})


--
-- Book Shelves
--

local bookshelf_formspec =
	"size[8,7;]" ..
	default.gui_bg ..
	default.gui_bg_img ..
	default.gui_slots ..
	"list[context;books;0,0.3;8,2;]" ..
	"list[current_player;main;0,2.85;8,1;]" ..
	"list[current_player;main;0,4.08;8,3;8]" ..
	"listring[context;books]" ..
	"listring[current_player;main]" ..
	default.get_hotbar_bg(0,2.85)

local function update_bookshelf(pos)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	local invlist = inv:get_list("books")

	local formspec = bookshelf_formspec
	-- Inventory slots overlay
	local bx, by = 0, 0.3
	local n_written, n_empty = 0, 0
	for i = 1, 16 do
		if i == 9 then
			bx = 0
			by = by + 1
		end
		local stack = invlist[i]
		if stack:is_empty() then
			formspec = formspec ..
				"image[" .. bx .. "," .. by .. ";1,1;wood_bookshelf_slot.png]"
		else
			local metatable = stack:get_meta():to_table() or {}
			if metatable.fields and metatable.fields.text then
				n_written = n_written + stack:get_count()
			else
				n_empty = n_empty + stack:get_count()
			end
		end
		bx = bx + 1
	end
	meta:set_string("formspec", formspec)
	if n_written + n_empty == 0 then
		meta:set_string("infotext", "Empty Bookshelf")
	else
		meta:set_string("infotext", "Bookshelf (" .. n_written ..
			" written, " .. n_empty .. " empty books)")
	end
end

minetest.register_node("wood:bookshelf", {
	description = "Bookshelf",
	tiles = {"wood_wood_planks.png", "wood_wood_planks.png", "wood_wood_planks.png",
		"wood_wood_planks.png", "wood_bookshelf.png", "wood_bookshelf.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy = 3},
	sounds = default.node_sound_wood_defaults(),

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		inv:set_size("books", 8 * 2)
		update_bookshelf(pos)
	end,
	can_dig = function(pos,player)
		local inv = minetest.get_meta(pos):get_inventory()
		return inv:is_empty("books")
	end,
	allow_metadata_inventory_put = function(pos, listname, index, stack)
		if minetest.get_item_group(stack:get_name(), "book") ~= 0 then
			return stack:get_count()
		end
		return 0
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name() ..
			" moves stuff in bookshelf at " .. minetest.pos_to_string(pos))
		update_bookshelf(pos)
	end,
	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" puts stuff to bookshelf at " .. minetest.pos_to_string(pos))
		update_bookshelf(pos)
	end,
	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" takes stuff from bookshelf at " .. minetest.pos_to_string(pos))
		update_bookshelf(pos)
	end,
	on_blast = function(pos)
		local drops = {}
		default.get_inventory_drops(pos, "books", drops)
		drops{}
		minetest.remove_node(pos)
		return drops
	end,
})


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
