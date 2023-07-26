function addUserLicense(type, owner)
    local sql = "INSERT INTO `grew_licenses` (`type`, `owner`) " ..
    "SELECT @type, @owner FROM DUAL " ..
    "WHERE NOT EXISTS (SELECT * FROM `grew_licenses` " ..
          "WHERE `type`=@type AND `owner`=@owner LIMIT 1) "
    
    local result = MySQL.Sync.execute(sql, {
        ['@type'] = type,
        ['@owner'] = owner,
    })

    if result >= 1 then 
        return true
    end

    return false
end
