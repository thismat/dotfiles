vim.cmd[[colorscheme tokyonight]]

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

