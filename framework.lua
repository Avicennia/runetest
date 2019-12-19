


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

runetest.frame.anal = function(tab) --Disassemble, compare, determine, line-by-line from given table.
    local chy = {}
for pn = 1, #tab, 1 do
    for n = 1, #tab, 1 do
        table.insert(chy,tab[pn][n])
    end
end
return chy
end