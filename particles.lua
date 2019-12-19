
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

        collisiondetection = false,
        collision_removal = false,

        attached = ObjectRef,

        vertical = true,
        texture = "passive_beam.png",
        playername = "singleplayer",
        glow = 2
    })
    end
runetest.sigil_offering_active = function(pos)
    minetest.add_particlespawner({
        amount = 60,
        time = 0,

        minpos = {x=pos.x-0.05, y=pos.y, z=pos.z-0.05},
        maxpos = {x=pos.x-0.05, y=pos.y, z=pos.z-0.05},
        minvel = {x=0, y=0, z=0},
        maxvel = {x=0, y=0, z=0},
        minacc = {x=0, y=0, z=0},
        maxacc = {x=0, y=0, z=0},
        minexptime = 1,
        maxexptime = 1,
        minsize = 2,
        maxsize = 4,

        collisiondetection = false,
        collision_removal = false,
        attached = ObjectRef,
        vertical = true,
        texture = "passive_beam_r90.png",
        playername = "singleplayer",
        glow = 2
    })
    end
    runetest.glyph_active = function(pos)
        minetest.add_particlespawner({
            amount = 6,
            time = 2,
    
            minpos = {x=pos.x-0.3, y=pos.y-0.3, z=pos.z-0.3},
            maxpos = {x=pos.x+0.3, y=pos.y-0.3, z=pos.z+0.3},
            minvel = {x=0.1, y=0.4, z=0.1},
            maxvel = {x=0.2, y=0.4, z=0.2},
            minacc = {x=0, y=0, z=0},
            maxacc = {x=0, y=0, z=0},
            minexptime = 1,
            maxexptime = 3,
            minsize = 0.5,
            maxsize = 0.2,
    
            collisiondetection = false,
            collision_removal = false,
            attached = ObjectRef,
            vertical = true,
            texture = "tex_salt.png",
            glow = 2
        })
        end