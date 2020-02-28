# Nix expressions for GNU hello

The following Nix expressions are my walk through relevant Nix Pills

## Prerequisite

Download the source of GNU hello 2.10 here under the same directory as this README file:

```bash
wget http://ftp.gnu.org/gnu/hello/hello-2.10.tar.gz
```

## simple\_builder

The most hardcoded Nix expression and builder script.

## generic\_builder

The environment variables are read in a more generic way, but the build dependencies are still hardcoded.

## more\_convenient

An `autotools.nix` helper expression that creates the derivation from the `pkg` and `attrs` arguments.
Depends on `findutils` and `patchelf` to get rid of unnecessary dependency on gcc;
