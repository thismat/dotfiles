local loader = {}

---Loads a table of modules into a namespace
---@param namespace table
---@param submodules table
function loader.load(--[[required]]submodules, --[[optional]]namespace)
  for _, module in ipairs(submodules) do
    if (namespace == nil) then
      require('thismat.'..'.' .. module)
    else
      require('thismat.'.. table.concat(namespace, '.') .. '.' .. module)
    end
  end
end

return loader
