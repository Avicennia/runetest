local thismod = minetest.get_current_modname()
local modpath = minetest.get_modpath(thismod)


dofile(modpath.."/framework.lua")
dofile(modpath.."/nodereg.lua")
dofile(modpath.."/itemreg.lua")
dofile(modpath.."/support.lua")
dofile(modpath.."/particles.lua")