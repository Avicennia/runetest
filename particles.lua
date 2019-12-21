
--  PASSIVE BEAM

runetest.rune_passive_beam = function(pos)
    minetest.add_particlespawner({
        amount = 6,
        time = 1,
    --  ^ If time is 0 has infinite lifespan and spawns the amount on a
    --  ^ per-second basis.
        minpos = {x=pos.x-0.05, y=pos.y-0.3, z=pos.z-0.05},
        maxpos = {x=pos.x-0.05, y=pos.y, z=pos.z-0.05},
        minvel = {x=0, y=0, z=0},
        maxvel = {x=0, y=0.08, z=0},
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

--  SIGIL EFFECTS
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

--  GLYPH EFFECTS

runetest.glyph_active = function(pos)
    minetest.add_particlespawner({
        amount = 8,
        time = 2,

        minpos = {x=pos.x-0.3, y=pos.y-0.3, z=pos.z-0.3},
        maxpos = {x=pos.x+0.3, y=pos.y-0.3, z=pos.z+0.3},
        minvel = {x=0.1, y=0.2, z=0.1},
        maxvel = {x=0.2, y=0.23, z=0.2},
        minacc = {x=0, y=0, z=0},
        maxacc = {x=0, y=0, z=0},
        minexptime = 1,
        maxexptime = 1,
        minsize = 0.3,
        maxsize = 0.7,

        collisiondetection = false,
        collision_removal = false,
        attached = ObjectRef,
        vertical = true,
        texture = "twinkleflame.png",
        glow = 2
    })
    end

-- Activate
runetest.glyph_activate1 = function(pos)
    minetest.add_particlespawner({
        amount = 4,
        time = 1,

        minpos = {x=pos.x-0.3, y=pos.y-0.3, z=pos.z-0.3},
        maxpos = {x=pos.x+0.3, y=pos.y-0.3, z=pos.z+0.3},
        minvel = {x=0.9, y=3.9, z=0.9},
        maxvel = {x=1.2, y=5.83, z=1.2},
        minacc = {x=0, y=0, z=0},
        maxacc = {x=0.5, y=0.5, z=0.5},
        minexptime = 0.1,
        maxexptime = 0.2,
        minsize = 0.3,
        maxsize = 0.7,

        collisiondetection = false,
        collision_removal = false,
        attached = ObjectRef,
        vertical = true,
        texture = "twinkleflame.png",
        glow = 2
    })

    minetest.add_particlespawner({
        amount = 8,
        time = 1,

        minpos = {x=pos.x-0.3, y=pos.y-0.3, z=pos.z-0.3},
        maxpos = {x=pos.x+0.3, y=pos.y-0.3, z=pos.z+0.3},
        minvel = {x=0.9, y=3.9, z=0.9},
        maxvel = {x=-1.6, y=5.83, z=-1.6},
        minacc = {x=0, y=0, z=0},
        maxacc = {x=0.5, y=0.5, z=0.5},
        minexptime = 0.1,
        maxexptime = 0.2,
        minsize = 0.3,
        maxsize = 0.7,

        collisiondetection = false,
        collision_removal = false,
        attached = ObjectRef,
        vertical = true,
        texture = "twinkleflame.png",
        glow = 2
    })
    minetest.add_particlespawner({
        amount = 8,
        time = 1,

        minpos = {x=pos.x-0.3, y=pos.y-0.3, z=pos.z-0.3},
        maxpos = {x=pos.x+0.3, y=pos.y-0.3, z=pos.z+0.3},
        minvel = {x=0.9, y=3.9, z=0.9},
        maxvel = {x=1.6, y=5.83, z=1.6},
        minacc = {x=0, y=0, z=0},
        maxacc = {x=0.5, y=0.5, z=0.5},
        minexptime = 0.1,
        maxexptime = 0.2,
        minsize = 0.3,
        maxsize = 0.7,

        collisiondetection = false,
        collision_removal = false,
        attached = ObjectRef,
        vertical = true,
        texture = "twinkleflame.png",
        glow = 2
    })
end
runetest.particle.detline = function(pos, des)
    minetest.add_particlespawner({
        amount = 14,
        time = 2,

        minpos = {x=pos.x, y=pos.y, z=pos.z},
        maxpos = {x=pos.x, y=pos.y, z=pos.z},
        minvel = {x=0, y=1, z=0},
        maxvel = {x=des.x-pos.x, y=des.y-pos.y, z=des.z-pos.z},
        minacc = {x=0, y=0, z=0},
        maxacc = {x=0, y=0, z=0},
        minexptime = 0.9,
        maxexptime = 1.8,
        minsize = 0.3,
        maxsize = 0.7,

        collisiondetection = false,
        collision_removal = false,
        attached = ObjectRef,
        vertical = true,
        texture = "twinkleflame.png",
        glow = 2
    })
end