local options = {
	backup        = false,                               -- Living dangerously....not really
	autoindent    = true,                                -- Keep autoindent on
	background    = "light",                             -- Evil isn't it?
	colorcolumn   = "80",                                -- Display a column color at a specific spot
	cursorline    = true,                                -- Highlight the line the cursor is on
	completeopt   = {                                    -- For completion behaviors
                "menu",
		"menuone",
		"noselect",
		"preview",
		"noinsert"
	},
	expandtab     = true,                                -- Expand tabs into spaces
	fileencoding  = "utf-8",                             -- Default encoding written to files
	hlsearch      = true,                                -- Highlight search results
	incsearch     = true,                                -- Make sure incremental search is on
	ignorecase    = true,                                -- Ignore case when searching
	mouse         = "a",                                 -- Mouse support enabled for all modes
	wrap          = false,                               -- Don't wrap lines by default
	number        = true,                                -- Show the line numbers
	pumheight     = 10,                                  -- Popup menu height, TODO: Experiment with this
	showmode      = false,                               -- Don't show which mode we're in
	showtabline   = 2,                                   -- Always show tabs
	smartcase     = true,                                -- Using capitals letters searches for capital matches
	smartindent   = true,                                -- Do smart autoindenting when starting a new line
	swapfile      = false,                               -- We don't need a swap file
	termguicolors = true,                                -- Enables 24-bit RGB color in the TUI
	writebackup   = false,                               -- Do not make a backup before overwriting a file, losses are taken if they occur
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
