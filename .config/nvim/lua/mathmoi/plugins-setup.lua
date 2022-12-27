-- Bootstraping
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Automatically run PackerCompile whenever this file changes
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
   return
end

return packer.startup(function(use)
   -- Packer
   use("wbthomason/packer.nvim")

   -- Used by other plugins
   use("nvim-lua/plenary.nvim")

   -- Colorscheme
   use("bluz71/vim-nightfly-guicolors")

   -- tmux and split
   use("christoomey/vim-tmux-navigator")
   use("szw/vim-maximizer")

   -- Commenting
   use("numToStr/Comment.nvim")

   -- File explorer
   use("nvim-tree/nvim-tree.lua")

   -- Icons for the file explorer
   use("kyazdani42/nvim-web-devicons")

   -- Pretty status line
   use("nvim-lualine/lualine.nvim")

   -- Telescope
   use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
   use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

   -- autocompletion
   use("hrsh7th/nvim-cmp")
   use("hrsh7th/cmp-buffer")
   use("hrsh7th/cmp-path")

   -- snippets
   use("L3MON4D3/LuaSnip")
   use("saadparwaiz1/cmp_luasnip")
   use("rafamadriz/friendly-snippets")

   -- managin & installing lsp servers
   use("williamboman/mason.nvim")
   use("williamboman/mason-lspconfig.nvim")

   use("neovim/nvim-lspconfig")

   use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
   use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
   use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

   -- treesitter
   use({
      "nvim-treesitter/nvim-treesitter",
      run = function()
         require("nvim-treesitter.install").update({ with_sync = true })
      end
   })

  -- auto closing
  use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
  use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

  -- git integration
  use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

   if packer_bootstrap then
      require("packer").sync()
   end
end)
