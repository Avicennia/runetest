--
--
--
runetest = {}
--  --  --  --  --  --  --  PARTICLE EFFECTS -- --  --  --  --  --  --  

--  --  --  --  --  --  --  --  --  --  --  --  --  --  

--  --  --  --  --  --  -- RUNE-AREA DESIGNATION AND RECOGNITION --  --  --  --  --  --  --  
runetest.find_neighborhood = function(pos,scan_type)
    local pos = pos
    local scan_l = 0 -- distance from origin point in +-x
    local scan_w = 0 -- distance from origin point in +-z
    local scan_h = 1
    local returnpak = {}
    --"Scan type" -- Indicates area to be scanned by string label, eg.<"hor_x", "hor_z", cube, "hor_xL", "hor_zL", "cubeL">
    if(scan_type == "hor_x") then
        scan_l = 3
        scan_w = 3
        local neigh = {}
        local names = {}
        local neighbor_good = "runetest:glyph_n"
        local names_k = {}
        local ignore_n = {}
        neigh[1]= minetest.get_node({ x = pos.x + 1, y = pos.y , z = pos.z})
        neigh[2]= minetest.get_node({ x = pos.x + 1, y = pos.y, z = pos.z - 1})
        neigh[3]= minetest.get_node({ x = pos.x ,y = pos.y, z = pos.z - 1})
        neigh[4]= minetest.get_node({ x = pos.x - 1, y = pos.y, z = pos.z - 1})
        neigh[5]= minetest.get_node({ x = pos.x - 1, y = pos.y, z = pos.z})
        neigh[6]= minetest.get_node({ x = pos.x - 1, y = pos.y, z = pos.z + 1})
        neigh[7]= minetest.get_node({ x = pos.x ,y = pos.y, z = pos.z + 1})
        neigh[8]= minetest.get_node({ x = pos.x + 1, y = pos.y, z = pos.z + 1})
        for k,v in ipairs(neigh) do
            if(v.name == neighbor_good) then
            names[k] = v.name
            names_k[k] = k
        elseif(v.name ~= neighbor_good) then
                ignore_n[k] = v.name
        end
        
        end
       returnpak = {names,names_k,ignore_n,scan_type}
        return returnpak
    elseif(scan_type == "hor_z") then
        scan_l = 3
        scan_w = 3
    
    elseif(scan_type == "cube") then 
        scan_l = 3
        scan_w = 3
        scan_h = 3
    
    elseif(scan_type == "hor_xL") then
        scan_l = 16
        scan_w = 16
    elseif(scan_type =="hor_zL") then
        scan_l = 3
        scan_w = 3
    elseif(scan_type == "cubeL") then
        scan_l = 16
        scan_w = 16
        scan_h = 8
    elseif(scan_type == "line") then
        scan_l = und
        scan_w = 1
    else
        minetest.chat_send_all("Failed: unsuitable shape")    
    end
    return returnpak
end

--  --  --  --  SELF SEARCH AND DESIGNATION
runetest.sleuth = function(pos,scan_type,names_k,names,ignore_n)
    local scan_type = "hor_x"
    local names = names
    
    if(scan_type == "hor_x") then
        local numtab = {}
        local num = 0
        for k in pairs(names_k) do
            num = num + 1
        end
        if(num >= 8) then
           runetest.sigil_create_offeringcircle(pos,num)
        else minetest.chat_send_all("Number is Less than 8. ".."Number is "..num)
        end
    end
    if(scan_type == "line") then
       local origin = {}
       local register = {}
       local pathnode = "runetest:glyph_n"
       local pos = pos 
    end

end



--  --  --  --  --  --  --  ACTION --   --  --  --  --  --  --  
runetest.sigil_create_offeringcircle = function(pos,num_req)
    minetest.chat_send_all("Num is greater than 8. ".."Num is equal to "..num_req)
    minetest.set_node({x=pos.x+1,y=pos.y,z=pos.z},{name="runetest:offering_sigil_vertex_r90"})
    minetest.set_node({x=pos.x+1,y=pos.y,z=pos.z-1},{name="runetest:offering_sigil_corner_r180"})
    minetest.set_node({x=pos.x,y=pos.y,z=pos.z-1},{name="runetest:offering_sigil_vertex_r180"})
    minetest.set_node({x=pos.x-1,y=pos.y,z=pos.z-1},{name="runetest:offering_sigil_corner_r360"})
    minetest.set_node({x=pos.x-1,y=pos.y,z=pos.z},{name="runetest:offering_sigil_vertex_r360"})
    minetest.set_node({x=pos.x-1,y=pos.y,z=pos.z+1},{name="runetest:offering_sigil_corner"})
    minetest.set_node({x=pos.x,y=pos.y,z=pos.z+1},{name="runetest:offering_sigil_vertex"})
    minetest.set_node({x=pos.x+1,y=pos.y,z=pos.z+1},{name="runetest:offering_sigil_corner_r90"})
    --runetest.sigil_offering_active(pos)
    runetest.sigil_offering_active(pos)
end