{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    vimAlias = true;
    withPython3 = true;
    extraPackages = with pkgs; [
      # Dependencies
      wl-clipboard # for clipboard (<C-c>)
      fzf          # for file finder (<leader>+ff)
      ripgrep      # for live grep (<leader>+fw)

      # Format
      stylua
      black
      clang-tools
      prettier
      tex-fmt
      nixfmt-rfc-style

      # LSP
      nixd
      texlab
      jdt-language-server
      python313Packages.python-lsp-server

      # Highlight
      tree-sitter
      nodejs
      vimPlugins.nvim-treesitter-parsers.vim
      vimPlugins.nvim-treesitter-parsers.lua
      vimPlugins.nvim-treesitter-parsers.vimdoc
      vimPlugins.nvim-treesitter-parsers.python
      vimPlugins.nvim-treesitter-parsers.bash
      vimPlugins.nvim-treesitter-parsers.c
      vimPlugins.nvim-treesitter-parsers.cpp
      vimPlugins.nvim-treesitter-parsers.latex
      vimPlugins.nvim-treesitter-parsers.markdown
      vimPlugins.nvim-treesitter-parsers.java
    ];
  };
}
