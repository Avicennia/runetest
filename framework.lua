



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

runetest.frame.indexer = function(tab) --Converts table strings into numerical values
    result = {}
    if(tab)then
    for k,v in ipairs(tab)do
        if(string.find(v,"_") and string.sub(v,string.find(v,"_")+1))then
        table.insert(result,tonumber(string.sub(v,string.find(v,"_")+1)))
        else table.insert(result,false)
        end
    end
    return result
else 
    return end
end

runetest.frame.chylomicron = function(t1,t2) -- compares values within tables, and if equal, assigns true
    local result = 0
    for n = 1, #t1, 1 do
        if(t1[n] == t2[n])then
            result = result + 1;
        else end
    end
    if(result == #t1)then
        result = true
    else end
    minetest.chat_send_all("CHYLO SAYS "..minetest.serialize(result))
    return result
end


runetest.frame.anal = function(tab,index) --Disassemble, compare, determine, line-by-line from given table.
local data = {
    incoming = {name = "unknown",
                pattern = tab,
                size = {#tab, #tab[1]}
    },
    temp = {name = runetest.templates.glyphs_names[index],
            pattern = runetest.templates.glyphs[index],
            size = {#runetest.templates.glyphs[index],#runetest.templates.glyphs[index][1]}
    },
    outgoing = {name = false, pattern = {}}
}

local assumptions = {eq = false, norm = false, id = false}

--COUNT TEST
if(data.incoming.size[1] == data.temp.size[1])then
    assumptions.eq = true;
else 
    minetest.chat_send_all(data.incoming.size[1])
    return end

if(assumptions.eq == true and data.incoming.size[2] == data.temp.size[2])then
    assumptions.norm = true;
else minetest.chat_send_all("SIZE ISSUE")return end

if(assumptions.eq == true and assumptions.norm == true)then --DIgitize table
    for n = 1, #tab, 1 do
    table.insert(data.outgoing.pattern,runetest.frame.indexer(data.incoming.pattern[n]))
    minetest.chat_send_all("WHAT?")
end
else minetest.chat_send_all("COMPARATOR ISSUE")end
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
   

minetest.chat_send_all(minetest.serialize(data.incoming.pattern).." | "..minetest.serialize(data.temp.pattern).." | "..minetest.serialize(data.outgoing.pattern))
return assumptions.id
end



--[[            \/    NEEDS INDIVIDUAL TEMPLATE DETERMINATION
if(idb[1] == true)then -- CREATE table using nodename-number index
    local numchy = {};
    for _,v in ipairs(chy) do
        string.len(v)
        minetest.chat_send_all(string.sub(v,string.find(v,"_"),string.len(v)))
    end
else
end

return idb]]

