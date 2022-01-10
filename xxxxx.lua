local username = globals.get_username()
console.execute("clear")

print("欢迎登陆")
print("登陆中")
print("即将开始验证")





--local username = globals.get_username()

--str = http.get("https://pastebin.com","/raw/MaX0JeMN")

--if string.find(str, username) then
  --  client.log("Welcome back, " .. username .. "!")
   -- client.log("身份验证成功欢迎回来, " .. username .. "!")
   -- goto continue
--else
 --   client.log("你没有个人授权购买请加 QQ2957838583")
  --  client.log("请打开Allow HTTP request和All file edit")
  --    menu.add_slider_int("You Did Not Buy !", 0, 0)
 --   return
--end
--::continue::


















menu.add_slider_int(";;;;;;;;; # Gluttonous lua V1 # ;;;;;;;", 1,1)


menu.add_slider_int("===========Anti-Aim==========", 1,1)
menu.next_line()
menu.add_slider_int("AA 1 tick", 1, 100)
menu.add_slider_int("AA 2 tick", 1, 100)
menu.add_combo_box("Pitch", {"Static", "Minimal", "Maximal"})
menu.add_combo_box("Yaw Modifier", {"None", "Static", "Spin"})
menu.add_slider_int("Min Jitter Range", 0, 180)
menu.add_slider_int("Max Jitter Range", 0, 180)
menu.add_combo_box("Desync Type", {"None", "Static", "Jitter"})
menu.add_slider_int("Min Desync Range", 0, 60)
menu.add_slider_int("Max Desync Range", 0, 60)
menu.add_slider_int("Min Desync Slow walk",0,60)
menu.add_slider_int("Max Desync Slow walk",0,60)
menu.add_slider_int("Min Inverted Desync Range", 0, 60)
menu.add_slider_int("Max Inverted Desync Range", 0, 60)
menu.next_line()
menu.add_check_box("Slow Walk")
menu.add_slider_int( "Min Slow-Walk Speed", 1, 120)
menu.add_slider_int( "Max Slow-Walk Speed", 1, 120)
menu.next_line()
menu.add_check_box("Disable FL on DT")

menu.next_line()
menu.add_slider_int("===========Resolver==========", 1,1)

menu.next_line()
menu.add_combo_box("Gluttonous Resolver", {"None","1"})










menu.add_slider_int("========== Weapon 1 =========", 1,1)

----跳狙
menu.add_slider_int("Scout Hit", 0, 100)
menu.add_slider_int("Scout Jump Hit", 0, 100)
menu.next_line()
menu.add_slider_int("Scout Damage", 0, 100)
menu.add_slider_int("Scout Jump Damage", 0, 100)













----跳狙
client.add_callback("create_move", function()

 

    local scoutjump =menu.get_int("Scout Jump Hit")
    local scoutj =menu.get_int("Scout Hit")
    local scoutmd = menu.get_int("Scout Jump Damage")
    local scoutm = menu.get_int("Scout Damage")
   


    for j = 0, 8 do
            if menu.get_key_bind_state("misc.edge_jump_key") then
            menu.set_int(string.format("rage.weapon[3].hit_chance"), scoutjump)
            menu.set_int(string.format("rage.weapon[3].minimum_damage"), scoutmd)
            else
            menu.set_int(string.format("rage.weapon[3].hit_chance"), scoutj)
            menu.set_int(string.format("rage.weapon[3].minimum_damage"), scoutm)
		
          



        end
    end
end)


















menu.add_slider_int("===========visuals===========", 0,0)
menu.next_line()
menu.add_combo_box("Background",{"None","Default","Disorder"})

--------

menu.next_line()
menu.add_check_box("Foot light")
menu.add_check_box("light rpb")
menu.add_color_picker("light color")
menu.add_slider_int("exponent", 1,15  )
menu.add_slider_int("light radius", 1,1000  )
menu.add_combo_box( "light style", {"static","dynamic"} )







---------
menu.next_line()
menu.add_check_box("Enable line")
menu.add_slider_int("Line width", 1, 10)
menu.add_check_box("Enable line from top")
menu.add_check_box("Enable line from left")
menu.add_check_box("Enable line from bottom")
menu.add_check_box("Enable line from right")




---------
menu.next_line()
menu.add_check_box( "Enable Skeet Scope" )
menu.add_color_picker( "Cool Scope color" )
menu.add_check_box( "Viewmodel when scoped" )
menu.add_slider_int( "Cool Scope spacing", 100, 250 )
menu.add_slider_int( "Cool Scope size", 80, 200 )




----------
menu.next_line()
menu.add_check_box("Nazi crosshair")
menu.add_slider_float("Size" , 1 , 20)
menu.add_slider_float("Rainbow speed" , 1 , 100)
menu.add_slider_float("Speed" , 1 , 10)






-------
menu.next_line()
menu.add_slider_int("Duration", 5, 500)
menu.add_check_box("Dmg number")
menu.add_color_picker("Number color")
menu.add_check_box("Flying number")







---------
menu.next_line()
menu.add_check_box("Enable Hit circle")
menu.add_slider_int("Hit circle X", -98, engine.get_screen_width())
menu.add_slider_int("Hit circle Y", 0, engine.get_screen_height())
menu.add_check_box("Hit marker")
menu.add_color_picker("Hit marker color")




---------
menu.next_line()
menu.add_color_picker( "Velocity indicator color" )
menu.next_line()
menu.add_slider_int( 'Trail Length', 1, 30 )
menu.add_slider_int( 'Trail Size', 5, 100 )




---------
menu.next_line()
menu.add_check_box("Enable keybind")
menu.add_slider_int("Key binds position X", 0, engine.get_screen_width())
menu.add_slider_int("Key binds position Y", 0, engine.get_screen_height())





---------
menu.next_line()
menu.add_check_box("Hand Chams")
menu.add_color_picker("Hands color")





---------
menu.next_line()
menu.add_check_box("Fog Effect")
menu.add_color_picker("Fog Color")
menu.add_slider_int("Start Distance", 0, 2500)





---------
menu.next_line()
menu.add_slider_int("End Distance", 0, 2500)
menu.add_slider_int("Density", 0, 100 )










---------
menu.next_line()
menu.add_check_box("rainbow bullet tracer")





--------
menu.next_line()
menu.add_color_picker("Indicator color")




--数值
  local a1 = false
  local a2 = false
  local a3 = false
  local a4 = false
  local a5 = false
  local a6 = false

  local nlFont = render.create_font("Museo Sans Cyrl 500", 20, 500, true, false, false)
  local screenx, screeny = engine.get_screen_width(), engine.get_screen_height()

  final_font = nlFont
  local killvalue = 0
  local point = 0
  local deadv = 0
  local screenx = engine.get_screen_width()
  local screeny = engine.get_screen_height()
local hitcolor = {
    ["head"] = color.new(255,255,255,255),
    ["stomach"] = color.new(255,255,255,255),
    ["chest"] = color.new(255,255,255,255),
    ["right leg"] = color.new(255,255,255,255),
    ["left leg"] = color.new(255,255,255,255),
    ["right hand"] = color.new(255,255,255,255),
    ["left hand"] = color.new(255,255,255,255),
    ["right arm"] = color.new(255,255,255,255),
    ["left arm"] = color.new(255,255,255,255),
}
local uifont = render.create_font("Verdana", 15, 400, true, true, false)

--menu
    menu.add_check_box("Hit Info")
    menu.add_slider_int("Hit Info X",0,screenx)
    menu.add_slider_int("Hit Info Y",0,screeny)




    menu.add_slider_int("===========Misc===========", 0,0)
    menu.next_line()
    menu.add_check_box( "Enhanced Auto Peek" )


-- Menu
local menu_check_box = menu.add_check_box
local menu_get_bool = menu.get_bool
local menu_set_int = menu.set_int

-- Math
local math_random = math.random

-- Callback / Event
local events_register_event = events.register_event
local client_add_callback = client.add_callback

-- Entitylist
entitylist_get_local_player = entitylist.get_local_player

-- Our menu additions
menu_check_box("Leg breaker")

-- FFI
local ffi = require "ffi"

ffi.cdef[[
    typedef uintptr_t (__thiscall* GetClientEntity_4242425_t)(void*, int);
]]

local entity_list_ptr = ffi.cast("void***", utils.create_interface("client.dll", "VClientEntityList003"))
local get_client_entity_fn = ffi.cast("GetClientEntity_4242425_t", entity_list_ptr[0][3])

local ffi_helpers = {
    get_animstate_offset = function()
        return 14612
    end,

    get_entity_address = function(ent_index)
        local addr = get_client_entity_fn(entity_list_ptr, ent_index)
        return addr
    end
}

