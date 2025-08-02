## file: ./do-image.nix

# Uses Nixpkgs 25.05

let
  ## Pin the latest NixOS stable (nixos-24.05) release:
  nixpkgs = builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/1f08a4df998e21f4e8be8fb6fbf61d11a1a5076a.tar.gz";
    sha256 = "sha256:0ghn99k0nsbs8a83mhz5ylibvlps19yy690jgj5g6v9v3dkh8fgs";
  };

  ## Import nixpkgs:
  pkgs = import nixpkgs { };

  ## Prepare the NixOS configuration:
  config = {
    imports = [
      "${nixpkgs}/nixos/modules/virtualisation/digital-ocean-image.nix"
    ];
  };
in
(pkgs.nixos config).digitalOceanImage

