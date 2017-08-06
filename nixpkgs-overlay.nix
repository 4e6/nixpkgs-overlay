self: super:

{
  haskell = super.haskell // {
    packages = super.haskell.packages // {
      ghc802 = super.haskell.packages.ghc802.override {
        overrides = self: super: {
          webapp-template = self.callPackage ./pkgs/haskell-packages/webapp-template {};
        };
      };
    };
  };

  webapp-template-hs = self.haskell.lib.disableSharedExecutables
    self.haskell.packages.ghc802.webapp-template;
}
