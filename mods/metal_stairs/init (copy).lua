-- Minetest 5.0 mod: metal_stairs
-- See README.txt for licensing and other information.


-- Global namespace for functions

metal_stairs = {}


-- Get setting for replace ABM

local replace = minetest.settings:get_bool("enable_stairs_replace_abm")

local function rotate_and_place(itemstack, placer, pointed_thing)
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	local param2 = 0

	if placer then
		local placer_pos = placer:getpos()
		if placer_pos then
			param2 = minetest.dir_to_facedir(vector.subtract(p1, placer_pos))
		end

		local finepos = minetest.pointed_thing_to_face_pos(placer, pointed_thing)
		local fpos = finepos.y % 1

		if p0.y - 1 == p1.y or (fpos > 0 and fpos < 0.5)
				or (fpos < -0.5 and fpos > -0.999999999) then
			param2 = param2 + 20
			if param2 == 21 then
				param2 = 23
			elseif param2 == 23 then
				param2 = 21
			end
		end
	end
	return minetest.item_place(itemstack, placer, pointed_thing, param2)
end


-- Register metal stair
-- Node will be called metal_stairs:stair_<subname>

function metal_stairs.register_stair(subname, groups, images, description, sounds)
	-- Set backface culling and world-aligned textures
	local stair_images = {}
	for i, image in ipairs(images) do
		if type(image) == "string" then
			stair_images[i] = {
				name = image,
				backface_culling = true,
				align_style = "world",
			}
		else
			stair_images[i] = table.copy(image)
			if stair_images[i].backface_culling == nil then
				stair_images[i].backface_culling = true
			end
			if stair_images[i].align_style == nil then
				stair_images[i].align_style = "world"
			end
		end
	end
	local new_groups = table.copy(groups)
	new_groups.stair = 1
	minetest.register_node(":metal_stairs:stair_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = stair_images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = new_groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.4375, -0.4375, -0.4375, 0.4375, -0.0625, 0.4375},
				{-0.5, -0.0625, -0.4375, -0.4375, 0, 0},
				{0.4375, -0.0625, -0.4375, 0.5, 0, 0},
				{-0.5, 0.4375, 0.4375, 0.5, 0.5, 0.5},
				{-0.5, -0.0625, -0.5, 0.5, 0, -0.4375},
				{-0.5, -0.5, -0.5, 0.5, -0.4375, -0.4375},
				{-0.5, -0.5, 0.4375, 0.5, -0.4375, 0.5},
				{0.4375, -0.5, -0.5, 0.5, -0.4375, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, -0.4375, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, -0.0625, -0.4375},
				{0.4375, -0.5, -0.5, 0.5, -0.0625, -0.4375},
				{0.4375, -0.5, 0.4375, 0.5, 0.4375, 0.5},
				{-0.5, -0.5, 0.4375, -0.4375, 0.4375, 0.5},
				{-0.5, -0.0625, -0.0625, 0.5, 0, 0},
				{-0.5, 0.4375, 0, -0.4375, 0.5, 0.4375},
				{0.4375, 0.4375, 0, 0.5, 0.5, 0.4375},
				{-0.4375, 0.4375, 0, 0.4375, 0.5, 0.0625},
				{-0.5, -0.0625, 0, -0.4375, 0.5, 0.0625},
				{0.4375, -0.0625, 0, 0.5, 0.5, 0.0625},
				{-0.4375, -0.0625, 0, 0.4375, 0.0625, 0.0625},
				{-0.4375, -0.4375, 0.0625, 0.4375, 0.4375, 0.4375},
			},
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			return rotate_and_place(itemstack, placer, pointed_thing)
		end,
	})

	-- for replace ABM
	if replace then
		minetest.register_node(":metal_stairs:stair_" .. subname .. "upside_down", {
			replace_name = "metal_stairs:stair_" .. subname,
			groups = {slabs_replace = 1},
		})
	end

	if recipeitem then
		-- Recipe matches appearence in inventory
		minetest.register_craft({
			output = 'metal_stairs:stair_' .. subname .. ' 8',
			recipe = {
				{"", "", recipeitem},
				{"", recipeitem, recipeitem},
				{recipeitem, recipeitem, recipeitem},
			},
		})

		-- Use stairs to craft full blocks again (1:1)
		minetest.register_craft({
			output = recipeitem .. ' 3',
			recipe = {
				{'metal_stairs:stair_' .. subname, 'metal_stairs:stair_' .. subname},
				{'metal_stairs:stair_' .. subname, 'metal_stairs:stair_' .. subname},
			},
		})

		-- Fuel
		local baseburntime = minetest.get_craft_result({
			method = "fuel",
			width = 1,
			items = {recipeitem}
		}).time
		if baseburntime > 0 then
			minetest.register_craft({
				type = "fuel",
				recipe = 'metal_stairs:stair_' .. subname,
				burntime = math.floor(baseburntime * 0.75),
			})
		end
	end
