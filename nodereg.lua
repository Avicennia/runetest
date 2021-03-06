
--								--
--			ACTIVE ITEMS		--
--								--
minetest.register_node("runetest:rune_detector_idle", {
	tiles = {"palette_stone_obsidian.png"},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{0, -0.4375, 0, 0.0625, -0.25, 0.0625},
			{0, -0.4375, -0.125, 0.0625, -0.25, -0.0625},
			{-0.125, -0.4375, -0.125, -0.0625, -0.25, -0.0625},
			{-0.125, -0.4375, 0, -0.0625, -0.25, 0.0625},
			{-0.125, -0.5, -0.125, 0.0625, -0.4375, 0.0625},
		}
    },
    on_construct = function(pos)
		local timer = minetest.get_node_timer(pos)
		timer:start(2)
	end,
	on_timer = function(pos)
		runetest.rune_passive_beam(pos)
		local timer = minetest.get_node_timer(pos)
		timer:start(2)
	end,
	groups = {oddly_breakable_by_hand = 2}
})
-------------------------------------------------------
---                     GLYPHS                      ---
---                                                 ---
---                                                 ---
for n = 1, runetest.insc.lemmas, 1 do
	minetest.register_node("runetest:lemma_"..n, {
		tiles = {"lemma_" .. n .. ".png"},
		drawtype = "nodebox",
		paramtype = "light",
		connects_to = {"group:rt_chalk"},
		connect_sides = { "top", "bottom", "front", "left", "back", "right" },
		node_box = {
			type = "connected",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4925, 0.5},
			},
			connect_back = {-0.0625, -0.5, 0.0625, 0.0625, -0.48875, 0.5},
			connect_right = {0.0625, -0.5, -0.0625, 0.5, -0.48875, 0.0625},
			connect_left = {-0.5, -0.5, -0.0625, -0.0625, -0.48875, 0.0625},
			connect_front = {-0.0625, -0.5, -0.5, 0.0625, -0.48875, -0.0625},
		},
		groups = {oddly_breakable_by_hand = 3, falling_node = 3, rt_lemma = 1},
		on_construct = function(pos)
			local timer = minetest.get_node_timer(pos)
			timer:start(2)
		end,
		on_timer = function(pos)
			runetest.glyph_active(pos)
			local timer = minetest.get_node_timer(pos)
			timer:start(2)
		end,
		on_punch = function(pos)
			minetest.remove_node(pos)
		end
	})
end






--	--	--	Various Glyphs	--	--	--
for n = 1, runetest.insc.glyphs, 1 do
if(n ~= 28)then
minetest.register_node("runetest:glyph_"..n.."active", {

	-- Active runes, to be used immediately after cast time and in a few other special cases.

	tiles = {"glyph_" .. n .. ".png".."^[mask:palette_stone_obsidian.png",},
	drawtype = "nodebox",
	paramtype = "light",
	connects_to = {"group:rt_chalk"},
	connect_sides = { "top", "bottom", "front", "left", "back", "right" },
	node_box = {
		type = "connected",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4925, 0.5},
		},
		connect_back = {-0.0625, -0.5, 0.0625, 0.0625, -0.48875, 0.5},
		connect_right = {0.0625, -0.5, -0.0625, 0.5, -0.48875, 0.0625},
		connect_left = {-0.5, -0.5, -0.0625, -0.0625, -0.48875, 0.0625},
		connect_front = {-0.0625, -0.5, -0.5, 0.0625, -0.48875, -0.0625},
	},

	groups = {oddly_breakable_by_hand = 3, falling_node = 3},

	on_construct = function(pos)

		local timer = minetest.get_node_timer(pos)
		timer:start(2)

	end,

	on_timer = function(pos)

		runetest.glyph_active(pos)
		local timer = minetest.get_node_timer(pos)
		timer:start(2)

	end,

	on_punch = function(pos)

		minetest.remove_node(pos)

	end
})
minetest.register_node("runetest:glyph_"..n, {
		-- Normal glyphs to be used in a more general purpose sense.
	tiles = {"glyph_" .. n .. ".png",},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4925, 0.5},
		}
	},
	groups = {oddly_breakable_by_hand = 3, falling_node = 1, rt_chalk = 1},

	on_punch = function(pos)
		minetest.remove_node(pos)
	end
})
else end
end
minetest.register_node("runetest:glyph_28", {
	tiles = {"glyphtex.png",},
	groups = {oddly_breakable_by_hand = 3, falling_node = 1,rt_chalk = 1},
	drawtype = "nodebox",
	paramtype = "light",
	connects_to = {"group:rt_chalk"},
	connect_sides = { "top", "bottom", "front", "left", "back", "right" },
	node_box = {
		type = "connected",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, -0.48875, 0.0625},
		},
		connect_back = {-0.0625, -0.5, 0.0625, 0.0625, -0.48875, 0.5},
		connect_right = {0.0625, -0.5, -0.0625, 0.5, -0.48875, 0.0625},
		connect_left = {-0.5, -0.5, -0.0625, -0.0625, -0.48875, 0.0625},
		connect_front = {-0.0625, -0.5, -0.5, 0.0625, -0.48875, -0.0625},
	},
	on_punch = function(pos)
		
        minetest.remove_node(pos)
    end
})
--	--	--	--	--	Offering Sigils
minetest.register_node("runetest:offering_sigil_corner", {
	tiles = {"offering_circle_corner.png",},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4925, 0.5},
		}
	},
	groups = {oddly_breakable_by_hand = 2}
})

