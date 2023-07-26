fx_version 'cerulean'
lua54 'yes'
game 'gta5'


description 'Licenses System for FiveM'
author 'Grewo'
version '1.0.0'

shared_script {
	'@es_extended/imports.lua',
	'@es_extended/locale.lua',
}


server_scripts {
	'@oxmysql/lib/MySQL.lua',

	'locales/en.lua',

	'config.lua',

	'server/sv_get.lua',
	'server/sv_add.lua',
	'server/sv_has.lua',
	'server/server.lua',
	'checkVersion.lua',
}

dependency {
	'es_extended',
	'oxmysql',
}

server_export {
	'getUserLicenses',
	'getLicenses',
	'hasLicenses',
	'hasLicenses',
	'addUserLicense',
}

escrow_ignore {
	'config.lua',
	'README.md',
	'locales/en.lua'
}
