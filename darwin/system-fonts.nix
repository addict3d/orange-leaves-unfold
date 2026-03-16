# SPDX-License-Identifier: MIT

{
  config,
  pkgs,
  lib,
  ...
}:

{
  fonts.packages = [
    pkgs.nerd-fonts.dejavu-sans-mono
    pkgs.nerd-fonts.hack
    pkgs.nerd-fonts.symbols-only
  ];
}
