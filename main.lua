commands:Register("discord", function(playerid)
    local player = GetPlayer(playerid)
    if not player then return end

    player:SendMsg(MessageType.Chat, string.format(config:Fetch("cmds.discord")))
end)

commands:Register("connect", function(playerid)
    local player = GetPlayer(playerid)
    if not player then return end

    player:SendMsg(MessageType.Chat, string.format(config:Fetch("cmds.dns")))
end)

function GetPluginAuthor()
    return "rol3x1337"
end

function GetPluginVersion()
    return "1.0.0"
end

function GetPluginName()
    return "Chat CMD"
end

function GetPluginWebsite()
    return "https://github.com/rol3x1337/swiftly_chatcmd"
end