end


-- Slab facedir to placement 6d matching table
local slab_trans_dir = {[0] = 8, 0, 2, 1, 3, 4}


-- Register slab
-- Node will be called metal_stairs:slab_<subname>

function metal_stairs.register_slab(subname, recipeitem, groups, images, description, sounds)
	-- Set world-aligned textures
	local slab_images = {}
	for i, image in ipairs(images) do
		if type(image) == "string" then
			slab_images[i] = {
				name = image,
				align_style = "world",
			}
		else
			slab_images[i] = table.copy(image)
			if image.align_style == nil then
				slab_images[i].align_style = "world"
			end
		end
	end
	local new_groups = table.copy(groups)
	new_groups.slab = 1
	minetest.register_node(":metal_stairs:slab_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = slab_images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = new_groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {-0.4375, -0.4375, -0.4375, 0.4375, -0.0625, 0.4375},
				{-0.5, -0.0625, -0.4375, -0.4375, 0, 0.4375},
				{0.4375, -0.0625, -0.4375, 0.5, 0, 0.4375},
				{-0.5, -0.0625, 0.4375, 0.5, 0, 0.5},
				{-0.5, -0.0625, -0.5, 0.5, 0, -0.4375},
				{-0.5, -0.5, -0.5, 0.5, -0.4375, -0.4375},
				{-0.5, -0.5, 0.4375, 0.5, -0.4375, 0.5},
				{0.4375, -0.5, -0.5, 0.5, -0.4375, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, -0.4375, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, -0.0625, -0.4375},
				{0.4375, -0.5, -0.5, 0.5, -0.0625, -0.4375},
				{0.4375, -0.5, 0.4375, 0.5, -0.0625, 0.5},
				{-0.5, -0.5, 0.4375, -0.4375, -0.0625, 0.5},
			},
		},
		on_place = function(itemstack, placer, pointed_thing)
			local under = minetest.get_node(pointed_thing.under)
			local wield_item = itemstack:get_name()
			local player_name = placer and placer:get_player_name() or ""
			local creative_enabled = (creative and creative.is_enabled_for
					and creative.is_enabled_for(player_name))

			if under and under.name:find("metal_stairs:slab_") then
				-- place slab using under node orientation
				local dir = minetest.dir_to_facedir(vector.subtract(
					pointed_thing.above, pointed_thing.under), true)

				local p2 = under.param2

				-- Placing a slab on an upside down slab should make it right-side up.
				if p2 >= 20 and dir == 8 then
					p2 = p2 - 20
				-- same for the opposite case: slab below normal slab
				elseif p2 <= 3 and dir == 4 then
					p2 = p2 + 20
				end

				-- else attempt to place node with proper param2
				minetest.item_place_node(ItemStack(wield_item), placer, pointed_thing, p2)
				if not creative_enabled then
					itemstack:take_item()
				end
				return itemstack
			else
				return rotate_and_place(itemstack, placer, pointed_thing)
			end
		end,
	})

	-- for replace ABM
	if replace then
		minetest.register_node(":metal_stairs:slab_" .. subname .. "upside_down", {
			replace_name = "metal_stairs:slab_".. subname,
			groups = {slabs_replace = 1},
		})
	end

	if recipeitem then
		minetest.register_craft({
			output = 'metal_stairs:slab_' .. subname .. ' 6',
			recipe = {
				{recipeitem, recipeitem, recipeitem},
			},
		})

		-- Use 2 slabs to craft a full block again (1:1)
		minetest.register_craft({
			output = recipeitem,
			recipe = {
				{'metal_stairs:slab_' .. subname},
				{'metal_stairs:slab_' .. subname},
			},
		})

		-- Fuel
		local baseburntime = minetest.get_craft_result({
			method = "fuel",
			width = 1,
			items = {recipeitem}
		}).time
		if baseburntime > 0 then
			minetest.register_craft({
				type = "fuel",
				recipe = 'metal_stairs:slab_' .. subname,
				burntime = math.floor(baseburntime * 0.5),
			})
		end
	end
end


-- Optionally replace old "upside_down" nodes with new param2 versions.
-- Disabled by default.

if replace then
	minetest.register_abm({
		label = "Slab replace",
		nodenames = {"group:slabs_replace"},
		interval = 16,
		chance = 1,
		action = function(pos, node)
			node.name = minetest.registered_nodes[node.name].replace_name
			node.param2 = node.param2 + 20
			if node.param2 == 21 then
				node.param2 = 23
			elseif node.param2 == 23 then
				node.param2 = 21
			end
			minetest.set_node(pos, node)
		end,
	})
