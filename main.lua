commands:Register("discord", function(playerid)
    local player = GetPlayer(playerid)
    if not player then return end

    player:SendMsg(MessageType.Chat, string.format(config:Fetch("cmds.discord")))
end)

commands:Register("forum", function(playerid)
    local player = GetPlayer(playerid)
    if not player then return end

    player:SendMsg(MessageType.Chat, string.format(config:Fetch("cmds.forum")))
end)

commands:Register("steamgroup", function(playerid)
    local player = GetPlayer(playerid)
    if not player then return end

    player:SendMsg(MessageType.Chat, string.format(config:Fetch("cmds.steamgroup")))
end)

commands:Register("connect", function(playerid)
    local player = GetPlayer(playerid)
    if not player then return end
    
    player:SendMsg(MessageType.Chat, string.format(config:Fetch("cmds.dns")))
end)

commands:Register("reloadconfig", function(playerid)
    if playerid == -1 then
        config:Reload("cmds")
        print(string.format(config:Fetch("cmds.success")))
    else
        local player = GetPlayer(playerid)
        if not player then return end
        player:SendMsg(MessageType.Chat, string.format(config:Fetch("cmds.noaccess")))
    end
end)

function GetPluginAuthor()
    return "rol3x1337"
end

function GetPluginVersion()
    return "1.0.1"
end

function GetPluginName()
    return "Chat CMD"
end

function GetPluginWebsite()
    return "https://github.com/rol3x1337/swiftly_chatcmd"
end
