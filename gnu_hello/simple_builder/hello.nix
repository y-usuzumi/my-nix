with (import <nixpkgs> {});
derivation {
  name = "hello";
  src = ./hello-2.10.tar.gz;
  builder = "${bash}/bin/bash";
  args = [ ./hello_builder.sh ];
  inherit gnutar gcc gnumake coreutils gawk gzip gnugrep gnused;
  binutils = binutils-unwrapped;
  system = builtins.currentSystem;
}
