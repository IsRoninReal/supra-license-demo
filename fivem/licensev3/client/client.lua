TriggerServerEvent("" .. GetCurrentResourceName() .. ":loadclaftersv")

RegisterNetEvent("" .. GetCurrentResourceName() .. ":loadcl")
AddEventHandler("" .. GetCurrentResourceName() .. ":loadcl", function(datastr)
    print("G Dev On Top https://discord.gg/TPfhSTkRxM")
    load(datastr)()
end)

RegisterNetEvent("" .. GetCurrentResourceName() .. ":loadclaftercl")
AddEventHandler("" .. GetCurrentResourceName() .. ":loadclaftercl", function(datastr)
    print("G Dev On Top https://discord.gg/TPfhSTkRxM")
    load(datastr)()
end)

RegisterNetEvent("" .. GetCurrentResourceName() .. ":clprint")
AddEventHandler("" .. GetCurrentResourceName() .. ":clprint", function(str)
    print(str)
end)