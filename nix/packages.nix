{ pkgs, atomi, pkgs-2505, pkgs-unstable }:
let

  all = rec {
    atomipkgs = (
      with atomi;
      rec {
        helmlint = atomi.helmlint.override { helmPackage = infrautils; };

        inherit
          atomiutils
          infrautils
          infralint
          pls
          sg;
      }
    );
    nix-unstable = (
      with pkgs-unstable;
      { }
    );
    nix-2505 = (
      with pkgs-2505;
      {
        inherit
          git

          # lint
          treefmt
          infisical

          # infra
          gitlint
          shellcheck
          ;

      }
    );
  };
in
with all;
atomipkgs //
nix-2505 //
nix-unstable
