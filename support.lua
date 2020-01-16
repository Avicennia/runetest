--

--  --  --  --  --  --  -- Template Glyphs and Runes --  --  --  --  --  --  --  

runetest.templates = {
    glyphs = {
        -- BASE INSCRIPTION
    --Lemma 1
    {{28,0,28},{28,28,28},{0,28,0}},
    --Lemma 2
    {{28,0,28},{0,28,0},{28,0,28}},
    --Lemma 3
    {{28,28,28},{28,0,28},{28,0,28}},
    --Lemma 4
    {{28,0,0},{28,28,0},{28,0,0}},
    --Lemma 5
    {{28,28,0},{28,28,0},{28,0,0}},
    --Lemma 6
    {{0,28,0},{28,28,28},{0,0,0}},
    --Lemma 7
    {{0,0,28},{0,28,28},{28,28,0}},
    --Lemma 8
    {{28,0,0},{0,28,0},{0,0,28}},
    --Lemma 9
    {{0,28,0},{28,28,28},{0,28,0}},
    --Glyph 1
    {{28,28,28,28,28},{28,28,28,28,28},{28,28,28,28,28},{28,28,28,28,28},{28,28,28,28,28}},
    --Glyph 2
    {{},{},{}},
    --Glyph 3
    {{},{},{}},
    --Glyph 4
    {{},{},{}},
    --Glyph 5
    {{},{},{}},
    --Glyph 6
    {{},{},{}},
    --Glyph 7
    {{},{},{}},
    --Glyph 8
    {{},{},{}},
    --Glyph 9
    {{},{},{}},
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
    {{},{},{}}
    },
    glyphs_info = {},
    alternatives = {}

}
for n = 1, (#runetest.templates.glyphs-(#runetest.templates.glyphs-9)), 1 do
    runetest.templates.glyphs_info[n] = {#runetest.templates.glyphs[n],"Inscription for Lemma_" .. n,{propns},{"place", n}}
end
for n = 10, #runetest.templates.glyphs, 1 do
    runetest.templates.glyphs_info[n] = {#runetest.templates.glyphs[n],"Inscription for Glyph_"..n,{propns},{"place", n}}
end

--[[
    In-field Rune Use
    
    CURRENT CONSIDERATIONS:
        Base template for a rune; Table containing several components, planned to be reducible to indexable integers
        wherever possible, which call various fields from a centralized library table.

       1) position, destination -- Arguments that may be table values for actual map positions, names of players, or predefined positional values (eg. nearestplayer, nearestnode, nearestent)
       
       2) action -- Argument containing one of several possible predefined integral fields of an action table, defines which functions are called in execution of the rune's action.
          (eg. a "placenode" action may use the code [4], in which case the rune places nodes) This may come with additional modifiers per action (eg. if the placenode code of 4 is selected, there may be other numbers to add to indicate direction or shape)
            should return values that give any checkup/cleanup functions the necessary information to do their work.
       
       3) info -- table containing casting player's name, any other players involved and perhaps how, positions involved if necessary. For auxillary use.

example:
                runetest.runes.barrier = function(pos,des,act,info)
                    
                end



       ]]


--  --  --  --  --  --  --  --  --  --  --  --  --  --




--  --  --  ENTITIES    --  --  --
--  --  --              --  --  --
--  --  --              --  --  --
for n = 1, #runetest.glyphs, 1 do
local stonetab = {
    initial_properties = {
        hp_max = 1,
        physical = true,
        collide_with_objects = false,
        collisionbox = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
        visual = "sprite",
        visual_size = {x = 0.2, y = 0.2},
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
    on_step = function(self)
        
    end
}

minetest.register_entity("runetest:ent_glyph_"..n, stonetab)

local stonetab = {
    initial_properties = {
        hp_max = 1,
        physical = true,
        collide_with_objects = false,
        collisionbox = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
        visual = "sprite",
        visual_size = {x = 0.2, y = 0.2},
        textures = {"glyph_"..n.. ".png^[mask:palette_stone_obsidian.png"},
        spritediv = {x = 1, y = 1},
        initial_sprite_basepos = {x = 0, y = 0},
    },
    on_activate = function()
        minetest.chat_send_all("Hello World!")
    end,
}
minetest.register_entity("runetest:ent_glyph_"..n.."_active", stonetab)
end

for n = 1, 9, 1 do
local stonetab = {
    initial_properties = {
        hp_max = 1,
        physical = true,
        collide_with_objects = false,
        collisionbox = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
        visual = "sprite",
        visual_size = {x = 0.2, y = 0.2},
        textures = {"lemma_"..n..".png"},
        spritediv = {x = 1, y = 1},
        initial_sprite_basepos = {x = 0, y = 0},
        
    },
    on_step = function(self)
        local pos = self.object:get_pos()
        runetest.particle.scrib(pos)
        end
}
    minetest.register_entity("runetest:ent_lemma_"..n, stonetab)
end

local crys = {
    initial_properties = {
        hp_max = 0,
        physical = true,
        collide_with_objects = false,
        collisionbox = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
        visual = "mesh",
        mesh = "crystal.b3d",
        visual_size = {x = 8, y = 8},
        textures = {"canvas2.png"},
        spritediv = {x = 1, y = 1},
        initial_sprite_basepos = {x = 0, y = 0},
        
    },
    on_step = function(self)
        local n = 0.1
        local pos = self.object:get_yaw()
        if(pos >= 360)then
            self.object:set_yaw(0)
        else end
        
        self.object:set_yaw(pos+n)
        
    end
}
minetest.register_entity("runetest:ent_crys", crys)