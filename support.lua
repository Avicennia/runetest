--

--  --  --  --  --  --  -- Template Glyphs and Runes --  --  --  --  --  --  --  

runetest.templates = {
    glyphs_names = {
        "basic_square"
    },
    glyphs = {
        -- BASE INSCRIPTION
        --Glyph 1
    {{1,1},{1,1}},

        --Glyph 2
    {{3,3,3},{3,3,3},{3,3,3}},

        --Glyph 3
    {{1,1,1},{1,0,1},{1,1,1}},
        --Glyph 4
    {{28,28,28},{28,0,28},{28,28,28}}

    },

    
    runes = {

    }


}


--  --  --  --  --  --  --  --  --  --  --  --  --  --

minetest.register_abm({
    nodenames = {"runetest:rune_detector_idle"},
    neighbors = {},
    interval = 3.0,
    chance = 1,
    action = function(pos)
        --minetest.chat_send_all(minetest.serialize(minetest.find_node_near(pos,64,"group:rt_chalk",false)))
        local dest = minetest.find_node_near(pos,64,"group:rt_chalk",false)
        runetest.particle.detline(pos,dest)
    end
})