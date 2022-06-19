local submodules = {
	'completion', -- Completion
        'lua',
}

for _, submodule in ipairs(submodules) do
	require('thismat.lsp.' .. submodule)
end

