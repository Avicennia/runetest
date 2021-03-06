


-- AREA RETRIEVAL FUNCTION
runetest.core.frame.snap = function(orig,diam)   --Given parameters, will retrieve all nodes within a given radius.
    local db = {}
    --Grabs nodenames in a line outward including center for diam number of nodes.
    local function linegrab(orig) 
        local db = {}
        for n = 1, diam, 1 do
            db[n] = minetest.get_node({x=orig.x+n,y=orig.y,z=orig.z}).name
        end
        return db
    end
-- Does this for as many times as diam, in this case, making a shape w/ l and w the same.
for n = 1, diam, 1 do   
    db[n] = linegrab({x=orig.x,y=orig.y,z=orig.z+n})
end
    return db
end


-- NAME-NUM INDEXER FUNCTION
runetest.core.frame.indexer = function(tab) --Converts table strings into numerical values. (used for internal tables here)
    result = {}
    if(tab)then
    for k,v in ipairs(tab)do

        if(string.find(v, "glyph") and string.find(v,"_") and string.sub(v,string.find(v,"_")+1))then

        table.insert(result,tonumber(string.sub(v,string.find(v,"_")+1)))

        elseif(string.find(v, "lemma") and string.find(v,"_") and string.sub(v,string.find(v,"_")+1))then

            table.insert(result,-tonumber(string.sub(v,string.find(v,"_")+1)))

        elseif(v == "air")then

            table.insert(result,0)

        elseif(string.find(v, "reagent") and string.find(v,"_") and string.sub(v,string.find(v,"_")+1))then
        
            table.insert(result,tonumber(string.sub(v,string.find(v,"_")+1)+40))
        elseif(v == "runetest:korbel")then
            table.insert(result, 65)
        end
    end
    return result
else end
end

