local M = {}

local colorOptions = {
        italic_coments = true,
        italic_keywords = true,
        italic_functions = true,
        tokyonight_italic_variables = true,
        dark_float = true
}

vim.g.tokyonight_sidebars = { "packer", "terminal", "qf" }

for key, opt in pairs(colorOptions) do
        vim.g["tokyonight_" .. key] = opt
end

---Telescope Specific Styles
---@param hl any
---@param c any
function M.handle_highlight(hl, c)
    local prompt = "#2d3149"
    hl.TelescopeNormal = {
      bg = c.bg_dark,
      fg = c.fg_dark,
    }
    hl.TelescopeBorder = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopePromptNormal = {
      bg = prompt,
    }
    hl.TelescopePromptBorder = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePromptTitle = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePreviewTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopeResultsTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
end

return M
