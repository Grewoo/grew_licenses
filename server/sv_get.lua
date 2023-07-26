function getUserLicenses(owner)
    return MySQL.Sync.fetchAll("SELECT * FROM `grew_licenses` WHERE `owner` = @owner", {
        ['@owner'] = owner,
    })
end
