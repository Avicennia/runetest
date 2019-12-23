--

--  --  --  --  --  --  -- Template Glyphs and Runes --  --  --  --  --  --  --  

runetest.templates = {
    glyphs = {
        -- BASE INSCRIPTION
    --Glyph 1
    {{0,28,0},{28,28,28},{0,28,0}},
    --Glyph 2
    {{28,0,28},{0,0,0},{28,0,28}},
    --Glyph 3
    {{0,0,0},{0,28,0},{0,0,0}},
    --Glyph 4
    {{28,28,28},{28,0,28},{28,28,28}},
    --Glyph 5
    {{4,0,0},{5,0,0},{12,0,0}},
    --Glyph 6
    {{1,1,1},{1,1,1},{1,1,1}},
    --Glyph 7
    {{28,0,28},{28,0,28},{28,28,28}},
    --Glyph 8
    {{28,0,28},{28,28,28},{28,0,28}},
    --Glyph 9
    {{28,0,0},{28,28,0},{28,0,0}},
    --Glyph 10
    {{},{},{}},
    --Glyph 11
    {{},{},{}},
    --Glyph 12
    {{},{},{}},
    --Glyph 13
    {{},{},{}},
    --Glyph 14
    {{},{},{}},
    --Glyph 15
    {{},{},{}},
    --Glyph 16
    {{},{},{}},
    --Glyph 17
    {{},{},{}},
    --Glyph 18
    {{},{},{}},
    --Glyph 19
    {{},{},{}},
    --Glyph 20
    {{},{},{}},
    --Glyph 21
    {{},{},{}},
    --Glyph 22
    {{},{},{}},
    --Glyph 23
    {{},{},{}},
    --Glyph 24
    {{},{},{}},
    --Glyph 25
    {{},{},{}},
    --Glyph 26
    {{},{},{}},
    --Glyph 27
    {{},{},{}}
    },
    glyphs_info = {},

}
for n = 1, #runetest.templates.glyphs, 1 do
    runetest.templates.glyphs_info[n] = {#runetest.templates.glyphs[n],"Inscription for Glyph_"..n,{},{"place", n}}
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
 lolosia = 1

--  --  --  ENTITIES    --  --  --
--  --  --              --  --  --
--  --  --              --  --  --
for n = 1, #runetest.glyphs, 1 do
local stonetab = {
    initial_properties = {
        hp_max = 1,
        physical = false,
        collide_with_objects = false,
        collisionbox = {-0.0, -0.0, -0.0, 0.0, 0.0, 0.0},
        visual = "sprite",
        visual_size = {x = 0.4, y = 0.4},
        textures = {"glyph_"..n..".png"},
        spritediv = {x = 1, y = 1},
        initial_sprite_basepos = {x = 0, y = 0},
    },
    on_activate = function(self)
        local pos = self.object:get_pos()
        local table = minetest.find_node_near(pos, 2, "runetest:table", false)
        if(table)then
            local neighborhood = minetest.get_objects_inside_radius({x=table.x,y=table.y+1,z=table.z},1.5)
            self.object:move_to({x=table.x,y=table.y+1,z=table.z-1+#neighborhood/3})
        else end
    end,
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
    end,
}
minetest.register_entity("runetest:ent_tablet_"..n.."_active", stonetab)
end