function hasLicenses(type, owner)
    licenses = MySQL.Sync.fetchAll("SELECT * FROM `grew_licenses` WHERE `owner` = @owner", {
        ['@owner'] = owner,
    })

    for i, v in ipairs(licenses) do
        if v.type == type then
            return true    
        end
    end

    return false
end
