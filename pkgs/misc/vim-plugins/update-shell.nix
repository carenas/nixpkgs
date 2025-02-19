{ nixpkgs ? import ../../.. { } }:
with nixpkgs;
let
  pyEnv = python3.withPackages(ps: [ ps.GitPython ]);
in
mkShell {
  packages = [
    bash
    pyEnv
    nix_2_3
    nix-prefetch-scripts
  ];
}

