--

--  --  --  --  --  --  -- Template Glyphs and Runes --  --  --  --  --  --  --  

runetest.templates = {
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
    glyphs_info = {},

}
for n = 1, #runetest.templates.glyphs, 1 do
    runetest.templates.glyphs_info[n] = {#runetest.templates.glyphs[n],"First Glyph",{},{"place", "runetest:rest"}}
end

--  --  --  --  --  --  --  --  --  --  --  --  --  --

minetest.register_abm({
    nodenames = {"runetest:rune_detector_idle"},
    neighbors = {},
    interval = 2.0,
    chance = 1,
    action = function(pos)
        --minetest.chat_send_all(minetest.serialize(minetest.find_node_near(pos,64,"group:rt_chalk",false)))
        local dest = minetest.find_node_near(pos,64,"group:rt_chalk",false)
        if(dest)then
        runetest.particle.detline(pos,dest)
        else
        end
    end
})