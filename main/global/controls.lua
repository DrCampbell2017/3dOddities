CONTROLS = {}

local displayIndex = 1

local function makeControlTable( name, key )
	local info = {}
	info.name = name
	info.key = key
	info.key_default = key -- if the player needs to reset the controls
	info.index = displayIndex
	displayIndex = displayIndex + 1 -- for displaying in the settings
	return info
end

-- List of controls on the game, settings will display them in this order
CONTROLS.full_screen = makeControlTable( "Toggle Full Screen", hash("key_tab"))
CONTROLS.open_settings = makeControlTable( "Open Settings", hash("key_esc"))

CONTROLS.toggle_drunk = makeControlTable( "Toggle Drunk", hash("key_i"))

-- move set 1
CONTROLS.move_up = makeControlTable( "Move Up", hash("key_up"))
CONTROLS.move_down = makeControlTable( "Move Down", hash("key_down"))
CONTROLS.move_left = makeControlTable( "Move Left", hash("key_left"))
CONTROLS.move_right = makeControlTable( "Move Right", hash("key_right"))

-- move set 2
CONTROLS.move_up_2 = makeControlTable( "Move Up 2", hash("key_w"))
CONTROLS.move_down_2 = makeControlTable( "Move Down 2", hash("key_s"))
CONTROLS.move_left_2 = makeControlTable( "Move Left 2", hash("key_a"))
CONTROLS.move_right_2 = makeControlTable( "Move Right 2", hash("key_d"))

-- jump
CONTROLS.jump = makeControlTable( "Jump", hash("key_space"))
CONTROLS.jump_2 = makeControlTable( "Jump 2", hash("key_up"))
CONTROLS.jump_3 = makeControlTable( "Jump 3", hash("key_w"))

-- Control functions
function CONTROLS.INIT()
	local functionValue = type( CONTROLS.INIT )
	for key, value in pairs(CONTROLS) do
		if type(value) ~= functionValue then
			value.key = value.key_default
		end
	end
end


