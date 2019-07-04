--
--
--
runetest = {}
--  --  --  --  --  --  --  PARTICLE EFFECTS -- --  --  --  --  --  --  
runetest.rune_passive_beam = function(pos)
minetest.add_particlespawner({
    amount = 6,
    time = 0,
--  ^ If time is 0 has infinite lifespan and spawns the amount on a
--  ^ per-second basis.
    minpos = {x=pos.x-0.05, y=pos.y, z=pos.z-0.05},
    maxpos = {x=pos.x-0.05, y=pos.y, z=pos.z-0.05},
    minvel = {x=0, y=0, z=0},
    maxvel = {x=0, y=0.1, z=0},
    minacc = {x=0, y=0, z=0},
    maxacc = {x=0, y=0, z=0},
    minexptime = 1,
    maxexptime = 2,
    minsize = 4,
    maxsize = 4,
--  ^ The particle's properties are random values in between the bounds:
--  ^ minpos/maxpos, minvel/maxvel (velocity),
--  ^ minacc/maxacc (acceleration), minsize/maxsize,
--  ^ minexptime/maxexptime (expirationtime).
    collisiondetection = false,
--  ^ collisiondetection: if true uses collision detection
    collision_removal = false,
--  ^ collision_removal: if true then particle is removed when it collides,
--  ^ requires collisiondetection = true to have any effect
    attached = ObjectRef,
--  ^ attached: if defined, particle positions, velocities and
--  ^ accelerations are relative to this object's position and yaw.
    vertical = true,
--  ^ vertical: if true faces player using y axis only
    texture = "passive_beam.png",
--  ^ Uses texture (string)
    playername = "singleplayer",
--  ^ Playername is optional, if specified spawns particle only on the
--  ^ player's client
--  ^ optional, specifies how to animate the particle texture
    glow = 2
--  ^ optional, specify particle self-luminescence in darkness
})
end
--  --  --  --  --  --  --  --  --  --  --  --  --  --  

--  --  --  --  --  --  -- RUNE RECOGNITION --  --  --  --  --  --  --  
runetest.find_neighborhood = function(pos,scan_type)
    local pos = pos
    local scan_origin = pos
    local scan_l = 0 -- distance from origin point in +-x
    local scan_w = 0 -- distance from origin point in +-z
    local scan_h = 1
    --"Scan type" -- Indicates area to be scanned by string label, eg.<"hor_x", "hor_z", cube, "hor_xL", "hor_zL", "cubeL">
    if(scan_type == "hor_x") then
        scan_l = 3
        scan_w = 3
        local neigh = {}
        local names = {}
        local names_k = {}
        local ignore_n = {}
        neigh[1]=minetest.get_node({x=pos.x+1,y=pos.y,z=pos.z})
        neigh[2]=minetest.get_node({x=pos.x+1,y=pos.y,z=pos.z-1})
        neigh[3]=minetest.get_node({x=pos.x,y=pos.y,z=pos.z-1})
        neigh[4]=minetest.get_node({x=pos.x-1,y=pos.y,z=pos.z-1})
        neigh[5]=minetest.get_node({x=pos.x-1,y=pos.y,z=pos.z})
        neigh[6]=minetest.get_node({x=pos.x-1,y=pos.y,z=pos.z+1})
        neigh[7]=minetest.get_node({x=pos.x,y=pos.y,z=pos.z+1})
        neigh[8]=minetest.get_node({x=pos.x+1,y=pos.y,z=pos.z+1})
        for k,v in ipairs(neigh) do
            if(v.name == "runetest:glyph_n") then
            names[k] = v.name
            names_k[k] = k
        elseif(v.name ~= "runetest:glyph_n") then
                ignore_n[k] = v.name
        end
        
        end
       
        return names,names_k,ignore_n,scan_type
    elseif(scan_type == "hor_z") then
        scan_l = 3
        scan_w = 3
    --    minetest.chat_send_all("Pass1a")
    elseif(scan_type == "cube") then 
        scan_l = 3
        scan_w = 3
        scan_h = 3
    --    minetest.chat_send_all("Pass2")
    elseif(scan_type == "hor_xL") then
        scan_l = 16
        scan_w = 16
    --    minetest.chat_send_all("Pass3")
    elseif(scan_type =="hor_zL") then
        scan_l = 3
        scan_w = 3
    --    minetest.chat_send_all("Pass1b")
    elseif(scan_type == "cubeL") then
        scan_l = 16
        scan_w = 16
        scan_h = 8
    --    minetest.chat_send_all("Pass4")
    elseif(scan_type ~= "hor_x" or "hor_z" or "cube" or "hor_xL" or "hor_zL" or "cubeL") then
        minetest.chat_send_all("Failed: unsuitable shape")
    
    end
    return scan_type,names_k,names,ignore_n,pos
end

runetest.sleuth = function(pos,scan_type,names_k,names,ignore_n)
    local scan_type = "hor_x"
    local names = names
    
    if(scan_type == "hor_x") then
        local numtab = {}
        local num = 0
        for k in pairs(names_k) do
            num = num + 1
        end
        
        minetest.chat_send_all("***********************************")
        minetest.chat_send_all(minetest.serialize(names_k))
        minetest.chat_send_all(num)
        minetest.chat_send_all("***********************************")
        if(num >= 8) then
            minetest.chat_send_all("Num is greater than 8. ".."Num is equal to "..num)
            minetest.set_node({x=pos.x+1,y=pos.y,z=pos.z},{name="runetest:offering_sigil_vertex_r90"})
            minetest.set_node({x=pos.x+1,y=pos.y,z=pos.z-1},{name="runetest:offering_sigil_corner_r180"})
            minetest.set_node({x=pos.x,y=pos.y,z=pos.z-1},{name="runetest:offering_sigil_vertex_r180"})
            minetest.set_node({x=pos.x-1,y=pos.y,z=pos.z-1},{name="runetest:offering_sigil_corner_r360"})
            minetest.set_node({x=pos.x-1,y=pos.y,z=pos.z},{name="runetest:offering_sigil_vertex_r360"})
            minetest.set_node({x=pos.x-1,y=pos.y,z=pos.z+1},{name="runetest:offering_sigil_corner"})
            minetest.set_node({x=pos.x,y=pos.y,z=pos.z+1},{name="runetest:offering_sigil_vertex"})
            minetest.set_node({x=pos.x+1,y=pos.y,z=pos.z+1},{name="runetest:offering_sigil_corner_r90"})
        else minetest.chat_send_all("Number is Less than 8. ".."Number is "..num)
        end
    end
end
runetest.set_stuff = function(pos,node)
    minetest.set_node(pos,node)
end


runetest.find_inscrip_3x3 = function(pos,req_node)
   local neighbors = runetest.find_neighbors(pos,"slice_hor","runetest:glyph_c")

end