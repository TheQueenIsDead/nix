{ config, pkgs, lib, ... }:
{
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "goland"
    "terraform"
  ];

  home.packages = [
    pkgs.jetbrains.goland
    pkgs.go
    pkgs.git
    pkgs.terraform
  ];
}
