local submodules = {
	'completion', -- Completion
        'lua',
        'powershell_es',
}

for _, submodule in ipairs(submodules) do
	require('thismat.lsp.' .. submodule)
end

