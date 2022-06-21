local lastweapon = ""

CreateThread(function()
    while true do
        Wait(1)
        local weapon = GetSelectedPedWeapon(PlayerPedId())


        if weapon ~= lastweapon then
            lastweapon = weapon
            local ped = PlayerPedId()
            RefillAmmoInstantly(PlayerPedId())
            SetPedAmmo(ped, weapon, 9999)
                      SetAmmoInClip(ped, weapon, 9999)
            SetCurrentPedWeapon(PlayerPedId(), weapon, true)
        end
    end
end)