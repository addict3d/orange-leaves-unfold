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
}
