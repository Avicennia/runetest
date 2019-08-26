runecheck = {}

runecheck.ringcheck = function(pos,diameter,shape,key_node)
    local nodetab = {}
    if(shape == "square") then 
        --minetest.bulk_set_node(runecheck.spiral_add(pos),{name = "runetest:reagent_humblesalt"})
        for k,v in ipairs(runecheck.spiral_add(pos)) do
        table.insert(nodetab,minetest.get_node(v).name)
            end
        
    minetest.chat_send_all("table = " .. minetest.serialize(nodetab))
    
    elseif(shape == "circle") then 

    else return "Unrecognized or missing shape!"
    end
end

runecheck.coord_add = function(c1,c2)
    c3 = {}
    c3.x = c1.x + c2.x
    c3.y = c1.y + c2.y
    c3.z = c1.z + c2.z
    return c3
end
runecheck.spiral_add = function(c1)
    c_spiral = {}
    c2 = {x=0,y=0,z=-1}
    table.insert(c_spiral,runecheck.coord_add(c1,c2))
    c2 = {x=0,y=0,z=1}
    table.insert(c_spiral,runecheck.coord_add(c1,c2))
    c2 = {x=-1,y=0,z=0}
    table.insert(c_spiral,runecheck.coord_add(c1,c2))
    c2 = {x=-1,y=0,z=1}
    table.insert(c_spiral,runecheck.coord_add(c1,c2))
    c2 = {x=1,y=0,z=0}
    table.insert(c_spiral,runecheck.coord_add(c1,c2))
    c2 = {x=-1,y=0,z=-1}
    table.insert(c_spiral,runecheck.coord_add(c1,c2))
    c2 = {x=1,y=0,z=-1}
    table.insert(c_spiral,runecheck.coord_add(c1,c2))
    c2 = {x=1,y=0,z=1}
    table.insert(c_spiral,runecheck.coord_add(c1,c2))
    --minetest.chat_send_all(minetest.serialize(c_spiral))
    --for k,v in pairs(c_spiral)do
      --  minetest.chat_send_all(minetest.pos_to_string(v))
    --end
    return c_spiral
end
