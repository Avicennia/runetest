minetest.register_node("runetest:rune_detector_idle", {
	tiles = {
		"palette_stone_obsidian.png",
		"palette_stone_obsidian.png",
		"palette_stone_obsidian.png",
		"palette_stone_obsidian.png",
		"palette_stone_obsidian.png",
		"palette_stone_obsidian.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{0, -0.4375, 0, 0.0625, -0.25, 0.0625}, -- NodeBox1
			{0, -0.4375, -0.125, 0.0625, -0.25, -0.0625}, -- NodeBox2
			{-0.125, -0.4375, -0.125, -0.0625, -0.25, -0.0625}, -- NodeBox3
			{-0.125, -0.4375, 0, -0.0625, -0.25, 0.0625}, -- NodeBox4
			{-0.125, -0.5, -0.125, 0.0625, -0.4375, 0.0625}, -- NodeBox5
		}
    },
    on_construct = function(pos)
        runetest.rune_passive_beam(pos)
    end
})



---                     GLYPHS                      ---
---                                                 ---
---                                                 ---
minetest.register_node("runetest:glyph_n", {
	tiles = {
		"glyph_n.png",
		"glyph_n.png",
		"glyph_n.png",
		"glyph_n.png",
		"glyph_n.png",
		"glyph_n.png"
	},
	groups = {oddly_breakable_by_hand = 3},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4925, 0.5}, -- NodeBox7
		}
    },
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		runetest.find_inscrip(pos)
		--count = runetest.find_inscrip(pos)
		--meta:set_int("num_of_neighbors",count)
       -- if(meta:get_int("num_of_neighbors") == 4) then
		--	minetest.add_node(pos,{name = "runetest:glyph_c"})
		
    end
})
minetest.register_node("runetest:glyph_c", {
	tiles = {
		"glyph_c.png",
		"glyph_c.png",
		"glyph_c.png",
		"glyph_c.png",
		"glyph_c.png",
		"glyph_c.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4925, 0.5}, -- NodeBox7
		}
	}
})
minetest.register_node("runetest:glyph_t", {
	tiles = {
		"glyph_t.png",
		"glyph_t.png",
		"glyph_t.png",
		"glyph_t.png",
		"glyph_t.png",
		"glyph_t.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4925, 0.5}, -- NodeBox7
		}
	}
})
minetest.register_node("runetest:glyph_d", {
	tiles = {
		"glyph_d.png",
		"glyph_d.png",
		"glyph_d.png",
		"glyph_d.png",
		"glyph_d.png",
		"glyph_d.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4925, 0.5}, -- NodeBox7
		}
	}
})