minetest.register_node("runetest:offering_sigil_vertex", {
	tiles = {"offering_circle_vertice.png",},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4925, 0.5},
		}
	},
	groups = {oddly_breakable_by_hand = 2}
})

--	--	--	--	--	--	--	Reagents	--	--	--	--	--	--	--
minetest.register_node("runetest:reagent_0", {
	description = "Humble Salt",
	tiles = {"tex_salt.png"},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, 0.0625, -0.125, -0.375, 0.125},
			{-0.0625, -0.5, -0.0625, 0, -0.4375, 0},
			{0, -0.5, -0.0625, 0.0625, -0.4375, 0},
			{-0.125, -0.5, -0.125, -0.0625, -0.4375, -0.0625},
			{0, -0.5, -0.125, 0.0625, -0.375, -0.0625},
			{0, -0.5, 0, 0.0625, -0.4375, 0.0625},
			{0.125, -0.5, 0.0625, 0.1875, -0.375, 0.125},
			{0.125, -0.5, 0, 0.1875, -0.4375, 0.0625},
			{0.125, -0.5, -0.1875, 0.1875, -0.4375, -0.125},
			{-0.25, -0.5, -0.1875, -0.1875, -0.4375, -0.125},
			{-0.0625, -0.5, 0.0625, 0, -0.4375, 0.125},
		}
	},
	on_rightclick = function(pos)
	end,
	groups = {oddly_breakable_by_hand = 2, rt_reagent = 1}
})
--	--	--	--	--	--	--	ALTARS
minetest.register_node("runetest:dev", {
	tiles = {"me_obelisk_panel_port.png"},
	drawtype = "nodebox",
	paramtype = "light",
    groups = {crumbly = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5},
			{-0.4375, 0.375, -0.4375, 0.4375, 0.4375, 0.4375},
			{-0.375, 0.3125, -0.375, 0.375, 0.4375, 0.375},
			{-0.3125, 0.25, -0.3125, 0.3125, 0.4375, 0.3125},
			{-0.3125, -0.375, -0.3125, 0.3125, 0.4375, 0.3125},
			{-0.375, -0.5, -0.375, 0.375, -0.375, 0.375},
		}
	},
	on_punch = function(pos, node, puncher)
		--runetest.core.will.change(puncher)
		--runetest.core.will.endp(puncher)
		runetest.core.will.register(puncher)
		--minetest.chat_send_all(minetest.serialize(runetest.cache.users))
		minetest.chat_send_all(runetest.core.will.alter(puncher, "T",7))
	end
})
minetest.register_node("runetest:ash", {
	description = "Inert Ash",
	tiles = {"ash.png"},
	groups = {crumbly = 2, oddly_breakable_by_hand = 1}
})
--	--	--	MISC

minetest.register_node("runetest:meshy", {
    drawtype = "mesh",
    tiles = {"default_wood.png"},
	mesh = "lectern.b3d",
	groups = {crumbly = 1,oddly_breakable_by_hand = 1}
})

minetest.register_node("runetest:tafel", {
    drawtype = "mesh", 
    tiles = {"ash.png"},
    paramtype2 = "facedir",
	mesh = "table.b3d",
	groups = {crumbly = 1,oddly_breakable_by_hand = 1},
	on_punch = function(pos)

		runetest.core.tafel.makeglyph(pos, runetest.core.tafel.lemscan(pos))
	end
})
minetest.register_node("runetest:tablet", { 
    tiles = {"canvas2.png"},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.4375, 0.4375, -0.4575, 0.4375}, -- NodeBox1
		}
	},
	groups = {crumbly = 1,oddly_breakable_by_hand = 1}
})
for n = 1, runetest.insc.glyphs, 1 do
	minetest.register_node("runetest:tablet"..n, { 
		tiles = {"canvas2.png^".."glyph_"..n..".png"},
		drawtype = "nodebox",
		paramtype = "light",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.4375, -0.5, -0.4375, 0.4375, -0.4575, 0.4375}, -- NodeBox1
			}
		},
		groups = {crumbly = 1,oddly_breakable_by_hand = 1, rt_chalk = 1}
	})
end
for n = 1, runetest.insc.lemmas, 1 do
	minetest.register_node("runetest:ltablet"..n, { 
		tiles = {"canvas2.png^".."lemma_"..n..".png"},
		drawtype = "nodebox",
		paramtype = "light",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.4375, -0.5, -0.4375, 0.4375, -0.4575, 0.4375}, -- NodeBox1
			}
		},
		groups = {crumbly = 1,oddly_breakable_by_hand = 1}
	})
end
minetest.register_node("runetest:tile", {
    tiles = {"sapro.png"},
	groups = {crumbly = 1,oddly_breakable_by_hand = 1}
})
minetest.register_node("runetest:crystal", {
    drawtype = "mesh", 
    tiles = {"canvas2.png"},
    paramtype2 = "facedir",
	mesh = "crystal.b3d",
	groups = {crumbly = 1,oddly_breakable_by_hand = 1},
	on_punch = function(pos)
		minetest.add_entity({x=pos.x, y=pos.y + 2, z = pos.z}, "runetest:ent_crys")
	end
})