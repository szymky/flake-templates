{
  description = "default notes dev shell";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            git
            ripgrep
            fd

            texlive.combined.scheme-medium
            zathura
            latexindent
            prettier
          ];

          env = {
          };

          shellHook = ''
            zsh
            echo "-> entered $(basename $PWD) dev shell"
          '';
        };

        formatter = pkgs.nixpkgs-fmt;
      }
    );
}
