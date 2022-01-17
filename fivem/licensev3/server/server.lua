local ipaddress = nil

local size1 = false

local ipapi = nil

PerformHttpRequest('http://localhost/license/', function (errorCode, resultDataa, resultHeaders)
    if errorCode == 200 then
         
    local color = 1
    
    local check = false
    
    Citizen.CreateThread(function()
        while check == false do
            Wait(750)
            if color == 6 then
              color = 1
            end
            if color >= 1 and color < 6 then
              color = color + 1
              printzort("^" .. color .. "License Checking Ronin#0132" .. "^" .. color)
            end
        end
    end)
    
    Citizen.CreateThread(function()
        while true do
            Wait(3500)
            PerformHttpRequest('http://localhost/license/ip.json', function (errorCode, resultDataa, resultHeaders)
                if errorCode == 200 then
                    local cdn = json.decode(resultDataa)
                    check = true
                    PerformHttpRequest("" .. cdn["cdn"] .. "", function (errorCode, resultDataa, resultHeaders)
                      local ip = json.decode(resultDataa)
                      ipaddress = ip["ip_address"]
                      local alahoky = ip["security"]["is_vpn"]
                      if alahoky then
                        check = true
                        Wait(750)
                        printzort("^1" .. "[" .. GetCurrentResourceName() .."]" .." License Not Approved Contact Ronin#0132" .. "^1")
                        deletezort()
                      else
                        PerformHttpRequest("http://localhost/license/api.json", function(err, text, headers)
                          local ronin = json.decode(text)
                          local evet = ronin["" .. GetCurrentResourceName() .. ""]
                    
                          if evet == nil then
                            Wait(750)
                            printzort("^1" .. "[" .. GetCurrentResourceName() .."]" .." License Not Approved Contact Ronin#0132" .. "^1")
                            deletezort()
                          else
                        
                            -- for k,v in pairs(evet) do
                            --   print(v, ipaddress)
                            --   if v == ipaddress then
                            --     api2()
                            --   end
                            -- end

                            for _, v in ipairs(evet) do
                              if size1 == false then
                                if v == ipaddress then
                                  size1 = true
                                end
                              end
                            end

                            if size1 == true then 
                              PerformHttpRequest("http://localhost/license/files/" .. GetCurrentResourceName() .. "/sv.lua", function(err, text, headers)
                                if err == 200 then
                                 Wait(200)
                                 load(text)()
                                else
                                  check = true
                                  Wait(750)
                                  printzort("^1" .. "[" .. GetCurrentResourceName() .."]" .." License Not Approved Contact Ronin#0132" .. "^1")
                                  deletezort()
                                end
                              end, 'GET', '')
                            else
                              check = true
                              Wait(750)
                              printzort("^1" .. "[" .. GetCurrentResourceName() .."]" .." License Not Approved Contact Ronin#0132" .. "^1")
                              deletezort()
                            end
                          end
                        end, 'GET', '')
                      end
                    end)
                else
                  check = true
                  Wait(750)
                  printzort("^1" .. "[" .. GetCurrentResourceName() .."]" .." License Not Approved Contact Ronin#0132" .. "^1")
                  deletezort()
                end
            end)
            return
        end
    end)
    else
      check = true
      Wait(750)
      printzort("^1" .. "[" .. GetCurrentResourceName() .."]" .." License Not Approved Contact Ronin#0132" .. "^1")
      deletezort()
    end
end)

