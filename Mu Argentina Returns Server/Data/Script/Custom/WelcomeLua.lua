---------------------------------------------------------------------------
-- WelcomeLua - Comando de Bienvenida
---------------------------------------------------------------------------

BridgeFunctionAttach("OnCommandManager", "WelcomeLua_OnCommandManager")

function WelcomeLua_OnCommandManager(aIndex, arg)
    if arg == "/welcomelua" then
        MoveUserEx(aIndex, MAP_LORENCIA, 135, 135)
        NoticeSend(aIndex, 0, "Welcome Lua to MSPro")
        NoticeSend(aIndex, 0, "Visit www.muserverpro.com")
        return 1
    end
    return 0
end