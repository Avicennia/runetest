minetest.register_tool("runetest:pen_1",{
        description = "Calcite Pencil",
        groups = {inscription = 2}, -- key = name, value = rating; rating = 1..3.
                        
        inventory_image = "pen_1.png",
        --inventory_overlay = "overlay.png",
        color = "0xFFFFFFFF",
        wield_scale = {x = 1, y = 1, z = 1},
        stack_max = 99,
        range = 4.0,
        liquids_pointable = false,
        tool_capabilities = {
            full_punch_interval = 1.0,
            max_drop_level = 0,
            groupcaps = {
                -- For example:
                choppy = {times = {[1] = 2.50, [2] = 1.40, [3] = 1.00},
                         uses = 20, maxlevel = 2},
            }
        
        },
        node_placement_prediction = nil,

        sound = {
            breaks = "default_tool_break",
            place = "default_tool_break",
        },
        on_use = function(itemstack, user, pointed_thing)
            if(pointed_thing.above)then
            minetest.set_node(pointed_thing.above, {name = "runetest:glyph_28"})
            else end
        end,
        on_secondary_use = function()
        end
    })
    minetest.register_tool("runetest:wand_1",{

        description = "Calcite Wand",
        groups = {inscription = 2}, 
        inventory_image = "wand_1.png",
        wield_scale = {x = 1, y = 1, z = 1},
        stack_max = 99,
        range = 4.0,
        liquids_pointable = false,
        tool_capabilities = {
            full_punch_interval = 1.0,
            max_drop_level = 0,
        },


        node_placement_prediction = nil,

        sound = {
            breaks = "default_tool_break",
            place = "default_tool_break",
        },


        on_use = function(itemstack, user, pointed_thing)
            local wandran = 3
            if(pointed_thing.above)then
                local pos = pointed_thing.above
                local pos_scan = {x=pos.x - 2,y=pos.y,z=pos.z - 2}
                
                    if(pos_scan)then
                    runetest.core.frame.place(pos,runetest.core.frame.discriminate(pos_scan,wandran))
                    minetest.sound_play({name = "sfx_bell", gain = 1.0, pitch = 1.0},{gain = 1.0, fade = 0.0, pitch = 1.0})
                    runetest.core.frame.poof(pos,1)
                    else end
                
                else end
            
            --minetest.chat_send_all(minetest.serialize(user:get_player_control().sneak))
        end,


        on_secondary_use = function(itemstack, user, pointed_thing)
            minetest.chat_send_all(minetest.serialize(pointed_thing))
        end
    })
    minetest.register_tool("runetest:wand_2",{
        description = "Vaterite Wand",
        groups = {inscription = 2},
        inventory_image = "wand_2.png",
        wield_scale = {x = 1, y = 1, z = 1},
        stack_max = 99,
        range = 4.0,
        liquids_pointable = false,
        tool_capabilities = {
            full_punch_interval = 1.0,
            max_drop_level = 0,
        },
        node_placement_prediction = nil,

        sound = {
            breaks = "default_tool_break", -- tools only
            place = "default_tool_break",
        },
        on_use = function(itemstack, user, pointed_thing)
            local wandran = 5
            if(pointed_thing.above)then
                local pos = pointed_thing.above
                local pos_scan = {x=pos.x - 3,y=pos.y,z=pos.z - 3}

                if(pos_scan)then
                    runetest.core.frame.place(pos,runetest.core.frame.discriminate(pos_scan,wandran))
                    minetest.sound_play({name = "sfx_bell", gain = 1.0, pitch = 1.0},{gain = 1.0, fade = 0.0, pitch = 1.0})
                    runetest.core.frame.poof(pos,2)

                    else end
            else end
        end,


        on_secondary_use = function(itemstack, user, pointed_thing)
            minetest.chat_send_all(minetest.serialize(pointed_thing))
        end
    })