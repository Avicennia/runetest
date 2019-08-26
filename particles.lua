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
    runetest.sigil_offering_active = function(pos)
        minetest.add_particlespawner({
            amount = 60,
            time = 0,
        --  ^ If time is 0 has infinite lifespan and spawns the amount on a
        --  ^ per-second basis.
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
            texture = "passive_beam_r90.png",
        --  ^ Uses texture (string)
            playername = "singleplayer",
        --  ^ Playername is optional, if specified spawns particle only on the
        --  ^ player's client
        --  ^ optional, specifies how to animate the particle texture
            glow = 2
        --  ^ optional, specify particle self-luminescence in darkness
        })
        end
        runetest.sigil_offering_active_2 = function(pos)
            minetest.add_particlespawner({
                amount = 60,
                time = 6,
            --  ^ If time is 0 has infinite lifespan and spawns the amount on a
            --  ^ per-second basis.
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
            runetest.sigil_offering_active_3 = function(pos)
                minetest.add_particlespawner({
                    amount = 15,
                    time = 0,
                --  ^ If time is 0 has infinite lifespan and spawns the amount on a
                --  ^ per-second basis.
                    minpos = {x=pos.x-1, y=pos.y+3, z=pos.z-1},
                    maxpos = {x=pos.x+1, y=pos.y+3, z=pos.z+1},
                    minvel = {x=0, y=-3, z=0},
                    maxvel = {x=0, y=-5, z=0},
                    minacc = {x=0, y=-0.5, z=0},
                    maxacc = {x=0, y=0, z=0},
                    minexptime = 1,
                    maxexptime = 2,
                    minsize = 4,
                    maxsize = 6,
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
                    texture = "passive_darksword.png",
                --  ^ Uses texture (string)
                    playername = "singleplayer",
                --  ^ Playername is optional, if specified spawns particle only on the
                --  ^ player's client
                --  ^ optional, specifies how to animate the particle texture
                    glow = 2
                --  ^ optional, specify particle self-luminescence in darkness
                })
                end