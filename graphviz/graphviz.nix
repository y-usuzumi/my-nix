let
  # NOTE: Nixpkgs pinned due to https://github.com/NixOS/nix-pills/issues/107
  pkgs = import (builtins.fetchGit {
    # Descriptive name to make the store path easier to identify
    name = "nixos-release-14.12";
    url = https://github.com/nixos/nixpkgs/;
    # Commit hash for nixos-unstable as of 2018-09-12
    # `git ls-remote https://github.com/nixos/nixpkgs-channels nixos-unstable`
    ref = "refs/heads/release-14.12";
  }) {};
  # pkgs = import <nixpkgs> {};
  mkDerivation = import ./autotools.nix pkgs;
in
mkDerivation {
  name = "graphviz";
  src = ./graphviz-2.38.0.tar.gz;
  buildInputs = with pkgs; [ gd fontconfig libjpeg bzip2 ];
}
