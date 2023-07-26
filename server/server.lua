ESX = exports["es_extended"]:getSharedObject()

-- Create Database
Citizen.CreateThread(function()
    MySQL.Async.execute(
        "CREATE TABLE IF NOT EXISTS `grew_licenses` ( " ..
        "`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, " ..
        "`type` VARCHAR(50) NOT NULL, " ..
        "`owner` VARCHAR(50) NOT NULL," ..
        "`doi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP" ..
        ") ENGINE = InnoDB DEFAULT CHARSET=latin1;",
        {}, function(rowsChanged) end
    )
end)
