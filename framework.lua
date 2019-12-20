



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



runetest.frame.anal = function(tab,ind) --Disassemble, compare, determine, line-by-line from given table.
    local chy = {};
    local dedu = {count = 0, names = {}, propns = {}};
    local db = "";
    local idb = {};
for pn = 1, #tab, 1 do  --Disassemble tab into an ordered set of names and store it in chy.
    for n = 1, #tab, 1 do
        table.insert(chy,tab[pn][n])
    end
end

if(#chy == runetest.templates.glyphs[ind].data.diam*runetest.templates.glyphs[ind].data.diam)then --COUNT test
    dedu.count = true;
    db = db .. " | Count Test: PASS"
    table.insert(idb,true);
else dedu.count = false;
    db = db .. " | Count Test: FAIL"
    table.insert(idb,false);
end

if(dedu.count == true)then --NAME test
    local yea = 0
    local nay = 0
    for _,v in pairs(runetest.templates.glyphs[ind].data.nodes.names) do
        for n = 1, #chy, 1 do
            if(v == chy[n])then
                yea = yea + 1;
            else nay = nay + 1;
            end
        end
    end
   if(yea == #chy)then
    db = db .. " | Name Test: PASS"
    table.insert(idb,true);
   else db = db .. " | Name Test: FAIL"
    table.insert(idb,false);
   end
end


--            \/    NEEDS INDIVIDUAL TEMPLATE DETERMINATION
if(idb[1] and idb[2] == true)then -- CREATE table using nodename-number index
    local numchy = {};
    for _,v in ipairs(chy) do
        string.len(v)
        minetest.chat_send_all(string.sub(v,string.find(v,"_"),string.len(v)))
    end
else
end

return idb

end