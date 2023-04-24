function getgenv()
    local genv = {}
    local genvMeta = {
        __index = function(_, key)
            return _G[key]
        end,
        __newindex = function(_, key, value)
            _G[key] = value
        end,
        __metatable = false
    }
    setmetatable(genv, genvMeta)
    return genv
end

getgenv().Test = "HI!"
