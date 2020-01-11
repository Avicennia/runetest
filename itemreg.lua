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
            if(pointed_thing.above)then
                local pos = pointed_thing.above
                local pos_scan = {x=pos.x - 2,y=pos.y,z=pos.z - 2}
                for k,v in pairs(runetest.sizes) do
                    if(runetest.frame.discriminate(pos_scan,v) >= 1)then
                    minetest.chat_send_all("Diameter of "..v.." worked!")
                    else end
                end
            else end
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
            if(pointed_thing.above)then
                local pos = pointed_thing.above
                local pos_scan = {x=pos.x - 2,y=pos.y,z=pos.z - 2}
                for k,v in pairs(runetest.sizes) do
                    if(runetest.frame.discriminate(pos_scan,v) >= 1)then
                    minetest.chat_send_all("Diameter of "..v.." worked!")
                    else end
                end
            else end
        end,


        on_secondary_use = function(itemstack, user, pointed_thing)
            minetest.chat_send_all(minetest.serialize(pointed_thing))
        end
    })