-- VERIFIER FUNCTION
runetest.core.frame.chylomicron = function(t1,t2) -- compares values within tables, and if equal, assigns true. (used per table within the larger pattern table)
    local result = 0

    for n = 1, #t1, 1 do

        if(t1[n] == t2[n])then

            result = result + 1;

        else end
    end
    if(result == #t1)then

        result = true

    else end

    return result
end

-- TABLE CLEAVAGE FUNCTION
runetest.core.frame.helicase = function(tab) -- Unzips the given table into one table containing all values in sequential order.
    local genepool = {};
    for n = 1, #tab, 1 do

        for nn = 1, #tab[n], 1 do

        table.insert(genepool, tab[n][nn])

        end
    end
    return genepool
end

-- CLEAVED TABLE PACKAGING FUNCTION
runetest.core.frame.synthase = function(tab, unitsof) -- Synthesizes a new table with <unitsof> number of tables of <unitsof> length. table provided must be square.
    
    if(#tab == 9 or #tab == 25)then

        local rna = {}

        for n = 1, unitsof, 1 do
            rna[n] = {}
            for nn = 1, unitsof, 1 do
                rna[n][nn] = tab[nn*n]
            end
        end
    return rna
    else  end
return rna
end 

-- TABLE REARRANGEMENT FUNCTION
runetest.core.frame.mutase = function(tab, rot) --Rotates table values based on degrees provided in <rot>. Currently only 90deg clockwise is supported
    local bpg = {}
    if(tab and rot)then    
        local order = {{1,3},{2,6},{3,9},{4,2},{5,5},{6,8},{8,4},{9,7},{7,1}}
    if(#tab == 9 and rot == 90)then
        for n = 1, #tab, 1 do
            bpg[order[n][2]] = tab[order[n][1]]
        end
    else end
else end
return bpg
end


    

-- MAIN SEARCH FUNCTION
runetest.core.frame.anal = function(tab,index) --Disassemble, compare, determine, line-by-line from given table.
local data = {
    incoming = {name = "unknown",
                pattern = tab,
                size = {#tab, #tab[1]}
    },
    temp = {pattern = runetest.templates.glyphs[index],
            size = {#runetest.templates.glyphs[index],#runetest.templates.glyphs[index][1]}
    },
    outgoing = {name = false, pattern = {}}
}

local assumptions = {eq = false, norm = false, id = false}


    if(data.incoming.size[1] == data.temp.size[1])then --Count Test
        assumptions.eq = true;
        data.outgoing.size = data.temp.size[1] * data.temp.size[2]; -- sets variable to an absolute size for exporting
    else end

   if(assumptions.eq == true and data.incoming.size[2] == data.temp.size[2])then -- Size Test

      assumptions.norm = true;

   else end

    if(assumptions.eq == true and assumptions.norm == true)then --Digitize table

        for n = 1, #tab, 1 do

        table.insert(data.outgoing.pattern,runetest.core.frame.indexer(data.incoming.pattern[n]))

    end
    else end
if(assumptions.norm == true)then -- COnvoluted set of functions to test equality of variables in tables.
    local result = {}
    local chk = 0
    for x = 1, data.incoming.size[1] do -- for each table in each, check if numbers are same
    result[x] = runetest.core.frame.chylomicron(data.temp.pattern[x],runetest.core.frame.indexer(data.incoming.pattern[x])) 
    end
    for n = 1, #result, 1 do -- If they are both equal, then all tables within tables will have true
        if(result[n] == true)then
            chk = chk + 1
        else end
    end
    if(chk == #data.temp.pattern)then
        assumptions.id = true
    else end

else end

local rt = {assumptions.id, data.temp.pattern,data.incoming.size}
return rt

end

-- BRINGING THE FAMILY TOGETHER FUNCTION
-- function utilizes multiple previously defined functions for a given pos. (tag variable is used to indicate which outcome occurred)
runetest.core.frame.discriminate = function(orig,diam)
    local numb = 0
    local tag = false;
    local snapshot = runetest.core.frame.snap(orig,diam)
    local analysis;
    for n = 1, #runetest.templates.glyphs, 1 do
        analysis = runetest.core.frame.anal(snapshot,n)
        minetest.chat_send_all(minetest.serialize(analysis))
        if(analysis[1] == true)then
            analysis = analysis[2]
            numb = n break -- Sloppy fix, remember to change
        else analysis = nil
    end
    if(analysis)then
        minetest.chat_send_all(n)
        if(numb ~= 0 and numb <= 9)then
            tag = "lemma"
            minetest.chat_send_all("numb is "..numb)
            minetest.chat_send_all("Recognized " .. tag .. " pattern | "..numb.. " | !!")
        elseif(n >= 10)then
            tag = "glyph"
            minetest.chat_send_all("Recognized " .. tag .. " pattern | "..numb.. " | !!")
        else minetest.chat_send_all("no suitable glyph pattern was found!") 
        end
        end
    
    end
    return numb -- numb is the index of the glyph that is used, if any.
end



-------!!!!!!!!!
runetest.core.frame.cast = function()
end
-------!!!!!!!!!


runetest.core.frame.poof = function(pos,pdiam) -- Performs a simple particle effect for completed recipes.
    
    local poofarea = minetest.find_nodes_in_area({x=pos.x-pdiam,y=pos.y,z=pos.z-pdiam},{x=pos.x+pdiam,y=pos.y,z=pos.z+pdiam},{"group:rt_chalk"})
    for n = 1, #poofarea, 1 do
        runetest.glyph_activate1(poofarea[n])
        minetest.remove_node(poofarea[n])
    end
    local poofarea = minetest.find_nodes_in_area({x=pos.x-pdiam,y=pos.y,z=pos.z-pdiam},{x=pos.x+pdiam,y=pos.y,z=pos.z+pdiam},{"group:rt_reagent"})
    for n = 1, #poofarea, 1 do
        runetest.glyph_activate1(poofarea[n])
        minetest.remove_node(poofarea[n])
    end
end

runetest.core.frame.place = function(pos,index)
    if(index > 0)then
        if(runetest.templates.glyphs_info[index][1] == 3)then
            if(runetest.templates.glyphs_info[index][4][1] == "place")then
                local tafel = minetest.find_node_near(pos, 3, {"runetest:tafel"},false)

                if(tafel)then
                    local par2 = minetest.get_node(tafel).param2
                    tafel.y = tafel.y + 1;
                    local chambers = runetest.core.tafel.chambers
                    
                    if(par2 == 0 or par2 == 2)then
                       chambers = runetest.core.tafel.chambers_alt
                    else 
                    end
                    local offset = minetest.get_objects_inside_radius(tafel, 2)
                    minetest.chat_send_all(#offset)
                    if(offset and #offset > 0 and #offset < 8)then
                        offset = #offset;
                        
                        minetest.add_entity(vector.add(tafel,chambers[offset]), "runetest:ent_lemma_"..index)
                    elseif(offset == nil or #offset == 0)then
                       
                        minetest.add_entity(vector.add(tafel,chambers[0]), "runetest:ent_lemma_"..index)
                    else 
                    end
                else end
            else end
        elseif(runetest.templates.glyphs_info[index][1] == 5)then
            if(runetest.templates.glyphs_info[index][4][1] == "place")then
                local tafel = minetest.find_node_near(pos, 3, {"runetest:tafel"},false)

                if(tafel)then
                    local par2 = minetest.get_node(tafel).param2
                    tafel.y = tafel.y + 1;
                    local chambers = runetest.core.tafel.chambers
                    
                    if(par2 == 0 or par2 == 2)then
                       chambers = runetest.core.tafel.chambers_alt
                    else 
                    end
                    local offset = minetest.get_objects_inside_radius(tafel, 2)
                    minetest.chat_send_all(#offset)
                    if(offset and #offset > 0 and #offset < 8)then
                        offset = #offset;
                        
                        minetest.add_entity(vector.add(tafel,chambers[offset]), "runetest:ent_glyph_"..index)
                    elseif(offset == nil or #offset == 0)then
                       
                        minetest.add_entity(vector.add(tafel,chambers[0]), "runetest:ent_glyph_"..index)
                    else 
                    end
                else end
            else end
    else minetest.chat_send_all(index.."!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")end
end
end


runetest.core.tafel.lemscan = function(pos)
    space = {x = pos.x, y = pos.y + 1, z = pos.z}string.sub(nom,string.find(nom,"a_")+2)
    local data = {name = minetest.get_node(pos).name,
    objects = minetest.get_objects_inside_radius(space,1),
    se_objects = {num = "", refs = {}}
    };
    if(type(data.objects) == "table" and #data.objects > 0)then
        for k,v in ipairs(data.objects)do
            local nom = v:get_entity_name()
            data.se_objects.num = data.se_objects.num .. 
            data.se_objects.refs[k] = v

        end
    end
    return data.se_objects
end


runetest.core.tafel.makeglyph = function(pos,arr) -- Definitely not a pirate argument (It means array, as in the passed array of numbers or the sequence)
    local ind = 0
    minetest.chat_send_all(arr.num .. " |||||| " .. runetest.templates.recipes[1])
    while(type(ind) == "number")do
        ind = ind + 1;
        if(ind >= #runetest.templates.recipes)then
            ind = nil
        else end

            if(arr.num == runetest.templates.recipes[ind])then
       
            minetest.chat_send_all(ind)
            local tafel = minetest.find_node_near(pos, 2, {"runetest:tafel"},false) 
                if(tafel)then

            for k,v in pairs(arr.refs)do
                v:remove()
            end
            
                minetest.add_entity(vector.add(tafel,runetest.core.tafel.chambers[0]), "runetest:ent_glyph_"..ind)
            else end
            ind = nil
            else end
    end
end


--  --  --  --  WILL -- --  --  --  
runetest.core.will.change = function(user)  -- Will upwardly increment the will state of the player.
    local nam = user:get_player_name() or "nemo"
    local num = 0 and runetest.cache.users[nam]
    if(num >= 2)then
        num = 0;
    elseif(num == nil)then
        num = 0;
    else num = num + 1;
    end
    runetest.cache.users.nam = num;
end

runetest.core.will.register = function(user)
    runetest.cache.users[user:get_player_name()] = "|04abxg9|"
    
    return
end

runetest.core.will.rectify = function(user)
end

runetest.core.will.alter = function(user, value, loc) -- Inserts value at location within the runetest cache playerstring for user.
    local ustring = runetest.cache.users[user:get_player_name()]
    local s1,s2,s3 = "undefined";
    if(type(value) == "number")then
        if(loc == 2 or loc == 3 or loc == 8)then
            s1,s2 = ustring:sub(1, loc - 1),ustring:sub(loc + 1);
            s1 = s1 .. value
            s3 = s1 .. s2
        else end
    elseif(loc > 2 and loc < 8 and type(value) == "string")then
            s1,s2 = ustring:sub(1, loc - 1),ustring:sub(loc + 1);
            s1 = s1 .. value
            s3 = s1 .. s2 
    else end

    return s3 or 1
end


runetest.core.will.endp = function(user)
    minetest.chat_send_all(minetest.serialize(user:get_look_dir()))
end