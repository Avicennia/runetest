local thismod = minetest.get_current_modname()
local modpath = minetest.get_modpath(thismod)

runetest = {
    insc = { lemmas = 9,glyphs = 40,runes = 21},
    sizes = {3,5}, -- Sizes of selection areas used in the mod.

    particle = {}, -- Functions pertaining to the use and carriage of particles and particlespawners in runetest.

    util = {
        ent_jitter = {{x=0.07,y=0,z=0.07},{x=-0.07,y=0,z=-0.07}},
        ticker_ticker = 1},

    core = {
        frame = {}, -- Core functions pertaining to the recognition, preparation and execution of glyphs and runes.
        tafel = { chambers = {[0] = {x = 0, y = 0.25 , z = 0},{z = -0.25, y = 0, x = 0},{z = -0.45, y = 0.25 , x = 0},
                            {z = -0.25 , y = 0.50 , x = 0},{z = 0.25, y = 0.50, x = 0},{z = 0.45, y = 0.25, x = 0},{z = 0.25, y = 0.0 , x = 0},}}, -- Core functions pertaining to the usage of the tafel.
        res = {}, -- Core functions pertaining to the resonance feature.
        cast = {},  -- Core functions pertaining to the casting of runes, and their related execution calls.
        will = { states = {0,1,2}} -- Core functions pertaining to the WILL system.
    },
    cache = { users = {}, userstates = {}}
}





dofile(modpath.."/framework.lua")
dofile(modpath.."/nodereg.lua")
dofile(modpath.."/itemreg.lua")
dofile(modpath.."/support.lua")
dofile(modpath.."/particles.lua")