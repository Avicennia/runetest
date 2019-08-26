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
	},
	on_rightclick = function(pos)
		local find = runetest.find_neighborhood(pos,"hor_x")
		runecheck.ringcheck(pos,3,"square","runetest:glyph_n")
	end
})
--	--	--	--	--	--	--	ALTARS
minetest.register_node("runetest:dev", {
	tiles = {
		"me_obelisk_panel_port.png",
		"me_obelisk_panel_port.png",
		"me_obelisk_panel_port.png",
		"me_obelisk_panel_port.png",
		"me_obelisk_panel_port.png",
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
		local node = minetest.get_node({x=pos.x+1,y=pos.y,z=pos.z})
		if(node.name == "air")then
		minetest.set_node({x=pos.x+1,y=pos.y,z=pos.z},{name ="runetest:spout"})
		else minetest.remove_node({x=pos.x+1,y=pos.y,z=pos.z})
		end
	end,
	on_rightclick = function(pos)
		gf = function(pos)
			local j1 = {{x=pos.x+1,y=pos.y+4,z=pos.z},{x=pos.x+1,y=pos.y+4,z=pos.z+1},{x=pos.x+1,y=pos.y+4,z=pos.z-1}}
			for k,v in ipairs(j1)do
				minetest.place_node(v,{name="runetest:bomb_companion"})
				minetest.chat_send_all(minetest.serialize(v))
			end
			minetest.after(3,function(pos) gf(pos) end, pos)
		end
		gf(pos)
		pos = {x=pos.x+1,y=pos.y,z=pos.z}
		minetest.after(3,function(pos) gf(pos) end, pos)
	end
})
minetest.register_node("runetest:spout", {
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
			{-0.6875, 0.0625, 0.0625, -0.3125, 0.25, 0.125}, -- NodeBox8
			{-0.6875, 0.0625, -0.125, -0.3125, 0.25, -0.0625}, -- NodeBox9
			{-0.6875, 0.0625, -0.0625, -0.3125, 0.125, 0.0625}, -- NodeBox10
		}
	}
})
--	--	--	--	--	--	--	Combat
minetest.register_node("runetest:bomb_companion", {
	tiles = {
		"dev.png",
		"dev.png",
		"dev.png",
		"dev.png",
		"dev.png",
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
