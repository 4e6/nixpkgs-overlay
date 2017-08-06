# nixpkgs-overlay

Example nixpkgs overlay. Overlays are used to extend nixos/nixpkgs repo.

## Install

``` bash
$ git clone https://github.com/4e6/nixpkgs-overlay.git
$ mkdir -p ~/.config/nixpkgs/overlays
$ ln -s $(pwd)/nixpkgs-overlay/nixpkgs-overlay.nix ~/.config/nixpkgs/overlays/nixpkgs-overlay.nix
```

## Usage

Build haskell package

``` bash
nix-build '<nixpkgs>' -A haskell.packages.ghc802.webapp-template
```

# Nixops

## Deploy

``` bash
cd nixops/webapp-template/webapp-template-hs
nixops create -d webapp default.nix vbox.nix
nixops deoploy -d webapp
```
