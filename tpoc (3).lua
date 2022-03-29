require "moonloader"
local vkeys = require 'vkeys'

local act = false

function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then return end
	while not isSampAvailable() do wait(100) end
	sampAddChatMessage("[ТPOC]: Активация / Деактивация - /tpoc", 0xFFFFFF )
	sampRegisterChatCommand("tpoc", function()
		act = not act
		printStringNow("TCP poc "..(act and "enabled" or "disabled"), 500)
	end)
	while true do
		wait(0)
		if act then
		if not sampIsChatInputActive() then
					 setCharCoordinates(PLAYER_PED,239.24711608887, 2026.9959716797, 17.647899627686)
					 wait(111)
					 setGameKeyState(21,255)
					 wait(111)
					 setCharCoordinates(PLAYER_PED,257.76010131836, 2012.9815673828, 17.640600204468)
					 wait(111)
					 setGameKeyState(21,255)
					 wait(111)
		end
		end
	end
end
