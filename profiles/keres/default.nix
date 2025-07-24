{ config, pkgs, lib, home-manager, inputs, ... }:
{
    imports = [
        ../../modules/nvidia.nix
#        ../../modules/home.nix
        ./configuration.nix
        ./hardware-configuration.nix

    ];

    home-manager = {
        extraSpecialArgs = {
            inherit inputs;
        };
        users.tqid = {
            imports = [ ../../modules/home.nix ];
        };

    };

}