-- Lets break our legs!
client_add_callback("on_paint", function()
    if menu_get_bool("Leg breaker") then
        local localplayer = entitylist_get_local_player()
        if not localplayer then return end
        ffi.cast("float*", ffi_helpers.get_entity_address(localplayer:get_index()) + 10100)[0] = 0

        menu_set_int("misc.leg_movement", math_random(1, 2))
     end
end)















                  







                                local menu_check_box = menu.add_check_box
                                local menu_get_bool = menu.get_bool
                                local menu_set_int = menu.set_int
                                
                                local events_register_event = events.register_event
                                local client_add_callback = client.add_callback
                                
                                
                                
                                
                                    client_add_callback("on_paint", function() 
                                            -- body
                                       
                                
                                
                                    if globals.get_tickcount() % menu.get_int("AA 1 tick") < menu.get_int("AA 2 tick") then
                                
                                
                                            local FS1 = menu.get_int("Min Desync Range")
                                            local SS1 = menu.get_int("Max Desync Range")
                                            local FF1 = menu.get_int("Min Desync Slow walk")---慢走
                                            local WW1 = menu.get_int("Max Desync Slow walk")---慢走
                                            local FS2 = menu.get_int("Min Inverted Desync Range")
                                            local SS2 = menu.get_int("Max Inverted Desync Range")
                                            local FW1 = menu.get_int("Min Jitter Range")
                                            local SW1 = menu.get_int("Max Jitter Range")
                                         
                                            menu.set_bool("anti_aim.enable",true)
                                            menu.set_bool("anti_aim.enable_fake_lag",true)
                                            menu.set_bool("misc.clan_tag",false)
                                            if menu.get_key_bind_state("misc.slow_walk_key") then
                                            menu.set_int("anti_aim.desync_range", math.random(FF1,WW1 ))
                                            menu.set_int("anti_aim.desync_range_inverted", math.random(FF1, WW1))
                                            else
                                            menu.set_int("anti_aim.desync_range", math.random(FS1,SS1 ))
                                            menu.set_int("anti_aim.desync_range_inverted", math.random(FS2, SS2))
                                
                                            menu.set_int("anti_aim.pitch", menu.get_int( "Pitch" ))
                                            menu.set_int("anti_aim.yaw_modifier", menu.get_int( "Yaw Modifier" ))
                                            menu.set_int("anti_aim.desync_type", menu.get_int( "Desync Type" ))
                                            menu.set_int("anti_aim.yaw_modifier_range", math.random(FW1, SW1))
                                            
                                        end
                                    end
                                    end)

     








-----左右手自动换枪


client.add_callback("create_move", function()
    
        if menu.get_key_bind_state("anti_aim.invert_desync_key") == true then
            console.execute("cl_righthand 1")
        else
            console.execute("cl_righthand 0")
     
    end
end)






----自定义慢走
local bit = require("bit")
local function a(cmd)
    if menu.get_bool("Slow Walk") then 
    if not menu.get_key_bind_state("misc.slow_walk_key") then
        return
    end
    if not entitylist.get_local_player() then
        return
    end

    Forward_Flag = bit.band(cmd.buttons, 8) == 8
    Back_Flag = bit.band(cmd.buttons, 16) == 16
    Left_Flag = bit.band(cmd.buttons, 512) == 512
    Right_Flag = bit.band(cmd.buttons, 1024) == 1024

    Movement_Straight = 0
    Movement_Side = 0

    local AB1 = menu.get_int("Min Slow-Walk Speed")
    local AB2 = menu.get_int("Max Slow-Walk Speed")



    if Forward_Flag then
        Movement_Straight = Movement_Straight + math.random(AB1, AB2)
    end

    if Back_Flag then
        Movement_Straight = Movement_Straight - math.random(AB1, AB2)
    end

    if Left_Flag then
        Movement_Side = Movement_Side - math.random(AB1, AB2)
    end

    if Right_Flag then
        Movement_Side = Movement_Side + math.random(AB1, AB2)
    end


    cmd.forwardmove = Movement_Straight
    cmd.sidemove = Movement_Side

    return
end
end
client.add_callback("create_move",a)






















----解析器


local count = 1
local first_angle = 8
local first = 10
for i=1,globals.get_maxclients() do

    menu.set_int("player_list.player_settings["..i.."].body_yaw", first_angle)
     menu.set_int("player_list.player_settings["..i.."].pitch", first)
end

local brute = {
    first_angle,
     -14,
     7,
     -9,
   }
  
client.add_callback("on_shot", function(s)
    if s.result== "Resolver" then
        if count < #brute then
            count = count + 1
        else
            count = 1
        end
    end
    menu.set_int("player_list.player_settings["..s.target_index.."].body_yaw", brute[count])    
end)

client.add_callback("create_move",function()
    for i=1,globals.get_maxclients() do
         if menu.get_int("Gluttonous Resolver")==1 then
        menu.set_bool("player_list.player_settings["..i.."].force_body_yaw", true)
        menu.set_bool("player_list.player_settings["..i.."].force_pitch",true)
     end  
    end
end)

client.add_callback("unload",function()
    for i=1,globals.get_maxclients() do
     if menu.get_int("Gluttonous Resolver")==1 then
        menu.set_bool("player_list.player_settings["..i.."].force_body_yaw", false)
        menu.set_int("player_list.player_settings["..i.."].body_yaw", 0)
        
   end
    end
end)


client.add_callback("unload",function()
if menu.get_int("Gluttonous Resolver")==0 then
end
end)











----DT禁用

client.add_callback("on_paint" , function()
    if menu.get_bool("Disable FL on DT") and menu.get_key_bind_state("rage.double_tap_key" ) then
        menu.set_int("anti_aim.fake_lag_limit",1)
       else
        menu.set_int("anti_aim.fake_lag_limit",14)
       end
end)





































-----假身指示器
-- Indicator font
local indicator_font = render.create_font("Verdana", 50, 900, true, false, false)

-- Get our screen size
local screen_x, screen_y = engine.get_screen_width(), engine.get_screen_height()

client.add_callback("on_paint", function()

    indicator_color = menu.get_color("Indicator color")

    if engine.is_in_game() then
        local local_player = entitylist.get_local_player()
        local local_health = local_player:get_health()
        if local_health > 0 then
             if menu.get_key_bind_state("anti_aim.invert_desync_key") then
                render.draw_text( indicator_font, screen_x / 2 + 45, screen_y / 2 - 28, indicator_color, "⮞" )
                render.draw_text( indicator_font, screen_x / 2 - 70, screen_y / 2 - 28, color.new(56, 56, 56, 150), "⮜" )
            else
                render.draw_text( indicator_font, screen_x / 2 - 70, screen_y / 2 - 28, indicator_color, "⮜" )
                render.draw_text( indicator_font, screen_x / 2 + 45, screen_y / 2 - 28, color.new(56, 56, 56, 150), "⮞" )
            end
        end
    end

end)












-----按键指示器

--By Desire on Legendware.
local font = render.create_font("Tahoma", 18, 400, true, false, true)
local username = globals.get_username()
local yellow = color.new(248, 255, 46)
local red = color.new(232, 12, 12)
local blue = color.new(9, 154, 227)
local green = color.new(0, 180, 0)

local white = color.new(255, 255, 255)
local function UI()
local localp = entitylist.get_local_player()
local indexp = engine.get_local_player_index()
local armor = engine.get_level_name()
local aa = menu.get_bool("anti_aim.enable")
local autofire = menu.get_bool("rage.automatic_fire")
local tp = menu.get_key_bind_state("misc.third_person_key")
local dt = menu.get_key_bind_state("rage.double_tap_key")
local ht = menu.get_key_bind_state("rage.hide_shots_key")
local ej = menu.get_key_bind_state("misc.edge_jump_key")
local peek = menu.get_key_bind_state("misc.automatic_peek_key")
local slow = menu.get_key_bind_state("misc.slow_walk_key")
local damage = menu.get_key_bind_state("rage.force_damage_key")
local duck = menu.get_key_bind_state("anti_aim.fake_duck_key")



if engine.is_connected() then
local x = menu.get_int("Key binds position X")
local y = menu.get_int("Key binds position Y")
if menu_get_bool("Enable keybind") then
    

--

render.draw_text(font, 10, 10, green, tostring("用户 " .. username .. ""))
render.draw_text(font, 10, 25, green, "欢迎使用 Gluttonous.lua")
render.draw_text(font, x+340, y+50, yellow, "按键指示器（beta）")
render.draw_text(font, x+300, y+80, white, "反自瞄: ")
if aa == true then
render.draw_text(font, x+430, y+80, red, tostring(aa))
end
if aa == false then
render.draw_text(font, x+430, y+80, white, tostring(aa))
end
-----
render.draw_text(font, x+300, y+100, white, "第三人称: ")
if tp == true then
render.draw_text(font, x+430, y+100, blue, tostring(tp))
end
if tp == false then
render.draw_text(font, x+430, y+100, white, tostring(tp))
end

render.draw_text(font, x+300, y+120, white, "藏头: ")
if ht == true then
render.draw_text(font, x+430, y+120, blue, tostring(ht))
end
if ht == false then
render.draw_text(font, x+430, y+120, white, tostring(ht))
end


render.draw_text(font, x+300, y+140, white, "双击: ")
if dt == true then
render.draw_text(font, x+430, y+140, blue, tostring(dt))
end
if dt == false then
render.draw_text(font, x+430, y+140, white, tostring(dt))
end

render.draw_text(font, x+300, y+160, white, "伤害覆盖: ")
if damage == true then
render.draw_text(font, x+430, y+160, blue, tostring(damage))
end
if damage== false then
render.draw_text(font, x+430, y+160, white, tostring(damage))
end



render.draw_text(font, x+300, y+180, white, "跳跃: ")
if ej == true then
render.draw_text(font, x+430, y+180, blue, tostring(ej))
end
if ej == false then
render.draw_text(font, x+430, y+180, white, tostring(ej))
end


render.draw_text(font, x+300, y+200, white, "慢走: ")
if slow == true then
render.draw_text(font, x+430, y+200, blue, tostring(slow))
end
if slow == false then
render.draw_text(font, x+430, y+200, white, tostring(slow))
end



render.draw_text(font, x+300, y+220, white, "假蹲: ")
if duck == true then
render.draw_text(font, x+430, y+220, blue, tostring(duck))
end
if duck== false then
render.draw_text(font, x+430, y+220, white, tostring(duck))
end

render.draw_text(font, x+300, y+240, white, "快速返回: ")
if peek == true then
render.draw_text(font, x+430, y+240, blue, tostring(peek))
end
if peek== false then
render.draw_text(font, x+430, y+240, white, tostring(peek))
end


if slow == true then
    render.draw_text(font, 300,200, red, "慢走角度模式激活")
    end



end
end
end
client.add_callback("on_paint", UI)












--Neverlose水印



local font = render.create_font("Segoe UI", 14, 400, true, false, false)


menu.add_color_picker("Watermark Color")

