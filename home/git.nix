{ config, pkgs, ... }:

# vim: set ts=2 sts=2 sw=2 et :

{
  programs.git = {
    enable = true;

    lfs.enable = true;

    userName = "Nick Bathum";
    userEmail = "nickbathum@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
      push.autoSetupRemote = true;

      # allow entering raw '#' for markdown in comments
      core.commentChar = ";";

      # zealously shrink the conflict area
      # https://www.ductile.systems/zdiff3/
      merge.conflictStyle = "zdiff3";
    };
  };
}
