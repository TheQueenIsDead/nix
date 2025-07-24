{
pkgs,
...
}:
{
    imports = [
        ./configuration.nix
        ./hardware-configuration.nix
        ./home.nix
        ../../modules/nvidia.nix
    ];
}