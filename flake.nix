{
  description = "Your new nix config";

  nixConfig = {
    extra-substituters = [
      "https://nix-community.cachix.org"
      "https://noctalia.cachix.org"
    ];
  extra-trusted-public-keys = [
    "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4="
    ];
  };

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

    # Home manager
    home-manager.url = "github:nix-community/home-manager/release-26.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # noctalia
    noctalia = {
      url = "github:noctalia-dev/noctalia";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
  in {
    # NixOS configuration entrypoint
    # Available through 'nixos-rebuild --flake .#your-hostname'
    nixosConfigurations = {
      # FIXME replace with your hostname
      nixos = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs;};
        # > Our main nixos configuration file <
        modules = [
          ./hosts/xyrik

          # make home-manager a moduel of nixos
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            #home-manager.extraSpecialArgs = inputs // specialArgs;
            home-manager.users.xyrik = import ./home-manager/home.nix;
            }
        ];
      };
    };

    # Standalone home-manager configuration entrypoint
    # Available through 'home-manager --flake .#your-username@your-hostname'
   # homeConfigurations = {
   #   # FIXME replace with your username@hostname
   #   "nixos" = home-manager.lib.homeManagerConfiguration {
   #     # Home-manager requires 'pkgs' instance
   #     pkgs = nixpkgs.legacyPackages.x86_64-linux; # FIXME replace x86_64-linux with your architecture
   #     extraSpecialArgs = {inherit inputs;};
   #     # > Our main home-manager configuration file <
   #     modules = [./home-manager/home.nix];
   #   };
   # };
  };
}
