---@diagnostic disable: undefined-global
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	--
	-- この下にインストールするプラグインを記載します。
	-- use 'プラグインA'
	-- use 'プラグインB'
	--
	-- fzf.vim
	use 'junegunn/fzf.vim'
end)
