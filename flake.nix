{
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { self, nixpkgs, home-manager, ... }@inputs: let
        username = "tqid";
        system = "x86_64-linux";
    in
    {
        # Enable flake support
        nix.settings.experimental-features = ["nix-command" "flakes"];

        nixosConfigurations.keres = nixpkgs.lib.nixosSystem {
            specialArgs = { inherit inputs; };
            modules = [
                ./profiles/keres
            ];
        };
    };
}