client.add_callback("on_paint", function()

        local screen_width = engine.get_screen_width()
        local username = globals.get_username()
        local ping = tostring(globals.get_ping())
        local tickrate = math.floor(1.0 / globals.get_intervalpertick())
        local fps = math.floor(1.0 / globals.get_frametime())
        --
        local text
        if engine.is_connected() then
            text = tostring("GLUTTONOUS | " .. username .. " | delay: " .. ping .. "ms | " .. tickrate .. "tick | ".. fps .. "fps")
        else
            text = tostring("GLUTTONOUS | " .. username .. "")
        end
        --
        local width = render.get_text_width(font, text)
        --
        local line_color = menu.get_color("Watermark Color")
        local background_color = color.new(40, 40, 47, 150)
        local text_color = color.new(255, 255, 255)
        --
        local x = screen_width - 10 - width - 4
        local y = 5
        local w = width + 5
        --
        render.draw_rect_filled(x, y, w, 2, line_color)
        render.draw_rect_filled(x, y + 2, w, 16, background_color)
        render.draw_text(font, x + 2, y + 3, text_color, text)
end)

























----脚底线
local ffi = require("ffi")

local previoustrails = {}




ffi.cdef[[
    typedef struct  {
        float x;
        float y;
        float z;
    } vec3_t;

    struct beam_info_t {
        int     m_type;
        void* m_start_ent;
        int     m_start_attachment;
        void* m_end_ent;
        int     m_end_attachment;
        vec3_t      m_start;
        vec3_t      m_end;
        int     m_model_index;
        const char  *m_model_name;
        int     m_halo_index;
        const char  *m_halo_name;
        float       m_halo_scale;
        float       m_life;
        float       m_width;
        float       m_end_width;
        float       m_fade_length;
        float       m_amplitude;
        float       m_brightness;
        float       m_speed;
        int     m_start_frame;
        float       m_frame_rate;
        float       m_red;
        float       m_green;
        float       m_blue;
        bool        m_renderable;
        int     m_num_segments;
        int     m_flags;
        vec3_t      m_center;
        float       m_start_radius;
        float       m_end_radius;
    } ;

    typedef void (__thiscall* draw_beams_t)(void*, void*);
    typedef void*(__thiscall* create_beam_points_t)(void*, struct beam_info_t&);
]]

local render_beams_signature = "B9 ? ? ? ? A1 ? ? ? ? FF 10 A1 ? ? ? ? B9"
local match = utils.find_signature("client.dll", render_beams_signature)
local render_beams = ffi.cast('void**', ffi.cast("char*", match) + 1)[0]
local render_beams_class = ffi.cast("void***", render_beams)
local render_beams_vtbl = render_beams_class[0]

local draw_beams = ffi.cast("draw_beams_t", render_beams_vtbl[6])
local create_beam_points = ffi.cast("create_beam_points_t", render_beams_vtbl[12])

local bor = bit.bor
local new = ffi.new

