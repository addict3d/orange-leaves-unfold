{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;

    lfs.enable = true;

    userName = "Nick Bathum";
    userEmail = "nickbathum@gmail.com";
  };
}
