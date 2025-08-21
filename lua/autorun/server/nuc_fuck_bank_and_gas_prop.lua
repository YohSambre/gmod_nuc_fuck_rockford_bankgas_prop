local tModels = {
    ["models/props_unique/atm01.mdl"] = true,
    ["models/statua/shell/shellpump1.mdl"] = true,
}

hook.Add("OnEntityCreated", "fuck_atm_gas_prop", function(eEntity)
    timer.Simple(0, function() -- If we don't set a timer, then the eEntity model will be nil.
        if not IsValid(eEntity) then return end

        if tModels[eEntity:GetModel()] then
            SafeRemoveEntityDelayed(eEntity, 0)
        end
    end)
end)