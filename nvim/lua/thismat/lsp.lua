local submodules = {
	'completion', -- Completion
        'lua',
        'powershell_es',
        'astro',
        'cssls',
        'html',
        'tsserver'
}

for _, submodule in ipairs(submodules) do
	require('thismat.lsp.' .. submodule)
end

