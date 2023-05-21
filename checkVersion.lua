local resourceName = GetCurrentResourceName()
if Config.CheckVersion then
    Citizen.CreateThread(function()
        resourceVersion = GetResourceMetadata(resourceName, "version",0)
    
        PerformHttpRequest("http://grew-development.de/skript-versions/" .. resourceName .. ".txt", function (errorCode, version, resultHeaders)
            if version ~= nil then
                if 'v' .. resourceVersion == 'v' .. version then
                    print("[^2INFO^0] \"" .. resourceName .. "\" is uptodate!")
                else
                    print("^3[WARNING] \"" .. resourceName .. "\" is NOT uptodate!")
                    print("^3[WARNING] Last Version: v" .. version)
                    print("^3[WARNING] Your Version: v" .. resourceVersion .. "^0")
                end
            else
                print("^3[WARNING] Your Resource \"" .. resourceName .. "\" haven't a VersionChecker.^0")
                print("^3[WARNING] Please Contact the Author from Script.^0")
            end
        end, "GET")
    end)
else
    print("[^3WARNING^0] Script \"" .. resourceName .. "\" Versioncheck is offline! Read the Config-file to activate")
end
