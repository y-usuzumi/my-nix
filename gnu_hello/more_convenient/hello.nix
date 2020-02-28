let
  pkgs = import <nixpkgs> {};
  attrs = {
    name = "hello";
    src = ../hello-2.10.tar.gz;
  };
in
import ./autotools.nix pkgs attrs

