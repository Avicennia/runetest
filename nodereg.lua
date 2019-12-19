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
		"glyphtex.png",
		"glyphtex.png",
		"glyphtex.png",
		"glyphtex.png",
		"glyphtex.png",
		"glyphtex.png"
	},
	groups = {oddly_breakable_by_hand = 3, falling_node = 3},
	drawtype = "nodebox",
	paramtype = "light",
	connects_to = {"runetest:glyph_n"},
	connect_sides = { "top", "bottom", "front", "left", "back", "right" },
	node_box = {
		type = "connected",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, -0.48875, 0.0625}, -- NodeBox7
		},
		connect_back = {-0.0625, -0.5, 0.0625, 0.0625, -0.48875, 0.5},
		connect_right = {0.0625, -0.5, -0.0625, 0.5, -0.48875, 0.0625},
		connect_left = {-0.5, -0.5, -0.0625, -0.0625, -0.48875, 0.0625},
		connect_front = {-0.0625, -0.5, -0.5, 0.0625, -0.48875, -0.0625},
	},
	on_punch= function(pos)
	minetest.remove_node(pos)
end
})


--	--	--	Various Glyphs	--	--	--
for n = 1, #runetest.glyphs, 1 do
minetest.register_node("runetest:glyph_"..n.."active", {
	tiles = {
		"glyph_" .. n .. ".png".."^[mask:palette_stone_obsidian.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4925, 0.5},
		}
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
	end
})
minetest.register_node("runetest:glyph_"..n, {
	tiles = {
		"glyph_" .. n .. ".png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4925, 0.5},
		}
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
	end
})
end
--	--	--	--	--	Offering Sigils
minetest.register_node("runetest:offering_sigil_corner", {
	tiles = {
		"offering_circle_corner.png",
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
minetest.register_node("runetest:offering_sigil_corner_r90", {
	tiles = {
		"offering_circle_corner_r90.png",
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
minetest.register_node("runetest:offering_sigil_corner_r180", {
	tiles = {
		"offering_circle_corner_r180.png",
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
minetest.register_node("runetest:offering_sigil_corner_r360", {
	tiles = {
		"offering_circle_corner_r360.png",
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
minetest.register_node("runetest:offering_sigil_vertex", {
	tiles = {
		"offering_circle_vertice.png",
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
minetest.register_node("runetest:offering_sigil_vertex_r90", {
	tiles = {
		"offering_circle_vertice_r90.png",
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
minetest.register_node("runetest:offering_sigil_vertex_r180", {
	tiles = {
		"offering_circle_vertice_r180.png",
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
minetest.register_node("runetest:offering_sigil_vertex_r360", {
	tiles = {
		"offering_circle_vertice_r360.png"
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
--	--	--	--	--	--	--	Reagents	--	--	--	--	--	--	--
minetest.register_node("runetest:reagent_humblesalt", {
	tiles = {
		"tex_salt.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, 0.0625, -0.125, -0.375, 0.125}, -- NodeBox1
			{-0.0625, -0.5, -0.0625, 0, -0.4375, 0}, -- NodeBox2
			{0, -0.5, -0.0625, 0.0625, -0.4375, 0}, -- NodeBox3
			{-0.125, -0.5, -0.125, -0.0625, -0.4375, -0.0625}, -- NodeBox4
			{0, -0.5, -0.125, 0.0625, -0.375, -0.0625}, -- NodeBox5
			{0, -0.5, 0, 0.0625, -0.4375, 0.0625}, -- NodeBox6
			{0.125, -0.5, 0.0625, 0.1875, -0.375, 0.125}, -- NodeBox7
			{0.125, -0.5, 0, 0.1875, -0.4375, 0.0625}, -- NodeBox8
			{0.125, -0.5, -0.1875, 0.1875, -0.4375, -0.125}, -- NodeBox9
			{-0.25, -0.5, -0.1875, -0.1875, -0.4375, -0.125}, -- NodeBox10
			{-0.0625, -0.5, 0.0625, 0, -0.4375, 0.125}, -- NodeBox11
		}
	},
	on_rightclick = function(pos)
		local find = runetest.find_neighborhood(pos,"hor_x")
		runecheck.ringcheck(pos,3,"square","runetest:glyph_n")
	end
})
--	--	--	--	--	--	--	ALTARS
minetest.register_node("runetest:dev", {
	tiles = {
		"me_obelisk_panel_port.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5}, -- NodeBox1
			{-0.4375, 0.375, -0.4375, 0.4375, 0.4375, 0.4375}, -- NodeBox2
			{-0.375, 0.3125, -0.375, 0.375, 0.4375, 0.375}, -- NodeBox3
			{-0.3125, 0.25, -0.3125, 0.3125, 0.4375, 0.3125}, -- NodeBox4
			{-0.3125, -0.375, -0.3125, 0.3125, 0.4375, 0.3125}, -- NodeBox5
			{-0.375, -0.5, -0.375, 0.375, -0.375, 0.375}, -- NodeBox6
		}
	},
	on_punch = function(pos)
		minetest.chat_send_all(minetest.serialize(runetest.frame.anal(runetest.frame.snap(pos,10))))
	end,
})
minetest.register_node("runetest:ash", {
	description = "Inert Ash",
	tiles = {"ash.png"},
	groups = {crumbly = 2, oddly_breakable_by_hand = 1}
})
--	--	--	--	--	--	--	Combat
minetest.register_node("runetest:bomb_companion", {
	tiles = {
		"dev.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.3125, -0.5, -0.3125, 0.5, -0.3125}, -- NodeBox3
			{-0.5, -0.5, -0.5, -0.3125, -0.3125, -0.3125}, -- NodeBox4
			{0.3125, -0.5, -0.5, 0.5, -0.3125, -0.3125}, -- NodeBox5
			{0.3125, 0.3125, -0.5, 0.5, 0.5, -0.3125}, -- NodeBox6
			{0.3125, 0.3125, 0.3125, 0.5, 0.5, 0.5}, -- NodeBox7
			{0.3125, -0.5, 0.3125, 0.5, -0.3125, 0.5}, -- NodeBox8
			{-0.5, -0.5, 0.3125, -0.3125, -0.3125, 0.5}, -- NodeBox9
			{-0.5, 0.3125, 0.3125, -0.3125, 0.5, 0.5}, -- NodeBox10
			{-0.3125, -0.3125, -0.3125, 0.3125, 0.3125, 0.3125}, -- NodeBox11
			{0.3125, -0.125, -0.125, 0.375, 0.125, 0.125}, -- NodeBox12
			{-0.375, -0.125, -0.125, -0.3125, 0.125, 0.125}, -- NodeBox13
			{-0.125, -0.125, -0.375, 0.125, 0.125, -0.3125}, -- NodeBox15
			{-0.125, -0.125, 0.3125, 0.125, 0.125, 0.375}, -- NodeBox16
		}
	},
	groups = {falling_node = 6, oddly_breakable_by_hand = 2}
})
minetest.register_node("runetest:meshy", {
    drawtype = "mesh",

    -- Holds the texture for each "material"
    tiles = {
        "default_wood.png"
    },

    -- Path to the mesh
    mesh = "lectern.b3d",
})