end


-- Register inner stair
-- Node will be called metal_stairs:stair_inner_<subname>

function metal_stairs.register_stair_inner(subname, groups, images, description, sounds)
	-- Set backface culling and world-aligned textures
	local stair_images = {}
	for i, image in ipairs(images) do
		if type(image) == "string" then
			stair_images[i] = {
				name = image,
				backface_culling = true,
				align_style = "world",
			}
		else
			stair_images[i] = table.copy(image)
			if stair_images[i].backface_culling == nil then
				stair_images[i].backface_culling = true
			end
			if stair_images[i].align_style == nil then
				stair_images[i].align_style = "world"
			end
		end
	end
	local new_groups = table.copy(groups)
	new_groups.stair = 1
	minetest.register_node(":metal_stairs:stair_inner_" .. subname, {
		description = "Inner " .. description,
		drawtype = "nodebox",
		tiles = stair_images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = new_groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.4375, -0.4375, -0.4375, 0.4375, -0.0625, 0.4375},
				{-0.5, 0.4375, -0.5, -0.0625, 0.5, -0.4375},
				{0.4375, -0.0625, -0.4375, 0.5, 0, 0},
				{-0.5, 0.4375, 0.4375, 0.5, 0.5, 0.5},
				{0, -0.0625, -0.5, 0.5, 0, -0.4375},
				{-0.5, -0.5, -0.5, 0.5, -0.4375, -0.4375},
				{-0.5, -0.5, 0.4375, 0.5, -0.4375, 0.5},
				{0.4375, -0.5, -0.5, 0.5, -0.4375, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, -0.4375, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, 0.4375, -0.4375},
				{0.4375, -0.5, -0.5, 0.5, -0.0625, -0.4375},
				{0.4375, -0.5, 0.4375, 0.5, 0.4375, 0.5},
				{-0.5, -0.5, 0.4375, -0.4375, 0.4375, 0.5},
				{-0.0625, -0.0625, -0.0625, 0.5, 0, 0},
				{-0.5, 0.4375, -0.4375, -0.4375, 0.5, 0.4375},
				{0.4375, 0.4375, 0, 0.5, 0.5, 0.4375},
				{0, 0.4375, 0, 0.4375, 0.5, 0.0625},
				{-0.0625, -0.0625, -0.5, 0, 0.5, -0.4375},
				{0.4375, -0.0625, 0, 0.5, 0.5, 0.0625},
				{-0.0625, -0.0625, 0, 0.4375, 0.0625, 0.0625},
				{-0.4375, -0.4375, 0.0625, 0.4375, 0.4375, 0.4375},
				{-0.0625, 0.4375, -0.4375, 0, 0.5, 0.0625},
				{-0.4375, -0.4375, -0.4375, -0.0625, 0.4375, 0.0625},
				{0, -0.0625, -0.4375, 0.0625, 0, -0.0625},
				{-0.0625, 0, -0.4375, 0, 0.0625, 0},
				{-0.0625, 0, -0.0625, 0, 0.4375, 0.0625},
				{0, 0, 0, 0.0625, 0.4375, 0.0625},},
			},
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			return rotate_and_place(itemstack, placer, pointed_thing)
		end,
	})

	if recipeitem then
		minetest.register_craft({
			output = 'metal_stairs:stair_inner_' .. subname .. ' 7',
			recipe = {
				{ "", recipeitem, ""},
				{ recipeitem, "", recipeitem},
				{recipeitem, recipeitem, recipeitem},
			},
		})

		-- Fuel
		local baseburntime = minetest.get_craft_result({
			method = "fuel",
			width = 1,
			items = {recipeitem}
		}).time
		if baseburntime > 0 then
			minetest.register_craft({
				type = "fuel",
				recipe = 'metal_stairs:stair_inner_' .. subname,
				burntime = math.floor(baseburntime * 0.875),
			})
		end
	end
end


-- Register outer stair
-- Node will be called metal_stairs:stair_outer_<subname>

