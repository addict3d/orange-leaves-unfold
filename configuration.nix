# SPDX-License-Identifier: MIT

{
  lib,
  config,
  pkgs,
  inputs,
  ...
}:

{
  networking = {
    computerName = "Acer rubrum"; # scutil --get ComputerName --- emoji?
    hostName = "Acer-rubrum"; # scutil --get HostName
  };

  # add preferred tools
  environment.systemPackages = with pkgs; [
    bat
    fd
    jq
    ripgrep
  ];

  programs.direnv.enable = true;

  # Keyboard, for vim
  system.keyboard.enableKeyMapping = true;
  system.keyboard.remapCapsLockToEscape = true;

  # Add ability to used TouchID for sudo authentication
  security.pam.enableSudoTouchIdAuth = true;
}
