local thismod = minetest.get_current_modname()
local modpath = minetest.get_modpath(thismod)

runetest = {
    lemmas = 9, -- Lowest division of inscription, used to construct glyphs and to augment things.
    glyphs = 40, -- standard of inscription use in the mod.
    runes = 21,
    frame = {},
    rtypes = {"transcription","translation","transgression","transaction","transduction","translocation"}, -- Categories held in the inscription system.
    sizes = {3,5}, -- Sizes of selection areas used in the mod.
    lex_alt = {"runetest:glyph_n",99,"air",98,},
    lex = {},
    particle = {},
    util = {},
    tafel = {},
    ent_jitter = {{x=0.07,y=0,z=0.07},{x=-0.07,y=0,z=-0.07}},
    ticker_ticker = 1 -- Universal variable intended to be used for counts
}

for n=1,runetest.glyphs,1 do
    runetest.lex[n] = "runetest:glyph_"..n
end

runetest.template = {shape = {"ort","lin","rad"},} -- Tags concerning variables applied to selected template areas.




dofile(modpath.."/framework.lua")
dofile(modpath.."/nodereg.lua")
dofile(modpath.."/itemreg.lua")
dofile(modpath.."/support.lua")
dofile(modpath.."/particles.lua")