local thismod = minetest.get_current_modname()
local modpath = minetest.get_modpath(thismod)

runetest = {
    lemmas = {1,2,3,4,5,6,7,8,9},
    glyphs = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39},
    runes = {},
    frame = {},
    rtypes = {"transcription","translation","transgression","transaction","transduction","translocation"},
    sizes = {2,4,6,8,10},
    lex_alt = {"runetest:glyph_n",99,"air",98,},
    lex = {},
    particle = {},
    ticker_ticker = 1
}

for n=1,#runetest.glyphs,1 do
    runetest.lex[n] = "runetest:glyph_"..n
end

runetest.template = {shape = {"ort","lin","rad"},}




dofile(modpath.."/framework.lua")
dofile(modpath.."/nodereg.lua")
dofile(modpath.."/itemreg.lua")
dofile(modpath.."/support.lua")
dofile(modpath.."/particles.lua")