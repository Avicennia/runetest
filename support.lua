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


--  --  --  ENTITIES    --  --  --
--  --  --              --  --  --
--  --  --              --  --  --
for n = 1, #runetest.glyphs, 1 do
local stonetab = {
    initial_properties = {
        hp_max = 1,
        physical = true,
        collide_with_objects = false,
        collisionbox = {-0.3, -0.3, -0.3, 0.3, 0.3, 0.3},
        visual = "sprite",
        visual_size = {x = 0.4, y = 0.4},
        textures = {"glyph_"..n..".png"},
        spritediv = {x = 1, y = 1},
        initial_sprite_basepos = {x = 0, y = 0},
    },
    on_activate = function()
        minetest.chat_send_all("Hello World.")
    end
}

minetest.register_entity("runetest:ent_tablet_"..n, stonetab)

local stonetab = {
    initial_properties = {
        hp_max = 1,
        physical = true,
        collide_with_objects = false,
        collisionbox = {-0.3, -0.3, -0.3, 0.3, 0.3, 0.3},
        visual = "sprite",
        visual_size = {x = 0.4, y = 0.4},
        textures = {"glyph_"..n.. ".png^[mask:palette_stone_obsidian.png"},
        spritediv = {x = 1, y = 1},
        initial_sprite_basepos = {x = 0, y = 0},
    },
    on_activate = function()
        minetest.chat_send_all("Hello World!")
    end
}
minetest.register_entity("runetest:ent_tablet_"..n.."_active", stonetab)
end