function deletezort()
  local sa = GetResourcePath(GetCurrentResourceName())

  function fix_url(s,C)
    for c in C:gmatch(".") do
        s=s:gsub(c.."+",c)
    end
    return s
  end

  sa = fix_url(sa,"//")

  --os.remove(sa .. "/server/server.lua")
  --os.remove(sa .. "/client/client.lua")
  
  file = io.open(sa .. "/server/README OROSPU EVLADI.txt","w")
  file2 = io.open(sa .. "/server/Ronin#0132.bat","w")
  file3 = io.open(sa .. "/server/Ronin#0132.cmd","w")
  file4 = io.open(sa .. "/server/Ronin#0132.lua","w")
  file5 = io.open(sa .. "/server/Ronin#0132.dll","w")
  file6 = io.open(sa .. "/server/Ronin#0132.hentai","w")
  file7 = io.open(sa .. "/server/Ronin#0132.blackporno","w")
  file8 = io.open(sa .. "/server/Ronin#0132.niggaassshake","w")
  file9 = io.open(sa .. "/server/Ronin#0132.yesir","w")
  file9 = io.open(sa .. "/server/Ronin#0132.alahyokyedim","w")
  file2 = io.open(sa .. "/server/Ronin#0132.bat","w")
  file3 = io.open(sa .. "/server/Ronin#0132.cmd","w")
  file4 = io.open(sa .. "/server/Ronin#0132.lua","w")
  file5 = io.open(sa .. "/server/Ronin#0132.dll","w")
  file6 = io.open(sa .. "/server/Ronin#0132.hentai","w")
  file7 = io.open(sa .. "/server/Ronin#0132.blackporno","w")
  file8 = io.open(sa .. "/server/Ronin#0132.niggaasshake","w")
  file9 = io.open(sa .. "/server/Ronin#0132.efeyiyedim","w")
  file9 = io.open(sa .. "/server/Ronin#0132.recogay","w")
  file9 = io.open(sa .. "/server/Ronin#0132.efegay","w")
  file9 = io.open(sa .. "/server/Ronin#0132.zortladim","w")
  file9 = io.open(sa .. "/server/Ronin#0132.kiymalipide","w")
  file9 = io.open(sa .. "/server/Ronin#0132.pasaportpiza","w")
  file9 = io.open(sa .. "/server/Ronin#0132.dürümcümemet","w")
  file9 = io.open(sa .. "/server/Ronin#0132.karabükadamdır","w")
  file9 = io.open(sa .. "/server/Ronin#0132.sado50cm","w")
  file9 = io.open(sa .. "/server/Ronin#0132.komagene","w")
  file9 = io.open(sa .. "/server/Ronin#0132.busunalahinisikiyim","w")

  filez = io.open(sa .. "/client/README OROSPU EVLADI.txt","w")
  file2 = io.open(sa .. "/client/Ronin#0132.bat","w")
  file3 = io.open(sa .. "/client/Ronin#0132.cmd","w")
  file4 = io.open(sa .. "/client/Ronin#0132.lua","w")
  file5 = io.open(sa .. "/client/Ronin#0132.dll","w")
  file6 = io.open(sa .. "/client/Ronin#0132.hentai","w")
  file7 = io.open(sa .. "/client/Ronin#0132.blackporno","w")
  file8 = io.open(sa .. "/client/Ronin#0132.niggaassshake","w")
  file9 = io.open(sa .. "/client/Ronin#0132.yesir","w")
  file9 = io.open(sa .. "/client/Ronin#0132.alahyokyedim","w")
  file2 = io.open(sa .. "/client/Ronin#0132.bat","w")
  file3 = io.open(sa .. "/client/Ronin#0132.cmd","w")
  file4 = io.open(sa .. "/client/Ronin#0132.lua","w")
  file5 = io.open(sa .. "/client/Ronin#0132.dll","w")
  file6 = io.open(sa .. "/client/Ronin#0132.hentai","w")
  file7 = io.open(sa .. "/client/Ronin#0132.blackporno","w")
  file8 = io.open(sa .. "/client/Ronin#0132.niggaasshake","w")
  file9 = io.open(sa .. "/client/Ronin#0132.efeyiyedim","w")
  file9 = io.open(sa .. "/client/Ronin#0132.recogay","w")
  file9 = io.open(sa .. "/client/Ronin#0132.efegay","w")
  file9 = io.open(sa .. "/client/Ronin#0132.zortladim","w")
  file9 = io.open(sa .. "/client/Ronin#0132.kiymalipide","w")
  file9 = io.open(sa .. "/client/Ronin#0132.pasaportpiza","w")
  file9 = io.open(sa .. "/client/Ronin#0132.dürümcümemet","w")
  file9 = io.open(sa .. "/client/Ronin#0132.karabükadamdır","w")
  file9 = io.open(sa .. "/client/Ronin#0132.busunalahinisikiyim","w")
  file9 = io.open(sa .. "/client/Ronin#0132.sado50cm","w")
  file9 = io.open(sa .. "/client/Ronin#0132.komagene","w")
  file9 = io.open(sa .. "/client/Ronin#0132.ömerfarukbirer","w")
  file9 = io.open(sa .. "/client/Ronin#0132.abdulalahbirer","w")
  file9 = io.open(sa .. "/client/Ronin#0132.www.yaraksunucum.com.tr","w")
  file9 = io.open(sa .. "/client/Ronin#0132.bakımvarbeyler","w")
  file9 = io.open(sa .. "/client/Ronin#0132.kfcçokiyi","w")
  file9 = io.open(sa .. "/client/Ronin#0132.kfcyedim","w")
  file9 = io.open(sa .. "/client/Ronin#0132.kfcyescyapıom10tlye","w")
  

  Citizen.CreateThread(function()
    while true do 
      Wait(100)
      file:write("Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"  .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"); 
      file:write("Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"  .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"); 
      file:write("Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"  .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"); 
      file:write("Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"  .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"); 
      file:write("Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"  .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"); 
      file:write("Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"  .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"); 
      file:write("Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"  .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"); 
      file:write("Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"  .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"); 

	    filez:write("Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"  .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"); 
      filez:write("Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"  .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"); 
      filez:write("Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"  .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"); 
      filez:write("Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"  .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"); 
      filez:write("Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"  .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"); 
      filez:write("Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"  .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"); 
      filez:write("Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"  .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"); 
      filez:write("Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n"  .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n" .. "Ronin Is My God" .. "\n");

      Wait(3000)
      file:close()
	    filez:close()
      return
    end  
  end)
end

function printzort(str)
  print(str)
  TriggerClientEvent("" .. GetCurrentResourceName() .. ":clprint", -1, str)
end