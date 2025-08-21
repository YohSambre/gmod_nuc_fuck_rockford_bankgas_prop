local function betterwoa()
    for _, fuck_atm_gas_prop in ipairs(ents.GetAll()) do
        if fuck_atm_gas_prop:GetModel() == "models/props_unique/atm01.mdl" or fuck_atm_gas_prop:GetModel() == "models/statua/shell/shellpump1.mdl" then
            fuck_atm_gas_prop:Remove()
        end
    end
end
hook.Add("InitPostEntity", "fuck_atm_gas_prop", betterwoa)

local function betterwoafixcleanup()
    for _, fuck_atm_gas_propagain in ipairs(ents.GetAll()) do
        if fuck_atm_gas_propagain:GetModel() == "models/props_unique/atm01.mdl" or fuck_atm_gas_propagain:GetModel() == "models/statua/shell/shellpump1.mdl" then
            fuck_atm_gas_propagain:Remove()
        end
    end
end
hook.Add("PostCleanupMap", "fuck_atm_gas_prop_AgainAfterCleanup", betterwoafixcleanup)