local function trails()
    local lp = entitylist.get_local_player()
    --if lp ~= nil then
        local origin = lp:get_origin()
        local r = math.floor(math.sin(globals.get_realtime() * 2) * 127 + 128)
        local g =  math.floor(math.sin(globals.get_realtime() * 2 + 2) * 127 + 128)
        local b = math.floor(math.sin(globals.get_realtime() * 2 + 4) * 127 + 128)   
        previoustrails[#previoustrails+1] = { x = origin.x, y = origin.y, z = origin.z, tick = tonumber(globals.get_tickcount()) + 50, draw = true, r = r, g = g, b = b}
        local pt = #previoustrails
        for i = 1, pt do
            if i > 2 then
                local trail = previoustrails[i]
                local trailtwo = previoustrails[i - 1]
                local beam_info = new("struct beam_info_t")
                beam_info.m_type = 0x00
                beam_info.m_model_index = -1
                beam_info.m_halo_scale = 0

                beam_info.m_life = menu.get_int( 'Trail Length' )
                beam_info.m_fade_length = 1

                beam_info.m_width = menu.get_int( 'Trail Size' ) * .1
                beam_info.m_end_width = menu.get_int( 'Trail Size' ) * .1

                beam_info.m_model_name = "sprites/purplelaser1.vmt"   

                beam_info.m_amplitude = 2.3
                beam_info.m_speed = 0.2

                beam_info.m_start_frame = 0
                beam_info.m_frame_rate = 0

                beam_info.m_red = trail.r
                beam_info.m_green = trail.g
                beam_info.m_blue = trail.b
                beam_info.m_brightness = 255

                beam_info.m_num_segments = 2
                beam_info.m_renderable = true

                beam_info.m_flags = bor(0x00000100 + 0x00000200 + 0x00008000)

                beam_info.m_start = {trail.x,trail.y,trail.z}
                beam_info.m_end = {trailtwo.x,trailtwo.y,trailtwo.z}

                local beam = create_beam_points(render_beams_class, beam_info)
                if beam ~= nil then
                    draw_beams(render_beams, beam)
                end

                if i > 3 then
                    table.remove(previoustrails, i - 2)
                end
            end
        end
    --end
end

client.add_callback( 'create_move', function()
trails()
end)













----命中统计
local font = render.create_font("Verdana", 20,370, true, false, false)

local hit_count = 0
local hit_miss = 0
local hit = 0
local hit_results_miss = 0
local hit_speed_miss = 0


local function on_shot_hit (shot_info)
	local results  = shot_info.result
	if results == "Hit" then
		hit_count = hit_count + 1
		hit = hit + 1
	end
	if results == "Spread" then
		hit_miss = hit_miss + 1
		hit_count = hit_count + 1
		hit_speed_miss = hit_speed_miss + 1
	end
	if results == "Resolver" then
		hit_miss = hit_miss + 1
		hit_count = hit_count + 1
		hit_results_miss = hit_results_miss + 1
	end

end
client.add_callback("on_shot", on_shot_hit)

local function draw()
	local r = math.floor(math.sin(globals.get_realtime() * 2) * 127 + 128)
    local g = math.floor(math.sin(globals.get_realtime() * 2 + 2) * 127 + 128)
    local b = math.floor(math.sin(globals.get_realtime() * 2 + 4) * 127 + 128)
	local draw_hit_miss = 0
	local draw_hit_speed = 0
	local draw_hit_results = 0
	 if menu.get_bool("Enable Hit circle") then
		local x = menu.get_int("Hit circle X")
        local y = menu.get_int("Hit circle Y")
		local color = color.new(r, g, b)
		if (hit_miss ~= 0) then
		draw_hit_miss = (hit_miss / hit_count) * 60
		draw_hit_speed = (hit_speed_miss / hit_miss) * 60
		draw_hit_results = (hit_results_miss / hit_miss) * 60
		end
		local hit_probability = 0.0
		local miss_probability = 0.0
		local speed_probability = 0.0
		local results_probability = 0.0
		if (hit_count ~= 0) then
		hit_probability = string.format("%.3f",hit / hit_count) * 100.0
		end
		if (hit_miss ~= 0) then
		miss_probability = string.format("%.3f",hit_miss / hit_count) * 100.0
		speed_probability = string.format("%.3f",hit_speed_miss / hit_miss) * 100.0
		results_probability = string.format("%.3f",hit_results_miss / hit_miss) * 100.0
		end
			-- 外框
	

			if (draw_hit_speed > draw_hit_results) then
				-- 空扩散
				render.draw_circle_filled(x, y, 30, draw_hit_speed, color.new(0, 255, 255, 200))
				-- 空解析
				render.draw_circle_filled(x, y, 30, draw_hit_results, color.new(255, 0, 0, 230))
			else
				-- 空解析
				render.draw_circle_filled(x, y, 30, draw_hit_results, color.new(255, 0, 0, 230))
				-- 空扩散
				render.draw_circle_filled(x, y, 30, draw_hit_speed, color.new(0, 255, 255, 200))
			end
	        render.draw_text(font, x + 100, y - 67, color, "击中人数: "  ..hit_count.. " " )
	        render.draw_text(font, x + 100, y - 42, color, "命中率: " ..hit.. " (" ..hit_probability.. "%%)")   
	        render.draw_text(font, x + 100, y - 20, color, "解析失败率: " ..hit_miss.. " (" ..miss_probability.. "%%)")
	        render.draw_text(font, x + 100, y , color, "扩散失败率: " ..hit_speed_miss.. " (" ..speed_probability.. "%%)")
	       
			
	end
end

client.add_callback("on_paint", draw)









---雾



--function
client.add_callback("on_paint", function()
    if entitylist.get_local_player() ~= nil and globals.get_server_address() ~= nil then
      if menu.get_bool("Fog Effect") then
        fog_color = menu.get_color("Fog Color")
        distance1 = menu.get_int("Start Distance")
        distance2 = menu.get_int("End Distance")
        density = menu.get_int("Density")
        console.set_int("fog_override", 1)   
        console.set_string("fog_color", string.format("%i %i %i", fog_color:r(), fog_color:g(), fog_color:b()))
        console.set_int("fog_start" , distance1 )
        console.set_int("fog_end" , distance2 )
        console.set_float("fog_maxdensity" , density / 100 )
      else
        console.set_int("fog_color", -1);
        console.set_int("fog_override", 0)
        console.set_int("fog_start", -1)
        console.set_int("fog_end", -1)
        console.set_float("fog_maxdensity", -1)
      end
   end
end)

client.add_callback("unload", function()
    console.set_int("fog_color", -1, -1, -1)
    console.set_int("fog_override", 0)
    console.set_int("fog_start", -1)
    console.set_int("fog_end", -1)
    console.set_float("fog_maxdensity", -1)
end)










----边框


local function paint()
    if menu.get_bool("Enable line") then   
        local screen_width = engine.get_screen_width()
        local screen_height = engine.get_screen_height()
        local LineWidth = menu.get_int("Line width")
        local r = math.floor(math.sin(globals.get_realtime() * 2) * 127 + 128)
        local g =  math.floor(math.sin(globals.get_realtime() * 2 + 2) * 127 + 128)
        local b = math.floor(math.sin(globals.get_realtime() * 2 + 4) * 127 + 128)

        local startXOffset, startYOffset, WidthOffset, HeightOffset = 0, 0, 0, 0
        if menu.get_bool("Enable line from left") then
            startXOffset = startXOffset + LineWidth
            WidthOffset = WidthOffset - LineWidth
        end
        if menu.get_bool("Enable line from right") then
            WidthOffset = WidthOffset - LineWidth
        end


        if menu.get_bool("Enable line from top") then
             render.draw_rect_filled(startXOffset, 0, screen_width + WidthOffset, LineWidth, color.new(r, g, b, 160))
        end

        if menu.get_bool("Enable line from bottom") then
             render.draw_rect_filled(startXOffset, screen_height - LineWidth, screen_width + WidthOffset, LineWidth, color.new(r, g, b, 160))
        end

        if menu.get_bool("Enable line from left") then
            render.draw_rect_filled(0, 0, LineWidth, screen_height, color.new(r, g, b, 160))
        end

        if menu.get_bool("Enable line from right") then
            render.draw_rect_filled(screen_width - LineWidth, 0, LineWidth, screen_height, color.new(r, g, b, 160))
        end
    end
end

client.add_callback("on_paint", paint)






----伤害数字



local font = render.create_font("Museo Sans Cyrl 500", 20, 400, true, false, true)

local shot = {}
local magic_number = 0

function GetTableLng(tbl)
    local getN = 0

    for n in pairs(tbl) do
       getN = getN + 1
    end

    return getN
end

local function on_shot(shot_info)
    if shot_info.result ~= "Hit" then return end
    magic_number = magic_number + 1
    shot[magic_number] = {shot_info.aim_point, shot_info.server_damage, 0}
end

local function on_paint()
    if menu.get_bool("Hit marker") == false then return end
    local duration = menu.get_int("Duration")
    local color1 = menu.get_color("Hit marker color")
    local color2 = menu.get_color("Number color")
    local dmg_number = menu.get_bool("Dmg number")
    local flying_number = menu.get_bool("Flying number")
    for i = 1,magic_number do
        if shot[i] ~= nil then
            local pos1 = render.world_to_screen(shot[i][1])

            render.draw_line(pos1.x - 5, pos1.y - 5, pos1.x + 5, pos1.y + 5, color1)
            render.draw_line(pos1.x + 5, pos1.y - 5, pos1.x - 5, pos1.y + 5, color1)
    
            if dmg_number == true then
                local pos2 = vector.new(pos1.x, pos1.y - 10, pos1.z)
                if flying_number == true then
                    pos2.y = pos2.y - shot[i][3]
                end
                local text_pos = render.get_text_width(font, "" .. tostring(shot[i][2]) .. "")
                render.draw_text(font, pos2.x - text_pos / 2, pos2.y, color2, "" .. -tostring(shot[i][2]) .. "")
            end
    
            shot[i][3] = shot[i][3] + 1
    
            if shot[i][3] >= duration then
                shot[i] = nil
                magic_number = magic_number - 1
            end
        end
    end
end

client.add_callback("on_shot", on_shot)
client.add_callback("on_paint", on_paint)







----开镜准心
-- credits: https://legendware.pw/forum/threads/rapi-lua-api-extension.5702/
rApi = require("api/rapi")



local fov = menu.get_int( "misc.field_of_view" )
local fovDiff = fov - 90
local fovScope = fovDiff + 90

local function scope()
    local thirdperson = menu.get_key_bind_state( "misc.third_person_key" )
    local width = engine.get_screen_width()
    local height = engine.get_screen_height()
    local scope_enable = menu.get_bool( "Enable Skeet Scope" )
    local viewmodel_enable = menu.get_bool( "Viewmodel when scoped" )
    local scope_color = menu.get_color( "Cool Scope color" )
    local scope_size = menu.get_int( "Cool Scope size" )
    local scope_spacing = menu.get_int( "Cool Scope spacing" )
    local lp = entitylist.get_local_player()
  
    if lp ~= nil then
        is_scoped = lp:is_scoped()
    end

if scope_enable then
    if is_scoped then
      
        console.set_int( "cl_drawhud", 0 )

        if viewmodel_enable then
            if thirdperson then
                console.set_int( "fov_cs_debug", 0 )
            else
                console.set_int( "fov_cs_debug", fovScope )
                
            end
        else
            console.set_int("fov_cs_debug", 0)
        end
            rApi.render.draw_gradient( width / 2, height / 2 - scope_spacing, 1, scope_size, color.new(0, 0, 0, 0), scope_color, 1) -- up
            rApi.render.draw_gradient( width / 2 - scope_spacing, height / 2, scope_size, 1, color.new(0, 0, 0, 0), scope_color, 0) -- left
            rApi.render.draw_gradient( width / 2 + scope_spacing - scope_size - 1, height / 2, scope_size, 1, scope_color, color.new(0, 0, 0, 0), 0) -- right
            rApi.render.draw_gradient( width / 2, height / 2 + scope_spacing - scope_size - 1, 1, scope_size, scope_color, color.new(0, 0, 0, 0), 1) -- down
        else
            console.set_int("cl_drawhud", 1)
            console.set_int("fov_cs_debug", 0)
        end
    end
end
local function unload()
    console.set_int("cl_drawhud", 1)
    console.set_int("fov_cs_debug", 0)
end
client.add_callback("unload", unload)
client.add_callback("on_paint", scope)
















































--更多上色模式
local wireframe1 = [[
    {
    "$wireframe"                "1"
    "$envmapfresnelminmaxexp"   "[0 2 4]"
    "$envmaptint"               "255, 255, 255"
    "$alpha"                    "1"
    }
]]

local wireframe2 = [[
    {
        "$additive" "1"
        "$envmap" "models/effects/cube_white"
        "$envmaptint" "[1 1 1]"
        "$envmapfresnel" "1"
        "$envmapfresnelminmaxexp" "[0 1 2]"
        "$alpha" "0.5"
        "$wireframe"                "1"
    }
]]

local glow = [[
    {
        "$additive" "1"
        "$envmap" "models/effects/cube_white"
        "$envmaptint" "[1 1 1]"
        "$envmapfresnel" "1"
        "$envmapfresnelminmaxexp" "[0 1 2]"
        "$alpha" "1"
    }
]]

local bubble = [[
    {
        "$basetexture2"                "brick\brickwall031b"
        "$additive"                    "1"
        "$envmap"                    "editor/cube_vertigo"
        "$envmaptint"                "[0 0.5 0.55]"
        "$envmapfresnel"            "1"
        "$envmapfresnelminmaxexp"   "[0.5 0.6 6]"
        "$alpha"                    "1"
    }
]]

local glass = [[
    {
        "$basetexture"                "dev/zone_warning"
        "$additive"                    "1"
        "$envmap"                    "editor/cube_vertigo"
        "$envmaptint"                "[0 0.5 0.55]"
        "$envmapfresnel"            "1"
        "$envmapfresnelminmaxexp"   "[0.00005 0.6 6]"
        "$alpha"                    "1"
    }
]]

local animated = [[
    {
    "$basetexture"                "dev/zone_warning"
    "$additive"                    "1"
    "$envmap"                    "editor/cube_vertigo"
    "$envmaptint"                "[0 0.5 0.55]"
    "$envmapfresnel"            "1"
    "$envmapfresnelminmaxexp"   "[0.00005 0.6 6]"
    "$alpha"                    "1"

    Proxies
    {
        TextureScroll
        {
            "texturescrollvar"            "$baseTextureTransform"
            "texturescrollrate"            "0.25"
            "texturescrollangle"        "270"
        }
        Sine
        {
            "sineperiod"                "2"
            "sinemin"                    "0.1"
            "resultVar"                    "$envmapfresnelminmaxexp[1]"
        }
    }
]]

local wireframe3 = [[
    {
        "$basetexture" "nature/urban_puddle01a_ssbump"
        "$additive" "1"
        "$selfillum" "1"
        "$nocull" "1"
        "$wireframe" "1"
        "$alpha"                    "0.5"
        "Proxies"
        {
                "TextureScroll"
                {
                        "texturescrollvar" "$BasetextureTransform"
                        "texturescrollrate" "0.5"
                        "texturescrollangle" "90"
                }
        }
    }  
]]

local pearlescent = [[
    {
        "$basetexture" "vgui/white_additive"
        "$nocull" "1"
        "$nofog" "1"
        "$model" "1"
        "$nocull" "0"
        "$phong" "1"
        "$phongboost" "0"
        "$basemapalphaphongmask" "1"
        "$pearlescent" "6"
    }  
]]




material.create("Glow", glow, false)
material.create("Glass", glass, false)
material.create("Bubble", bubble, false)
material.create("Wireframe", wireframe1, false)
material.create("Pearlescent", pearlescent, false)
material.create("Glow Wireframe", wireframe2, false)
material.create("Animated Wireframe", wireframe3, false)
material.create("Animated glass", animated, false)









-----购买信息
local chat = require("[TYUO] Chat Print")

events.register_event("item_purchase", function(e)
    local name = engine.get_player_info(engine.get_player_for_user_id(e:get_int("userid"))).name
       
    chat.print(vtbl, e:get_int("team"), 0, string.format("%s 买了一把 %s", name, e:get_string("weapon")))
end)





---开局动画
local font = render.create_font( "Verdana", 35, 800, true, false, false )
local logo = render.create_font( "Lw Logo", 50, 100, true, false, false )
local slogan = render.create_font( "Verdana", 15, 300, true, false, false )
local x , y = engine.get_screen_width() , engine.get_screen_height() 
local warmup , finalslogan, alpha = false, nil, 0
local fadeaway = 255

events.register_event("round_end", function(e)
    menu.set_bool( "anti_aim.enable", false )
    menu.set_bool( "anti_aim.enable_fake_lag", false )
end)

events.register_event("round_freeze_end", function(e)
    warmup = false
    menu.set_bool( "anti_aim.enable", true )
    menu.set_bool( "anti_aim.enable_fake_lag", true )
end)

events.register_event("round_prestart", function(e)
    
    -- thanks to Kust1k for fixing the random slogan issue!
    local textslogan = {
        "欢迎使用 Legendware",

        }
    
    finalslogan = textslogan[ math.random(1, #textslogan) ]

    warmup = true
end)

client.add_callback( "on_paint", function()
    if finalslogan ~= nil then
        local texthallo = "GLUTTONOUS"
        local logohallo = "LEGENDWARE"
    
        -- thanks to Kust1k for alpha (fade) part c: 
		alpha = warmup and math.min(alpha + 5, 255) or math.max(0, alpha - 5)
		
		if alpha ~= 0 then
			local textwidth = render.get_text_width( font, texthallo )
			local logowidth = render.get_text_width( logo, logohallo )
			local sloganwidth = render.get_text_width( slogan, finalslogan )
			render.draw_text( font, x / 2 - textwidth / 2, 224, color.new(255, 127, 80, alpha), texthallo )
			render.draw_text( logo, x / 2 - logowidth / 2, 170, color.new(255, 99, 71, alpha), logohallo )
			render.draw_text( slogan, x / 2 - sloganwidth / 2, 262, color.new(255, 160, 122, alpha), finalslogan )
		end
    end
end)







----击杀日志


local gpinf = engine.get_player_info

local function hitlog(shot_info)


  local results       = shot_info.result
  local target        = shot_info.target_index
  local targetname    = gpinf(target).name
  local serverdamage  = shot_info.server_damage
  local clientdamage  = shot_info.client_damage
  local serverhitbox  = shot_info.server_hitbox
  local clienthitbox  = shot_info.client_hitbox
  local hitchance     = shot_info.hitchance
  local backtrack     = shot_info.backtrack_ticks
  local safe          = tostring(shot_info.safe)
  local chat          = require("chat_print")

   if results == "Hit" then
      chat.print(chat.vtbl, 0, 0, "[\x06GLUTTONOUS\x08] 命中了 \x03" .. targetname .. "\x08 伤害 \x07" .. serverdamage .. "\x08 命中部位 \x10" .. serverhitbox .. "\x08 |命中率: \x09" .. hitchance .. "\x08 | 预计伤害: \x07" .. clientdamage .. "\x08 | 击打部位: \x10" .. clienthitbox .. "\x08 | 回溯: \x0C" .. backtrack .. "Tick\x08 | 安全点: \x03" .. safe)
  end
  if results == "Spread" then
      chat.print(chat.vtbl, 0, 0, "[\x02GLUTTONOUS\x08] 空了 \x03" .. targetname .. "\x08 原因是 \x02弱智扩散\x08 | 命中率: \x09" .. hitchance .. "\x08 | 预计伤害: \x07" .. clientdamage .. "\x08 | 命中伤害: \x07" .. serverdamage .. "\x08 | 击打部位: \x10" .. clienthitbox .. "\x08 | 命中部位: \x10" .. serverhitbox .. "\x08 | 回溯: \x0C" .. backtrack .. "Tick\x08 | 安全点: \x03" .. safe)
  end
  if results == "Resolver" then
      chat.print(chat.vtbl, 0, 0, "[\x02GLUTTONOUS\x08] 空了 \x03" .. targetname .. "\x08 原因是 \x02脑残解析\x08 | 命中率: \x09" .. hitchance .. "\x08 | 预计伤害: \x07" .. clientdamage .. "\x08 | 命中伤害: \x07" .. serverdamage .. "\x08 | 击打部位: \x10" .. clienthitbox .. "\x08 | 命中部位: \x10" .. serverhitbox .. "\x08 | 回溯: \x0C" .. backtrack .. "Tick\x08 | 安全点: \x03" .. safe)
  end
  if result == "None" then
      chat.print(chat.vtbl, 0, 0, "[\x02GLUTTONOUS\x08] 空了 \x03" .. targetname .. "\x08 原因是 \x02空死亡\x08 | 命中率: \x09" .. hitchance .. "\x08 | 预计伤害: \x07" .. clientdamage .. "\x08 | 命中伤害: \x07" .. serverdamage .. "\x08 | 击打部位: \x10" .. clienthitbox .. "\x08 | 命中部位: \x10" .. serverhitbox .. "\x08 | 回溯: \x0C" .. backtrack .. "Tick\x08 | 安全点: \x03" .. safe)
end
  if result == "Occlusion" then
      chat.print(chat.vtbl, 0, 0, "[\x02GLUTTONOUS\x08] 空了 \x03" .. targetname .. "\x08 原因是 \x02错过射击\x08 | 命中率: \x09" .. hitchance .. "\x08 | 预计伤害: \x07" .. clientdamage .. "\x08 | 命中伤害: \x07" .. serverdamage .. "\x08 | 击打部位: \x10" .. clienthitbox .. "\x08 | 命中部位: \x10" .. serverhitbox .. "\x08 | 回溯: \x0C" .. backtrack .. "Tick\x08 | 安全点: \x03" .. safe)
end
end

client.add_callback("on_shot", hitlog)




















































--手臂上色
local mat_data = [[
    {
        "$basetexture" "vgui/white_additive"
        "$nocull" "1"
        "$nofog" "1"
        "$model" "1"
        "$nocull" "0"
        "$phong" "1"
        "$phongboost" "0"
        "$basemapalphaphongmask" "1"
    }
]]

local mat = material.find("Crystal", "models/inventory_items/cologne_prediction/cologne_prediction_glass")


local function drawmodel(model)
    if menu.get_bool("Hand Chams") then
        if not menu.get_key_bind_state("misc.third_person_key") and (string.find(model:get_name(), "arms") or string.find(model:get_name(), "sleeve")) then
            local clr = menu.get_color("Hands color")
            model:set_blend(clr:a())
            model:color_modulate(clr,mat)
            model:force_material(mat)
            model:draw_extra_pass()
        end
    end
end 

client.add_callback("drawmodel", drawmodel)

------手榴弹上色







--子弹射线




local render_beams_signature = "B9 ? ? ? ? A1 ? ? ? ? FF 10 A1 ? ? ? ? B9"
local match = utils.find_signature("client.dll", render_beams_signature)
local render_beams = ffi.cast('void**', ffi.cast("char*", match) + 1)[0] 
local render_beams_class = ffi.cast("void***", render_beams)
local render_beams_vtbl = render_beams_class[0]
 
local draw_beams = ffi.cast("draw_beams_t", render_beams_vtbl[6])
local create_beam_points = ffi.cast("create_beam_points_t", render_beams_vtbl[12])
 
local get_eye = function()
    local lc = entitylist.get_local_player()
    local origin = lc:get_origin()
    local offset = entitylist.get_local_player():get_prop_float("CBasePlayer", "m_vecViewOffset[2]")
    return { origin.x, origin.y, origin.z + offset }
end
 
local bor = bit.bor
local new = ffi.new
 
local function create_beams(startpos, red, green, blue, alpha)
    local beam_info = new("struct beam_info_t")
    beam_info.m_type = 0x00
    beam_info.m_model_index = -1
    beam_info.m_halo_scale = 0
 
    beam_info.m_life = 2
    beam_info.m_fade_length = 1
 
    beam_info.m_width = 20 * .1
    beam_info.m_end_width = 20 * .1
 
    beam_info.m_model_name = "sprites/purplelaser1.vmt"    
 
    beam_info.m_amplitude = 2.3
    beam_info.m_speed = 0.2
 
    beam_info.m_start_frame = 0
    beam_info.m_frame_rate = 0
 
    beam_info.m_red = red 
    beam_info.m_green = green
    beam_info.m_blue = blue
    beam_info.m_brightness = alpha
 
    beam_info.m_num_segments = 2
    beam_info.m_renderable = true
 
    beam_info.m_flags = bor(0x00000100 + 0x00000200 + 0x00008000)
 
    beam_info.m_start = startpos
    beam_info.m_end = get_eye() 
 
    local beam = create_beam_points(render_beams_class, beam_info) 
    if beam ~= nil then 
        draw_beams(render_beams, beam)
    end
end
 
events.register_event("bullet_impact", function(e)
	if menu_get_bool("rainbow bullet tracer") then
    if engine.get_player_for_user_id(e:get_int("userid")) == engine.get_local_player_index() then 
        local r,g,b,a = math.random( 0,255),math.random( 0,255),math.random( 0,255),255
        create_beams({e:get_int("x"), e:get_int("y"), e:get_int("z")}, r, g, b, a)
    end
end
end)




--------rgb准心
local math_cos, math_pi, math_atan = math.cos, math.pi, math.atan
local math_sin = math.sin

local function DEG2RAD(x) return x * math_pi / 180 end
local function RAD2DEG(x) return x * 180 / math_pi end

local rotationdegree = 0.000;

function rgb(T)
    local U=math.floor(T*256*6)
    local V=math.fmod(U,256)
    local W=math.floor(U/256)

    local X=0;
    local Y=0;
    local Z=0;

    if W==0 then 
        X=255;Y=V;Z=0 
    elseif W==1 then 
        X=255-V;Y=255;Z=0 
    elseif W==2 then 
        X=0;Y=255;Z=V 
    elseif W==3 then
        X=0;Y=255-V;Z=255
    elseif W==4 then
        X=V;Y=0;Z=255
    elseif W==5 then 
        X=255;Y=0;Z=255-V 
    end;

    return color.new(X,Y,Z)
end;

local rainbow = 0.0

local function draw_svaston(x, y, size)
    if menu.get_bool("Nazi crosshair") then
        local speed = menu.get_float("Speed")
        local range = menu.get_float("Size")
        local rangeSwaston = range / 90
        local frametime = globals.get_frametime()
        local a = size * rangeSwaston
        local gamma = math_atan(a / a)
        if rotationdegree > 89 then rotationdegree = 0 end
        rainbow = rainbow + (menu.get_float("Rainbow speed") / 2000)
        if rainbow > 1.0 then rainbow = 0 end
        for i = 0, 4 do  
            local p_0 = (a * math_sin(DEG2RAD(rotationdegree + (i * 90))))
            local p_1 = (a * math_cos(DEG2RAD(rotationdegree + (i * 90))))
            local p_2 =((a / math_cos(gamma)) * math_sin(DEG2RAD(rotationdegree + (i * 90) + RAD2DEG(gamma))))
            local p_3 =((a / math_cos(gamma)) * math_cos(DEG2RAD(rotationdegree + (i * 90) + RAD2DEG(gamma))))

            render.draw_line(x , y, x + p_0, y - p_1, rgb(rainbow))
            render.draw_line(x + p_0, y - p_1, x + p_2, y - p_3, rgb(rainbow))

        end

        local speedhack = frametime * 150
        rotationdegree = rotationdegree + (speedhack * speed)
    end
end

local function on_paint()
    local screenW = engine.get_screen_width()
    local screenH = engine.get_screen_height()
    draw_svaston(screenW / 2, screenH / 2, screenH /2)
end

client.add_callback('on_paint', on_paint)










-----身体击打指示器
local function hitboxcolor(hitbox)
    if hitbox == "head" then
        hitcolor["head"] = color.new(0,255,0,255)
        hitcolor["stomach"] = color.new(255,255,255,255)
        hitcolor["chest"] = color.new(255,255,255,255)
        hitcolor["right leg"] = color.new(255,255,255,255)
        hitcolor["left leg"] = color.new(255,255,255,255)
        hitcolor["right arm"] = color.new(255,255,255,255)
        hitcolor["left arm"] = color.new(255,255,255,255)
    elseif hitbox == "pelvis" then
        hitcolor["head"] = color.new(255,255,255,255)
        hitcolor["stomach"] = color.new(255,255,255,255)
        hitcolor["chest"] = color.new(255,255,255,255)
        hitcolor["right leg"] = color.new(255,255,255,255)
        hitcolor["left leg"] = color.new(255,255,255,255)
        hitcolor["right arm"] = color.new(255,255,255,255)
        hitcolor["left arm"] = color.new(255,255,255,255)
    elseif hitbox == "stomach" then
        hitcolor["head"] = color.new(255,255,255,255)
        hitcolor["stomach"] = color.new(0,255,0,255)
        hitcolor["chest"] = color.new(255,255,255,255)
        hitcolor["right leg"] = color.new(255,255,255,255)
        hitcolor["left leg"] = color.new(255,255,255,255)
        hitcolor["right arm"] = color.new(255,255,255,255)
        hitcolor["left arm"] = color.new(255,255,255,255)
    elseif hitbox == "chest" then
        hitcolor["head"] = color.new(255,255,255,255)
        hitcolor["stomach"] = color.new(255,255,255,255)
        hitcolor["chest"] = color.new(0,255,0,255)
        hitcolor["right leg"] = color.new(255,255,255,255)
        hitcolor["left leg"] = color.new(255,255,255,255)
        hitcolor["right arm"] = color.new(255,255,255,255)
        hitcolor["left arm"] = color.new(255,255,255,255)
    elseif hitbox == "right leg" then
        hitcolor["head"] = color.new(255,255,255,255)
        hitcolor["stomach"] = color.new(255,255,255,255)
        hitcolor["chest"] = color.new(255,255,255,255)
        hitcolor["right leg"] = color.new(0,255,0,255)
        hitcolor["left leg"] = color.new(255,255,255,255)
        hitcolor["right arm"] = color.new(255,255,255,255)
        hitcolor["left arm"] = color.new(255,255,255,255)
    elseif hitbox == "left leg" then
        hitcolor["head"] = color.new(255,255,255,255)
        hitcolor["stomach"] = color.new(255,255,255,255)
        hitcolor["chest"] = color.new(255,255,255,255)
        hitcolor["right leg"] = color.new(255,255,255,255)
        hitcolor["left leg"] = color.new(0,255,0,255)
        hitcolor["right arm"] = color.new(255,255,255,255)
        hitcolor["left arm"] = color.new(255,255,255,255)
    elseif hitbox == "right arm" then
        hitcolor["head"] = color.new(255,255,255,255)
        hitcolor["stomach"] = color.new(255,255,255,255)
        hitcolor["chest"] = color.new(255,255,255,255)
        hitcolor["right leg"] = color.new(255,255,255,255)
        hitcolor["left leg"] = color.new(255,255,255,255)
        hitcolor["right arm"] = color.new(0,255,0,255)
        hitcolor["left arm"] = color.new(255,255,255,255)
    elseif hitbox == "left arm" then
        hitcolor["head"] = color.new(255,255,255,255)
        hitcolor["stomach"] = color.new(255,255,255,255)
        hitcolor["chest"] = color.new(255,255,255,255)
        hitcolor["right leg"] = color.new(255,255,255,255)
        hitcolor["left leg"] = color.new(255,255,255,255)
        hitcolor["right arm"] = color.new(255,255,255,255)
        hitcolor["left arm"] = color.new(0,255,0,255)
    end
 end



local function shotinfo(shot_info)
    local results = shot_info.result
    local hitbox  = shot_info.server_hitbox
    if results == "Hit" then
    hitboxcolor(hitbox)
    end
 end
 client.add_callback("on_shot",shotinfo)

local function draw()
local r = math.floor(math.sin(globals.get_realtime() * 2) * 127 + 128)
local g =  math.floor(math.sin(globals.get_realtime() * 2 + 2) * 127 + 128)
local b = math.floor(math.sin(globals.get_realtime() * 2 + 4) * 127 + 128)
    if menu.get_bool("Hit Info") then
  render.draw_rect_filled(menu.get_int("Hit Info X")-85, menu.get_int("Hit Info Y")-130, 170, 22 + (15 * 11) + 10, color.new(169,169,169, 40)) 
  render.draw_text(uifont, menu.get_int("Hit Info X") -20, menu.get_int("Hit Info Y") + 2-130, color.new(255, 255, 255), "Hit Info") 
  render.draw_rect_filled(menu.get_int("Hit Info X")-85, menu.get_int("Hit Info Y") + 19-130, 170, 2, color.new(r,g,b))
  render.draw_rect_filled(menu.get_int("Hit Info X")-20,menu.get_int("Hit Info Y")-100,40,40,hitcolor["head"])
  render.draw_rect(menu.get_int("Hit Info X")-20,menu.get_int("Hit Info Y")-100,40,40,color.new(0,0,0,255))
  render.draw_rect_filled(menu.get_int("Hit Info X")+30,menu.get_int("Hit Info Y")-60,20,60,hitcolor["right arm"])
  render.draw_rect(menu.get_int("Hit Info X")+30,menu.get_int("Hit Info Y")-60,20,60,color.new(0,0,0,255))
  render.draw_rect_filled(menu.get_int("Hit Info X")-50,menu.get_int("Hit Info Y")-60,20,60,hitcolor["left arm"])
  render.draw_rect(menu.get_int("Hit Info X")-50,menu.get_int("Hit Info Y")-60,20,60,color.new(0,0,0,255))
  render.draw_rect_filled(menu.get_int("Hit Info X")-30,menu.get_int("Hit Info Y")-60,60,30,hitcolor["chest"])
  render.draw_rect(menu.get_int("Hit Info X")-30,menu.get_int("Hit Info Y")-60,60,30,color.new(0,0,0,255))
  render.draw_rect_filled(menu.get_int("Hit Info X")-30,menu.get_int("Hit Info Y")-30,60,30,hitcolor["stomach"])
  render.draw_rect(menu.get_int("Hit Info X")-30,menu.get_int("Hit Info Y")-30,60,30,color.new(0,0,0,255))
  render.draw_rect_filled(menu.get_int("Hit Info X")+10,menu.get_int("Hit Info Y"),20,50,hitcolor["right leg"])
  render.draw_rect(menu.get_int("Hit Info X")+10,menu.get_int("Hit Info Y"),20,50,color.new(0,0,0,255))
  render.draw_rect_filled(menu.get_int("Hit Info X")-30,menu.get_int("Hit Info Y"),20,50,hitcolor["left leg"])
  render.draw_rect(menu.get_int("Hit Info X")-30,menu.get_int("Hit Info Y"),20,50,color.new(0,0,0,255))
    end

 end
 client.add_callback("on_paint", draw)
        

    
 ------图片
 if menu.get_int("Background")==0 then
 end
 local texture = render.create_image(file.read("C:\\Gluttonous.lua\\1.png"))
 

function peek_SSG()
if menu.get_int("Background")==1 then
    render.draw_image(0, 0, engine.get_screen_width(), engine.get_screen_height(), texture)
end
end

client.add_callback("on_paint", peek_SSG)


local y = 0;

local function draw_line(p1, p2, o1, o2)
    render.draw_line(p1, p2,    o1, o2-y, color.new(180, 190, 200, 200 ))
    render.draw_line(p1, p2+1,  o1, o2+1-y, color.new(180, 190, 200, 200 ))
    render.draw_line(p1, p2+2,  o1, o2+2-y, color.new(180, 190, 200, 200))
    render.draw_line(p1, p2+2.4,o1, o2+2.4-y, color.new(180, 190, 200, 200))
    render.draw_line(p1, p2-y,  o1, o2+y, color.new(180, 190, 200, 200 ))
end


local texture = render.create_image(file.read("C:\\Gluttonous.lua\\gris.png"))


function on_draw()
if menu.get_int("Background")==2 then
    render.draw_image(0, 0, 722, 126, texture)
    local local_player = entitylist.get_local_player()
    if (local_player ~= nil) then
    local hp = local_player:get_prop_int("CBasePlayer", "m_iHealth")
    local hp_true = local_player:get_prop_int("CBasePlayer", "m_iHealth")

    if not engine.is_connected() then
        return end
   
    local t = globals.get_frametime() * (10 + math.abs(local_player:get_prop_int("CBasePlayer", "m_iHealth") - hp) * 1.3);

    if hp > local_player:get_prop_int("CBasePlayer", "m_iHealth") then
        hp = math.max(hp - t, local_player:get_prop_int("CBasePlayer", "m_iHealth"))
    elseif hp < local_player:get_prop_int("CBasePlayer", "m_iHealth") then
        hp = math.min(hp + t, local_player:get_prop_int("CBasePlayer", "m_iHealth"))
    end
       
    if (hp > 0) then
        
    end
    if hp == 100 then
        render.draw_circle_filled(712, 58, 5, 4, color.new(180, 190, 200,255))
    end
    if hp > 90 then
        local o_x = (712 - 666) * (1 - ((hp - 90) / 10))
        local o_y = (58 - 47) * (1 - ((hp - 90) / 10))
        render.draw_circle_filled(666, 47-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(394, 52-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(358, 41-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(232, 48-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(160, 64-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(131, 51-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(116, 65-y, 5, 4, color.new(180, 190, 200,255))
        draw_line(666, 47, 712 - o_x, 58 - o_y)
        draw_line(394, 52, 666, 47)
        draw_line(358, 41, 394, 52)
        draw_line(232, 48, 358, 41)
        draw_line(160, 64, 232, 48)
        draw_line(131, 51, 160, 64)
        draw_line(116, 65, 131, 51)
    elseif (hp > 50) then
        local o_x = (666 - 394) * (1 - (hp - 50) / 40)
        local o_y = (47 - 52) * (1 - (hp - 50) / 40)
        render.draw_circle_filled(394, 52-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(358, 41-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(232, 48-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(160, 64-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(131, 51-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(116, 65-y, 5, 4, color.new(180, 190, 200,255))
        draw_line(394, 52, 666 - o_x, 47 - o_y)

        draw_line(358, 41, 394, 52)
        draw_line(232, 48, 358, 41)
        draw_line(160, 64, 232, 48)
        draw_line(131, 51, 160, 64)
        draw_line(116, 65, 131, 51)
    elseif (hp > 40) then
        local o_x = (394 - 358) * ((hp - 50) / -10)
        local o_y = (52 - 41) * ((hp - 50) / -10)
        render.draw_circle_filled(358, 41-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(232, 48-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(160, 64-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(131, 51-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(116, 65-y, 5, 4, color.new(180, 190, 200,255))
        draw_line(358, 41, 394 - o_x, 52 - o_y)

        draw_line(232, 48, 358, 41)
        draw_line(160, 64, 232, 48)
        draw_line(131, 51, 160, 64)
        draw_line(116, 65, 131, 51)
    elseif (hp > 20) then
        local o_x = (358 - 232) * ((hp - 40) / -20)
        local o_y = (41 - 48) * ((hp - 40) / -20)
        render.draw_circle_filled(232, 48-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(160, 64-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(131, 51-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(116, 65-y, 5, 4, color.new(180, 190, 200,255))
        draw_line(232, 48, 358 - o_x, 41 - o_y)

        draw_line(160, 64, 232, 48)
        draw_line(131, 51, 160, 64)
        draw_line(116, 65, 131, 51)
    elseif (hp > 10) then
        local o_x = (232 - 160) * ((hp - 20) / -10)
        local o_y = (48 - 64) * ((hp - 20) / -10)
        render.draw_circle_filled(160, 64-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(131, 51-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(116, 65-y, 5, 4, color.new(180, 190, 200,255))
        draw_line(160, 64, 232 - o_x, 48 - o_y)

        draw_line(131, 51, 160, 64)
        draw_line(116, 65, 131, 51)
    elseif (hp > 5) then
        local o_x = (160 - 131) * ((hp - 10) / -5)
        local o_y = (64 - 51) * ((hp - 10) / -5)
        render.draw_circle_filled(131, 51-y, 5, 4, color.new(180, 190, 200,255))
        render.draw_circle_filled(116, 65-y, 5, 4, color.new(180, 190, 200,255))
        draw_line(131, 51, 160 - o_x, 64 - o_y)

        draw_line(116, 65, 131, 51)
    else
        if (hp > 0) then
            local o_x = (131 - 116) * ((hp - 5) / -5)
            local o_y = (51 - 65) * ((hp - 5) / -5)
            render.draw_circle_filled(116, 65-y, 5, 4, color.new(180, 190, 200,255))
            
            draw_line(116, 65, 131 - o_x, 51 - o_y)
        end
    end
end
end
end
client.add_callback("on_paint", on_draw)














----脚底灯
local ffi = require("ffi")
ffi.cdef [[
    typedef struct
    {
        unsigned char r, g, b;
        signed char exponent;
    } ColorRGBExp32;

    typedef struct
    {
        float x;
        float y;
        float z;
    } vec3_t;

    typedef struct
    {
        int     flags;
        vec3_t  origin;
        float   radius;
        ColorRGBExp32   color;
        float   die;
        float   decay;
        float   minlight;
        int     key;
        int     style;
        vec3_t  m_Direction;
        float   m_InnerAngle;
        float   m_OuterAngle;
    } dlight_t, *dlight_ptr_t;

    typedef dlight_ptr_t(__thiscall* alloc_dlight_t)(void*, int);
    typedef dlight_ptr_t(__thiscall* alloc_elight_t)(void*, int);
    typedef dlight_ptr_t(__thiscall* get_elight_by_key_t)(void*, int);
]]






local engine_effects = utils.create_interface("engine.dll", "VEngineEffects001")
local engine_effects_class = ffi.cast(ffi.typeof("void***"), engine_effects)
local engine_effects_vtbl = engine_effects_class[0]

local alloc_dlight = ffi.cast("alloc_dlight_t", engine_effects_vtbl[4])
local alloc_elight = ffi.cast("alloc_elight_t", engine_effects_vtbl[5])
local get_elight_by_key = ffi.cast("get_elight_by_key_t", engine_effects_vtbl[8])
local name = globals.get_username()
local user_type = "Beta"



client.add_callback("drawmodel", function ()
    if (user_type == "Beta") then
        local lp = entitylist.get_local_player()
        local idx = lp:get_index()
        local dlight = alloc_dlight(engine_effects_class, idx)

        if (menu.get_bool("Foot light")) then
            if not lp then
                return
            end
        if (menu.get_bool( "light rpb" )) then
            local r = math.floor(math.sin(globals.get_realtime() * 2) * 127 + 128)
            local g =  math.floor(math.sin(globals.get_realtime() * 2 + 2) * 127 + 128)
            local b = math.floor(math.sin(globals.get_realtime() * 2 + 4) * 127 + 128) 
            light_r,light_g,light_b = r,g,b 
        else
            local color = menu.get_color( "light color" )
            light_r,light_g,light_b = color:r(),color:g(),color:b()
        end
            

            local origin = lp:get_origin()
            local pos = {origin.x, origin.y, origin.z}

            

            dlight.flags = 0x2
            dlight.style = menu.get_int( "light style" )
            dlight.key = idx
            dlight.radius = menu.get_int( "light radius" )

            dlight.decay = 0x1
            dlight.origin = pos
            dlight.m_Direction = pos
            dlight.die = globals.get_tickcount() + 0.1
            
            
            dlight.color.r = light_r
            dlight.color.g = light_g
            dlight.color.b = light_b
            dlight.color.exponent = menu.get_int( "exponent" )
        else
            dlight.radius = 0
            dlight.color.exponent = 0

        end
    end
end)


















------增强peek


function setmovement(xz,yz,cmd)
    local curpos = vector.new()
    local local_player = entitylist.get_local_player()
    local current_pos = local_player:get_origin()
    local yaw = engine.get_view_angles().y

    local vector_forward = { 
        x = current_pos.x - xz,
        y = current_pos.y - yz,
    }
     
    local velocity = {
        x = -(vector_forward.x * math.cos(yaw / 180 * math.pi) + vector_forward.y * math.sin(yaw / 180 * math.pi)),
        y = vector_forward.y * math.cos(yaw / 180 * math.pi) - vector_forward.x * math.sin(yaw / 180 * math.pi),
    }
    cmd.forwardmove = velocity.x * 15
    cmd.sidemove = velocity.y * 15
end;

client.add_callback( "create_move", function(cmd)
    local localplayer = entitylist.get_local_player();
    local forw = bit.band(cmd.buttons, 8) == 8;
    local back = bit.band(cmd.buttons, 16) == 16;
    local righ = bit.band(cmd.buttons, 512) == 512;
    local left = bit.band(cmd.buttons, 1024) == 1024;
    local apeek = menu.get_key_bind_state( "misc.automatic_peek_key" );
    local originalpos = localplayer:get_origin();
    local OnGround = bit.band(localplayer: get_prop_int("CBasePlayer","m_hGroundEntity"), 1);

    if OnGround == 1 or bit.band(cmd.buttons, buttons.in_jump) == buttons.in_jump then -- air check
        air = true
    else
        air = false
    end
    if apeek == false then
        curpos = localplayer:get_origin();
    end
    if menu.get_bool( "Enhanced Auto Peek"  ) then
        if apeek == false then
            menu.set_bool( "misc.fast_stop", true );
        else
            if forw == false and back == false and left == false and righ == false and math.floor(curpos.x) ~= math.floor(originalpos.x) and math.floor(curpos.y) ~= math.floor(originalpos.y) and air == false then
                menu.set_bool( "misc.fast_stop", false );
                setmovement(curpos.x,curpos.y, cmd);
            else
                menu.set_bool( "misc.fast_stop", true );
            end
        end
    end
end)










-------组名
local ffi = require "ffi"
ffi.cdef[[
    typedef int(__fastcall* clantag_t)(const char*, const char*);
]]
local fn_change_clantag = utils.find_signature("engine.dll", "53 56 57 8B DA 8B F9 FF 15")
local set_clantag = ffi.cast("clantag_t", fn_change_clantag)
function round(num, numDecimalPlaces)
    local mult = 10^(numDecimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
end
local animation = {
  "G",
  "Gl",
  "Glu",
  "Glut",
  "Glutt",
  "Glutto",
  "Glutton",
  "Gluttono",
  "Gluttonou",
  "Gluttonous",
  "Gluttonous.",
  "Gluttonous.l",
  "Gluttonous.lu",
  "Gluttonous.lua",
  "G3<tt0l0us.lu4",
  "Gluttonous.lua",
  "Gluttonous.lu",
  "Gluttonous.l",
  "Gluttonous.",
  "Gluttonous",
  "Gluttonou",
  "Gluttono",
  "Glutton",
  "Glutto",
  "Glutt",
  "Glut",
  "Glu",
  "Gl",
  "G",
  "",

  
                        
}

local old_time = 0
client.add_callback("on_paint", function()

    local curtime = math.floor(globals.get_curtime() * 1)
    if old_time ~= curtime and (globals.get_tickcount() % 2) == 1 then
        set_clantag(animation[curtime % #animation+1], animation[curtime % #animation+1])
       old_time = curtime
    end

end)




----击杀
local kill_says = {
    "[Gluttonous 小助手]击杀成功！",
    "[Gluttonous 小助手]击杀成功！",

}

local death_says = {
    "[Gluttonous 小助手]挨打了呜呜呜！",
    "[Gluttonous 小助手]挨打了呜呜呜！",
}

function killsay()
    local random_phrase = kill_says[math.random(1,#kill_says)]
    console.execute("say "..random_phrase)
end

function deathsay()
    local random_phrase = death_says[math.random(1,#death_says)]
    console.execute("say "..random_phrase)
end

function check_death(e)
    local lc = engine.get_local_player_index()
    local attacker = engine.get_player_for_user_id(e:get_int("attacker"))
    local attacked = engine.get_player_for_user_id(e:get_int("userid"))
    if attacker == lc and lc ~= attacked then
        killsay()
    end
    if attacked == lc and attacker ~= lc then
        deathsay()
    end
end

events.register_event( "player_death" , function(e)
    check_death(e)
end)







-- Made by Immortale

menu.add_check_box("Enable shot list")
menu.add_color_picker("Shot list color")
menu.add_slider_int("Shot list position X", 0, engine.get_screen_width())
menu.add_slider_int("Shot list position Y", 0, engine.get_screen_height())

local id = 0
local font = render.create_font("Verdana", 12, 100, true, false, false)

local aim_table =
{

}

local function shot(shot_info)
    for i = 16, 2, -1 do
        aim_table[i] = aim_table[i-1]
    end

    local damage = shot_info.server_damage

    if damage == 0 then
        damage = "0"
    end

    local backtrack = shot_info.backtrack_ticks

    if backtrack == 0 then
        backtrack = "0 ticks"
    else
        backtrack = backtrack .. " ticks"
    end

    local hitbox = shot_info.server_hitbox

    if hitbox == "None" then
        hitbox = "-"
    end

    local result = shot_info.result

    if result == "Hit" then
        result = "Hit"
    else
        hitbox = shot_info.client_hitbox
    end

    local gpinf = engine.get_player_info
    local target = shot_info.target_index
    local target_name = gpinf(target).name

    id = id + 1;

    aim_table[1] =
    {
        ["id"] = id,
        ["player"] = string.sub(target_name, 0, 10),
        ["dmg"] = damage,
        ["bt"] = backtrack,
        ["box"] = hitbox,
        ["rs"] = result
    }
end


local function draw_table(count, x, y, data)
    if data then
        local y = y + 4
        local pitch = x + 10
        local yaw = y + 15 + count * 16
        local r, g, b = 0, 0, 0
 
        if data.rs == "Hit" then
            r, g, b = 94, 230, 75
        elseif data.rs == "Resolver" then
            r, g, b = 245, 127, 23
        else
            r, g, b = 118, 171, 255
        end

        render.draw_rect_filled(x, yaw, 2, 15, color.new(r, g, b, 255))
        render.draw_text(font, pitch - 3, yaw + 1, color.new(255, 255, 255, 255), tostring(data.id))
        render.draw_text(font, pitch + 33, yaw + 1, color.new(255, 255, 255, 255), tostring(data.player))
        render.draw_text(font, pitch + 94, yaw + 1, color.new(0, 255, 0, 255), tostring(data.dmg))
        render.draw_text(font, pitch + 143, yaw + 1,color.new(255, 255, 255, 255), tostring(data.box))
        render.draw_text(font, pitch + 209, yaw + 1, color.new(255, 255, 255, 255), tostring(data.bt))
        render.draw_text(font, pitch + 282, yaw + 1, color.new(209, 228, 34, 255), tostring(data.rs))

        return count + 1
    end
end

local function paint()
    if menu.get_bool("Enable shot list") then
        local x, y, d = menu.get_int("Shot list position X"), menu.get_int("Shot list position Y"), 0
        local n = 16
        local col_sz = 23 + 16 * (#aim_table > n and n or #aim_table)

        if id > 0 then
            render.draw_rect_filled(x, y, 340, col_sz, color.new(22, 20, 26, 100))
        else
            render.draw_rect_filled(x, y, 340, 15, color.new(22, 20, 26, 100))
        end

        local color = menu.get_color("Shot list color")

        render.draw_rect_filled(x, y, 340, 15, color.new(22, 20, 26, 170))
        render.draw_rect_filled(x, y, 340, 2, color.new(color:r(), color:g(), color:b(), 255))
        render.draw_text(font, x + 7, y + 2, color.new(255, 255, 255, 255), "ID")
        render.draw_text(font, x + 43, y + 2, color.new(255, 255, 255, 255), "PLAYER")
        render.draw_text(font, x + 104, y + 2, color.new(255, 255, 255, 255), "DMG")
        render.draw_text(font, x + 153, y + 2, color.new(255, 255, 255, 255), "HITBOX")
        render.draw_text(font, x + 219, y + 2, color.new(255, 255, 255, 255), "BACKTRACK")
        render.draw_text(font, x + 292, y + 2, color.new(255, 255, 255, 255), "REASON")

        for i = 1,16, 1 do
            d = draw_table(d, x, y, aim_table[i])
        end
    end
end

client.add_callback("on_shot", shot)
client.add_callback("on_paint", paint)













----日志

local ffi = require("ffi")

ffi.cdef[[
    void* GetProcAddress(void* hModule, const char* lpProcName);
    void* GetModuleHandleA(const char* lpModuleName);
 
    typedef struct {
        uint8_t r;
        uint8_t g;
        uint8_t b;
        uint8_t a;
    } color_struct_t;

    typedef void (*console_color_print)(const color_struct_t&, const char*, ...);
]]

local ffi_helpers = {
    color_print_fn = ffi.cast("console_color_print", ffi.C.GetProcAddress(ffi.C.GetModuleHandleA("tier0.dll"), "?ConColorMsg@@YAXABVColor@@PBDZZ")),
    color_print = function(self, text, color)
        local col = ffi.new("color_struct_t")

        col.r = color:r()
        col.g = color:g()
        col.b = color:b()
        col.a = color:a()

        self.color_print_fn(col, text)
    end
}

local function coloredPrint(color, text)
    ffi_helpers.color_print(ffi_helpers, text, color)
end



local function baselogs(SI)

    local result = SI.result
    local backtrack = SI.backtrack_ticks
    local safe = tostring(SI.safe)
    local hitbox = SI.client_hitbox
    local damage = SI.server_damage
    local target = SI.target_index
    local hitchance = SI.hitchance
    local info_player = engine.get_player_info
    local target_name = info_player(target).name
  
  
    if result == "Resolver" then
        console.execute("clear")
        coloredPrint(color.new(255,0,0),"空解析 | 命中部位 ["..hitbox.."] 命中率 ["..hitchance.."] 伤害 ["..damage.."] 敌人 ["..target_name.."] 回溯 ["..backtrack.." t] 安全点 ["..safe.."]")
    end
  
    if result == "Hit" then
        console.execute("clear")
        coloredPrint(color.new(0,255,0),"命中部位 "..target_name.." 敌人 "..damage.." 伤害 "..hitbox.." 命中率 ["..hitchance.."] 回溯 ["..backtrack.." tick] 安全点 ["..safe.."]")
    end
  
    if result == "spread" then
        console.execute("clear")
        coloredPrint(color.new(255,0,0),"空扩散 | 命中部位 ["..hitbox.."] 命中率 ["..hitchance.."] 伤害覆盖 ["..damage.."] 敌人 ["..target_name.."] 回溯 ["..backtrack.." t] 安全点 ["..safe.."]")
    end
  
    if result == "None" then
        console.execute("clear")
        coloredPrint(color.new(255,0,0),"空死亡 | 命中部位 ["..hitbox.."] 命中率 ["..hitchance.."] 伤害覆盖 ["..damage.."] 敌人 ["..target_name.."] 回溯 ["..backtrack.." t] 安全点 ["..safe.."]")
    end
  
    if result == "Occlusion" then
        console.execute("clear")
        coloredPrint(color.new(255,0,0),"错过射击 | 命中部位 ["..hitbox.."] 命中率 ["..hitchance.."] 伤害覆盖 ["..damage.."] 敌人 ["..target_name.."] 回溯 ["..backtrack.." t] 安全点 ["..safe.."]")
    end
  end
  
  client.add_callback("on_shot", baselogs)















console.execute("clear")
print("================================")
print("lua 加载成功")
print(" 欢迎使用 Gluttonous.lua V1 " .. username .. "!")
print(" 当前版本 12.17")
print("================================")



