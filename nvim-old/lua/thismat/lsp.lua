local submodules = {
  'completion', -- Completion
  'lua',
  'powershell_es',
  'astro',
  'cssls',
  'html',
  'tsserver',
  'jsonls'
}

require('thismat.loader').load(submodules, {'lsp'});
