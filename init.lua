local thismod = minetest.get_current_modname()
local modpath = minetest.get_modpath(thismod)

runetest = {
    insc = { lemmas = 9,glyphs = 40,runes = 21},
    sizes = {3,5}, -- Sizes of selection areas used in the mod.
    particle = {},
    util = {ent_jitter = {{x=0.07,y=0,z=0.07},{x=-0.07,y=0,z=-0.07}},ticker_ticker = 1},
    core = {frame = {},tafel = {},res = {}, cast = {}},
}





dofile(modpath.."/framework.lua")
dofile(modpath.."/nodereg.lua")
dofile(modpath.."/itemreg.lua")
dofile(modpath.."/support.lua")
dofile(modpath.."/particles.lua")