function metal_stairs.register_stair_outer(subname, recipeitem, groups, images, description, sounds)
	-- Set backface culling and world-aligned textures
	local stair_images = {}
	for i, image in ipairs(images) do
		if type(image) == "string" then
			stair_images[i] = {
				name = image,
				backface_culling = true,
				align_style = "world",
			}
		else
			stair_images[i] = table.copy(image)
			if stair_images[i].backface_culling == nil then
				stair_images[i].backface_culling = true
			end
			if stair_images[i].align_style == nil then
				stair_images[i].align_style = "world"
			end
		end
	end
	local new_groups = table.copy(groups)
	new_groups.stair = 1
	minetest.register_node(":metal_stairs:stair_outer_" .. subname, {
		description = "Outer " .. description,
		drawtype = "nodebox",
		tiles = stair_images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = new_groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.4375, -0.4375, -0.4375, 0.4375, -0.0625, 0.4375},
				{-0.5, -0.0625, -0.4375, -0.4375, 0, 0},
				{0.4375, -0.0625, -0.4375, 0.5, 0, 0.4375},
				{-0.5, 0.4375, 0.4375, 0, 0.5, 0.5},
				{-0.5, -0.0625, -0.5, 0.5, 0, -0.4375},
				{-0.5, -0.5, -0.5, 0.5, -0.4375, -0.4375},
				{-0.5, -0.5, 0.4375, 0.4375, -0.4375, 0.5},
				{0.4375, -0.5, -0.5, 0.5, -0.4375, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, -0.4375, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, -0.0625, -0.4375},
				{0.4375, -0.5, -0.5, 0.5, -0.0625, -0.4375},
				{0.4375, -0.5, 0.4375, 0.5, -0.0625, 0.5},
				{-0.5, -0.5, 0.4375, -0.4375, 0.4375, 0.5},
				{-0.5, -0.0625, -0.0625, 0.0625, 0, 0},
				{-0.5, 0.4375, 0, -0.4375, 0.5, 0.4375},
				{-0.0625, 0.4375, 0.0625, 0, 0.5, 0.4375},
				{-0.4375, 0.4375, 0, -0.0625, 0.5, 0.0625},
				{-0.5, -0.0625, 0, -0.4375, 0.5, 0.0625},
				{-0.0625, 0.0625, 0, 0, 0.5, 0.0625},
				{-0.4375, -0.0625, 0, 0, 0.0625, 0.0625},
				{-0.4375, -0.4375, 0.0625, -0.0625, 0.4375, 0.4375},
				{0, -0.0625, 0.4375, 0.5, 0, 0.5},
				{0, -0.0625, 0, 0.0625, 0, 0.4375},
				{-0.0625, 0, 0, 0, 0.0625, 0.4375},
				{-0.0625, 0, 0.4375, 0, 0.4375, 0.5},
			},
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			return rotate_and_place(itemstack, placer, pointed_thing)
		end,
	})

	if recipeitem then
		minetest.register_craft({
			output = 'metal_stairs:stair_outer_' .. subname .. ' 6',
			recipe = {
				{ "", "", ""},
				{ "", recipeitem, ""},
				{recipeitem, recipeitem, recipeitem},
			},
		})

		-- Fuel
		local baseburntime = minetest.get_craft_result({
			method = "fuel",
			width = 1,
			items = {recipeitem}
		}).time
		if baseburntime > 0 then
			minetest.register_craft({
				type = "fuel",
				recipe = 'metal_stairs:stair_outer_' .. subname,
				burntime = math.floor(baseburntime * 0.625),
			})
		end
	end
end




-- Stair/slab registration function.
-- Nodes will be called metal_stairs:{stair,slab}_<subname>

function metal_stairs.register_stair_and_slab(subname, groups, images, desc_stair, desc_slab, sounds)
	metal_stairs.register_stair(subname, groups, images, desc_stair, sounds)
	metal_stairs.register_stair_inner(subname, groups, images, desc_stair, sounds)
	metal_stairs.register_stair_outer(subname, groups, images, desc_stair, sounds)
	metal_stairs.register_slab(subname, groups, images, desc_slab, sounds)
end


-- Register default stairs and slabs

--metal stairs

metal_stairs.register_stair_and_slab(
	"bronze_block",
	"metal:bronze_block",
	{cracky = 1, level = 2},
	{"metal_bronze_block.png"},
	"Bronze Block Stair",
	"Bronze Block Slab",
	default.node_sound_metal_defaults()
)

metal_stairs.register_stair_and_slab(
	"copper_block",
	"metal:copper_block",
	{cracky = 1, level = 2},
	{"metal_copper_block.png"},
	"Copper Block Stair",
	"Copper Block Slab",
	default.node_sound_metal_defaults()
)

metal_stairs.register_stair_and_slab(
	"iron_block",
	"metal:iron_block",
	{cracky = 1, level = 2},
	{"metal_iron_block.png"},
	"Iron Block Stair",
	"Iron Block Slab",
	default.node_sound_metal_defaults()
)

metal_stairs.register_stair_and_slab(
	"steel_block",
	"metal:steel_block",
	{cracky = 1, level = 2},
	{"metal_steel_block.png"},
	"Steel Block Stair",
	"Steel Block Slab",
	default.node_sound_metal_defaults()
)

--[[stairs.register_stair_and_slab(
	"tin_block",
	"default:tin_block",
	{cracky = 1, level = 2},
	{"default_tin_block.png"},
	"Tin Block Stair",
	"Tin Block Slab",
	default.node_sound_metal_defaults()
)]]--
