# Intro

This is a work in progress for converting all my neovim configs over to pure lua.
I run a pretty sparse configuration as it stands, I am currently working to streamline
it a bit more and solidify it a bit. Make it more reasonable and maintainable,
taking advantage of Lua to keep modules and submodules small.

- Entry point: **init.lua**
- Primary module: **thismat**

# thismat module structure

| Level | Submodule | Purpose | References |
| ----- | --------- | ------- | ---------- |
| root  | **options**   | Setup all the vim options I prefer |
| root  | **plugins**   | Plugin management |
| root  | **colors**   | Colorscheme customization |
| root  | **lsp**   | LSP configuration, this is responsible for loading thismat.lsp.* level sudmoules |
| |
| lsp   | **capabilities** | Used for configuring the capabilities of the LSP server |
| lsp   | **completion** | Configure completion plugin(s) | lspkind |
| lsp   | **options**    | options for the LSP servers (on_attach, etc) | 

# Plugins Used

## Preferred

These are the plugins I prefer for sure and aren't likely to change unless something
new comes along that catches my eye.

- cmp-buffer
- cmp-nvim-lsp
- cmp-path
- cmp-vsnip
- nvim-cmp
- nvim-lspconfig
- nvim-tree
- nvim-treesitter
- nvim-web-devicons
- packer.nvim
- tokyonight colorscheme (day mode, 😎)
- vim-vsnip

## Unsure

These are plugins I'm not sure if I want to keep, and need to look into alternatives for.

- lspkind

## Issues

The LSP modules are a bit cumbersome to work with when I need to change multiple at one time.
A better option would be to get a bit better at Lua and have a more comprehensive setup that
will let me just pass in a configuration table(?) to set things up.
