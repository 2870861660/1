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
