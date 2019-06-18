--
--
--
runetest = {}
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
runetest.find_inscrip = function(pos)
   local node_req = 0
   local pos_corners = {{x=pos.x+1,y=pos.y,z=pos.z+1},{x=pos.x-1,y=pos.y,z=pos.z-1},{x=pos.x+1,y=pos.y,z=pos.z-1},{x=pos.x-1,y=pos.y,z=pos.z+1}}
   for k,v in pairs(pos_corners) do
    minetest.get_node(v)
    if(minetest.get_node(v).name == "runetest:glyph_n") then
        pos_4 = minetest.find_nodes_in_area(pos,v,{name = "runetest:glyph_n"})
        for v in ipairs(pos_4) do
            node_req = node_req + 1
            if(node_req == 4) then
                minetest.set_node(pos, {name = "default:dirt"})
                minetest.chat_send_all(minetest.serialize(pos_4))
                if(minetest.get_node(pos_4[4]).name == "default:dirt" ) then
                minetest.remove_node(pos_4[1])
                minetest.remove_node(pos_4[2])
                minetest.remove_node(pos_4[3])
                
                end
            end
        end

    end

    end

    
    --local locs = minetest.find_nodes_in_area(pos1,pos2, {name="runetest:glyph_n"})
   -- local count = 0
   -- for _ in pairs(locs) do count = count + 1
   --     end
   -- minetest.chat_send_all(minetest.serialize(locs))
   -- minetest.chat_send_all(count)
   -- return count
end