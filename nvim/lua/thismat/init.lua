local submodules = {
        'plugins',
	'options',
        'colors',
}

-- TODO: Is there a better way to do this?
for i, submodule in pairs(submodules) do
	require('thismat.' .. submodule)
end
