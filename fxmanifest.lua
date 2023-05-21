fx_version 'cerulean'
lua54 'yes'
game 'gta5'


description ''
author 'Grewo'
version '0.0.0'

shared_script {
	'@es_extended/imports.lua',
	'@es_extended/locale.lua',
}


server_scripts {
	--'@oxmysql/lib/MySQL.lua', -- TODO

	'locales/en.lua',

	'config.lua',

	'server/server.lua',
	'checkVersion.lua',
}

client_scripts {
	--'@NativeUILua/NativeUI.lua', -- TODO

	'locales/en.lua',

	'config.lua',

	'client/client.lua',
}

dependency {
	'es_extended',
	--'oxmysql', -- TODO
	--'NativeUILua', -- TODO
	--'zf_dialog', -- TODO
	--'swt_notifications', -- TODO
}

escrow_ignore {
	'config.lua',
	'README.md',
	'locales/en.lua'
}
