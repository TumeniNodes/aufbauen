-- Minetest 0.4 mod: stairs
-- See README.txt for licensing and other information.


-- Global namespace for functions

stairs = {}


-- Register aliases for new pine node names

minetest.register_alias("stairs:stair_pinewood", "stairs:stair_pine_wood")
minetest.register_alias("stairs:slab_pinewood", "stairs:slab_pine_wood")


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


-- Register stair
-- Node will be called stairs:stair_<subname>

function stairs.register_stair(subname, recipeitem, groups, images, description, sounds)
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
	minetest.register_node(":stairs:stair_" .. subname, {
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
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.5, 0.5, 0.5},
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
		minetest.register_node(":stairs:stair_" .. subname .. "upside_down", {
			replace_name = "stairs:stair_" .. subname,
			groups = {slabs_replace = 1},
		})
	end

	if recipeitem then
		-- Recipe matches appearence in inventory
		minetest.register_craft({
			output = 'stairs:stair_' .. subname .. ' 8',
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
				{'stairs:stair_' .. subname, 'stairs:stair_' .. subname},
				{'stairs:stair_' .. subname, 'stairs:stair_' .. subname},
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
				recipe = 'stairs:stair_' .. subname,
				burntime = math.floor(baseburntime * 0.75),
			})
		end
	end
end


-- Slab facedir to placement 6d matching table
local slab_trans_dir = {[0] = 8, 0, 2, 1, 3, 4}


-- Register slab
-- Node will be called stairs:slab_<subname>

function stairs.register_slab(subname, recipeitem, groups, images, description, sounds)
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
	minetest.register_node(":stairs:slab_" .. subname, {
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
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		on_place = function(itemstack, placer, pointed_thing)
			local under = minetest.get_node(pointed_thing.under)
			local wield_item = itemstack:get_name()
			local player_name = placer and placer:get_player_name() or ""
			local creative_enabled = (creative and creative.is_enabled_for
					and creative.is_enabled_for(player_name))

			if under and under.name:find("stairs:slab_") then
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
		minetest.register_node(":stairs:slab_" .. subname .. "upside_down", {
			replace_name = "stairs:slab_".. subname,
			groups = {slabs_replace = 1},
		})
	end

	if recipeitem then
		minetest.register_craft({
			output = 'stairs:slab_' .. subname .. ' 6',
			recipe = {
				{recipeitem, recipeitem, recipeitem},
			},
		})

		-- Use 2 slabs to craft a full block again (1:1)
		minetest.register_craft({
			output = recipeitem,
			recipe = {
				{'stairs:slab_' .. subname},
				{'stairs:slab_' .. subname},
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
				recipe = 'stairs:slab_' .. subname,
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
-- Node will be called stairs:stair_inner_<subname>

function stairs.register_stair_inner(subname, recipeitem, groups, images, description, sounds)
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
	minetest.register_node(":stairs:stair_inner_" .. subname, {
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
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.5, 0.5, 0.5},
				{-0.5, 0.0, -0.5, 0.0, 0.5, 0.0},
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
			output = 'stairs:stair_inner_' .. subname .. ' 7',
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
				recipe = 'stairs:stair_inner_' .. subname,
				burntime = math.floor(baseburntime * 0.875),
			})
		end
	end
end


-- Register outer stair
-- Node will be called stairs:stair_outer_<subname>

function stairs.register_stair_outer(subname, recipeitem, groups, images, description, sounds)
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
	minetest.register_node(":stairs:stair_outer_" .. subname, {
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
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.0, 0.5, 0.5},
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
			output = 'stairs:stair_outer_' .. subname .. ' 6',
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
				recipe = 'stairs:stair_outer_' .. subname,
				burntime = math.floor(baseburntime * 0.625),
			})
		end
	end
end


-- Stair/slab registration function.
-- Nodes will be called stairs:{stair,slab}_<subname>

function stairs.register_stair_and_slab(subname, recipeitem, groups, images, desc_stair, desc_slab, sounds)
	stairs.register_stair(subname, recipeitem, groups, images, desc_stair, sounds)
	stairs.register_stair_inner(subname, recipeitem, groups, images, desc_stair, sounds)
	stairs.register_stair_outer(subname, recipeitem, groups, images, desc_stair, sounds)
	stairs.register_slab(subname, recipeitem, groups, images, desc_slab, sounds)
end


-- Register default stairs and slabs

--wood stairs

stairs.register_stair_and_slab(
	"birch_planking",
	"wood:birch_planking",
	{choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	{"wood_birch_planking.png"},
	"Birch Planking Stair",
	"Birch Planking Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"birch_planks",
	"wood:birch_planks",
	{choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	{"wood_birch_planks.png"},
	"Birch Planks Stair",
	"Birch Planks_Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"junglewood_planking",
	"wood:junglewood_planking",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"wood_junglewood_planking.png"},
	"Junglewood Planking Stair",
	"Junglewood Planking Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"junglewood_planks",
	"wood:junglewood_planks",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"wood_junglewood_planks.png"},
	"Junglewood Planks Stair",
	"Junglewood Planks Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"oak_planking",
	"wood:oak_planking",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"wood_oak_planking.png"},
	"Oak Planking Stair",
	"Oak Planking Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"oak_planks",
	"wood:oak_planks",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"wood_oak_planks.png"},
	"Oak Planks Stair",
	"Oak Planks Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"pine_planking",
	"wood:pine_planking",
	{choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	{"wood_pine_planking.png"},
	"Pine Planking Stair",
	"Pine Planking Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"pine_planks",
	"wood:pine_planks",
	{choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	{"wood_pine_planks.png"},
	"Pine Planks Stair",
	"Pine Planks Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"willow_planking",
	"wood:willow_planking",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"wood_willow_planking.png"},
	"Willow Planking Stair",
	"Willow Planking Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"willow_planks",
	"wood:willow_planks",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"wood_willow_planks.png"},
	"Willow Planks Stair",
	"Willow Planks Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"wood_planks",
	"wood:wood_planks",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"wood_wood_planks.png"},
	"Wood Planks Stair",
	"Wood Planks Slab",
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab(
	"wood_planking",
	"wood:wood_planking",
	{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	{"wood_wood_planking.png"},
	"Wood Planking Stair",
	"Wood Planking Slab",
	default.node_sound_wood_defaults()
)


--stone stairs

stairs.register_stair_and_slab(
	"brick",
	"stone:brick",
	{cracky = 3},
	{"stone_brick.png"},
	"Brick Stair",
	"Brick Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"cobblestone",
	"stone:cobblestone",
	{cracky = 3},
	{"stone_cobblestone.png"},
	"Cobblestone Stair",
	"Cobblestone Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"cobblestone_mossy",
	"stone:cobblestone_mossy",
	{cracky = 3},
	{"stone_cobblestone_mossy.png"},
	"Mossy Cobblestone Stair",
	"Mossy Cobblestone Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"granite",
	"default:granite",
	{crumbly = 1, cracky = 3},
	{"default_granite.png"},
	"Granite Stair",
	"Granite Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"granite_block",
	"stone:granite_block",
	{cracky = 2},
	{"stone_granite_block.png"},
	"Granite Block Stair",
	"Granite Block Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"granite_brick",
	"stone:granite_brick",
	{cracky = 2},
	{"stone_granite_brick.png"},
	"Granite Brick Stair",
	"Granite Brick Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"limestone",
	"default:limestone",
	{cracky = 3},
	{"default_limestone.png"},
	"Limestone Stair",
	"Limestone Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"limestone_block",
	"stone:limestone_block",
	{cracky = 2},
	{"stone_limestone_block.png"},
	"Limestone Block Stair",
	"Limestone Block Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"limestone_brick",
	"stone:limestone_brick",
	{cracky = 2},
	{"stone_limestone_brick.png"},
	"Limestone Brick Stair",
	"Limestone Brick Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"rock",
	"default:rock",
	{crumbly = 1, cracky = 3},
	{"default_rock.png"},
	"Rock Stair",
	"Rock Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"rock_mossy",
	"default:rock_mossy",
	{crumbly = 1, cracky = 3},
	{"default_rock_mossy.png"},
	"Mossy Rock Stair",
	"Mossy Rock Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"sandstone",
	"default:sandstone",
	{crumbly = 1, cracky = 3},
	{"default_sandstone.png"},
	"Sandstone Stair",
	"Sandstone Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"sandstone_block",
	"stone:sandstone_block",
	{cracky = 2},
	{"stone_sandstone_block.png"},
	"Sandstone Block Stair",
	"Sandstone Block Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"sandstone_brick",
	"stone:sandstone_brick",
	{cracky = 2},
	{"stone_sandstone_brick.png"},
	"Sandstone Brick Stair",
	"Sandstone Brick Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"stone",
	"default:stone",
	{cracky = 3},
	{"default_stone.png"},
	"Stone Stair",
	"Stone Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"stone_block",
	"stone:stone_block",
	{cracky = 2},
	{"stone_stone_block.png"},
	"Stone Block Stair",
	"Stone Block Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"stone_brick",
	"stone:stone_brick",
	{cracky = 2},
	{"stone_stone_brick.png"},
	"Stone Brick Stair",
	"Stone Brick Slab",
	default.node_sound_stone_defaults()
)

stairs.register_stair_and_slab(
	"stone_cinderblock",
	"stone:stone_cinderblock",
	{cracky = 2},
	{"stone_stone_cinderblock.png"},
	"Stone Cinderblock Stair",
	"Stone Cinderblock Slab",
	default.node_sound_stone_defaults()
)


--metal stairs

stairs.register_stair_and_slab(
	"bronze_block",
	"metal:bronze_block",
	{cracky = 1, level = 2},
	{"metal_bronze_block.png"},
	"Bronze Block Stair",
	"Bronze Block Slab",
	default.node_sound_metal_defaults()
)

stairs.register_stair_and_slab(
	"copper_block",
	"metal:copper_block",
	{cracky = 1, level = 2},
	{"metal_copper_block.png"},
	"Copper Block Stair",
	"Copper Block Slab",
	default.node_sound_metal_defaults()
)

stairs.register_stair_and_slab(
	"iron_block",
	"metal:iron_block",
	{cracky = 1, level = 2},
	{"metal_iron_block.png"},
	"Iron Block Stair",
	"Iron Block Slab",
	default.node_sound_metal_defaults()
)

stairs.register_stair_and_slab(
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


--soft/non-stone slabs

stairs.register_slab(
	"dirt",
	"default:dirt",
	{cracky = 1, level = 2},
	{"default_dirt.png"},
	"Dirt Slab",
	default.node_sound_dirt_defaults()
)


--glass slabs

stairs.register_slab(
	"glass",
	"glass:glass",
	{cracky = 1, level = 2},
	{"glass_glass.png"},
	"Glass Slab",
	default.node_sound_dirt_defaults()
)

stairs.register_slab(
	"obsidian_glass",
	"glass:obsidian_glass",
	{cracky = 1, level = 2},
	{"glass_obsidian_glass.png"},
	"Obsidian Glass Slab",
	default.node_sound_dirt_defaults()
)
