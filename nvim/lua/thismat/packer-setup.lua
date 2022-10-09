local packer_bootstrap = require('thismat.bootstrap').ensure_packer();

local plugins = require('thismat.plugins')

return require('packer').startup(function(use)
  for _, plugin in ipairs(plugins) do
    use(plugin)
  end

  if packer_bootstrap then
          require('packer').sync()
  end
end)
