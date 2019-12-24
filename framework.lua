


-- CENSUS OFFICER FUNCTION
runetest.frame.snap = function(orig,diam)   --Given parameters, will retrieve all nodes within a given radius.
    local db = {}
    --Grabs nodenames in a line outward including center for diam number of nodes.
    local function linegrab(orig) 
        local db = {}
        for n = 1, diam, 1 do
            db[n] = minetest.get_node({x=orig.x+n,y=orig.y,z=orig.z}).name
        end
        return db
    end
--Does this for as many times as diam, in this case, making a shape w/ l and w the same.
for n = 1, diam, 1 do   
    db[n] = linegrab({x=orig.x,y=orig.y,z=orig.z+n})
end
    return db
end

-- NAME-NUM INDEXER FUNCTION
runetest.frame.indexer = function(tab) --Converts table strings into numerical values. (used for internal tables here)
    result = {}
    if(tab)then
    for k,v in ipairs(tab)do
        if(string.find(v, "glyph") and string.find(v,"_") and string.sub(v,string.find(v,"_")+1))then
        table.insert(result,tonumber(string.sub(v,string.find(v,"_")+1)))
        elseif(v == "air")then
            table.insert(result,0)
        elseif(string.find(v, "reagent") and string.find(v,"_") and string.sub(v,string.find(v,"_")+1))then
        table.insert(result,tonumber(string.sub(v,string.find(v,"_")+1)+40))
        end
    end
    return result
else end
end

-- VERIFIER FUNCTION
runetest.frame.chylomicron = function(t1,t2) -- compares values within tables, and if equal, assigns true. (used per table within the larger pattern table)
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
runetest.frame.helicase = function(tab)
    local genepool = {};
    for n = 1, #tab, 1 do
        for nn = 1, #tab[n], 1 do
        table.insert(genepool, tab[n][nn])
        end
    end
    return genepool
end

-- CLEAVED TABLE PACKAGING FUNCTION
runetest.frame.synthase = function(tab, unitsof)
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
runetest.frame.mutase = function(tab, rot) --Rotates table values
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
runetest.frame.anal = function(tab,index) --Disassemble, compare, determine, line-by-line from given table.
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
else end

if(assumptions.eq == true and data.incoming.size[2] == data.temp.size[2])then
    assumptions.norm = true;
else end

if(assumptions.eq == true and assumptions.norm == true)then --DIgitize table
    for n = 1, #tab, 1 do
    table.insert(data.outgoing.pattern,runetest.frame.indexer(data.incoming.pattern[n]))
end
else end
if(assumptions.norm == true)then -- COnvoluted set of functions to test equality of variables in tables.
    local result = {}
    local chk = 0
    for x = 1, data.incoming.size[1] do -- for each table in each, check if numbers are same
    result[x] = runetest.frame.chylomicron(data.temp.pattern[x],runetest.frame.indexer(data.incoming.pattern[x])) 
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

local rt = {assumptions.id, data.outgoing.pattern}
--minetest.chat_send_all(minetest.serialize(data.incoming.pattern).." | "..minetest.serialize(data.temp.pattern).." | "..minetest.serialize(data.outgoing.pattern))
--minetest.chat_send_all(minetest.serialize(runetest.templates.glyphs[index]).." [|] "..runetest.templates.glyphs_info[index][1])
return rt

end

--BRINGING THE FAMILY TOGETHER FUNCTION
runetest.frame.discriminate = function(orig,diam)
    local numb = 0
    local tag = false;
    local snapshot = runetest.frame.snap(orig,diam)
    for n = 1, #runetest.templates.glyphs, 1 do
    local analysis = runetest.frame.anal(snapshot,n)
    if(analysis[1] == true)then
        if(n <= 9)then
        runetest.frame.poof(orig,diam + 1)
			minetest.sound_play({name = "sfx_bell", gain = 1.0, pitch = 1.0},{gain = 1.0, fade = 0.0, pitch = 1.0})
			runetest.frame.place({x=orig.x,y=orig.y+1,z=orig.z},n)
            numb = n;
            tag = "lemma"
            minetest.chat_send_all("Recognized " .. tag .. " pattern | "..n.. " | !!")
        elseif(n >= 10)then
            runetest.frame.poof(orig,diam + 1)
			minetest.sound_play({name = "sfx_bell", gain = 1.0, pitch = 1.0},{gain = 1.0, fade = 0.0, pitch = 1.0})
			runetest.frame.place({x=orig.x,y=orig.y+1,z=orig.z},n)
            numb = n;
            tag = "glyph"
            minetest.chat_send_all("Recognized " .. tag .. " pattern | "..n.. " | !!")
        else minetest.chat_send_all("no suitable glyph pattern was found!") 
        end
        end
    
    end
    return numb
end







-------!!!!!!!!!
runetest.frame.cast = function()
end
-------!!!!!!!!!


runetest.frame.poof = function(pos,diam)
    pdiam = diam-1;
    local poofarea = minetest.find_nodes_in_area(pos,{x=pos.x+pdiam,y=pos.y,z=pos.z+pdiam},{"group:rt_chalk"})
    for n = 1, #poofarea, 1 do
        runetest.glyph_activate1(poofarea[n])
        minetest.remove_node(poofarea[n])
    end
    local poofarea = minetest.find_nodes_in_area(pos,{x=pos.x+pdiam,y=pos.y,z=pos.z+pdiam},{"group:rt_reagent"})
    for n = 1, #poofarea, 1 do
        runetest.glyph_activate1(poofarea[n])
        minetest.remove_node(poofarea[n])
    end
end

runetest.frame.place = function(pos,index)
    if(runetest.templates.glyphs_info[index][1] <= 3)then
    if(runetest.templates.glyphs_info[index][4][1] == "place")then
        minetest.add_entity(pos, "runetest:ent_lemma_"..index)
    else end
elseif(runetest.templates.glyphs_info[index][1] >= 4)then
    if(runetest.templates.glyphs_info[index][4][1] == "place")then
        minetest.add_entity(pos, "runetest:ent_glyph_"..index-9)
    else end
end
end



