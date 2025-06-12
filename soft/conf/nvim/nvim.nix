{pkgs, ...}: # Neovim configuration.

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;

    # Set some options.
    extraConfig = ''
      set number
      set relativenumber
      colorscheme tokyonight-night
      set cindent
      set expandtab
      set tabstop=2
      set shiftwidth=2
      inoremap " ""<left>
      inoremap ( ()<left>
      inoremap [ []<left>
      inoremap { {}<left>
      let mapleader = "\<Space>"
      nmap <leader>c = :wqall<cr>
      nmap <leader>q :Floaterm<cr>
      nmap <leader>f :FZF<cr>
    '';

    plugins = with pkgs.vimPlugins; [
      # Fuzzy finding.
      fzfWrapper

      # Make stuff look good.
      lualine-nvim
      tokyonight-nvim

      # Autocompletion.
      nvim-lspconfig
      cmp-nvim-lsp
      cmp-buffer
      cmp-path
      cmp-cmdline
      nvim-cmp
    ];

    # Lua configuration files for plugins.  
    extraLuaConfig = ''
      ${builtins.readFile ./line.lua}
      ${builtins.readFile ./floaTerm.lua}
      ${builtins.readFile ./cmp.lua}
    '';
  };
}
