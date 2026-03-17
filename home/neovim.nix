{ config, pkgs, inputs, ... }:

# vim: set ts=2 sts=2 sw=2 et :

{
  home = {
    packages = [ inputs.nvim.packages.${pkgs.system}.nvim ];

    sessionVariables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
    };
  };
}
