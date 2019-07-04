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
	groups = {oddly_breakable_by_hand = 3, falling_node = 3},
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
--	--	--	--	--	Offering Sigils
minetest.register_node("runetest:offering_sigil_corner", {
	tiles = {
		"offering_circle_corner.png",
		"offering_circle_corner.png",
		"offering_circle_corner.png",
		"offering_circle_corner.png",
		"offering_circle_corner.png",
		"offering_circle_corner.png"
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
										"offering_circle_corner_r90.png",
										"offering_circle_corner_r90.png",
										"offering_circle_corner_r90.png",
										"offering_circle_corner_r90.png",
										"offering_circle_corner_r90.png"
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
										"offering_circle_corner_r180.png",
										"offering_circle_corner_r180.png",
										"offering_circle_corner_r180.png",
										"offering_circle_corner_r180.png",
										"offering_circle_corner_r180.png"
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
										"offering_circle_corner_r360.png",
										"offering_circle_corner_r360.png",
										"offering_circle_corner_r360.png",
										"offering_circle_corner_r360.png",
										"offering_circle_corner_r360.png"
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
		"offering_circle_vertice.png",
		"offering_circle_vertice.png",
		"offering_circle_vertice.png",
		"offering_circle_vertice.png",
		"offering_circle_vertice.png"
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
										"offering_circle_vertice_r90.png",
										"offering_circle_vertice_r90.png",
										"offering_circle_vertice_r90.png",
										"offering_circle_vertice_r90.png",
										"offering_circle_vertice_r90.png"
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
										"offering_circle_vertice_r180.png",
										"offering_circle_vertice_r180.png",
										"offering_circle_vertice_r180.png",
										"offering_circle_vertice_r180.png",
										"offering_circle_vertice_r180.png"
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
										"offering_circle_vertice_r360.png",
										"offering_circle_vertice_r360.png",
										"offering_circle_vertice_r360.png",
										"offering_circle_vertice_r360.png",
										"offering_circle_vertice_r360.png",
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
		"tex_salt.png",
		"tex_salt.png",
		"tex_salt.png",
		"tex_salt.png",
		"tex_salt.png",
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
	}
})
