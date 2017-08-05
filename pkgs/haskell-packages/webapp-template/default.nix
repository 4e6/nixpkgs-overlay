{ mkDerivation, aeson, autoexporter, base, fetchgit, servant-server
, stdenv, text, warp
}:
mkDerivation {
  pname = "webapp-template";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/4e6/webapp-template-hs.git";
    sha256 = "0lspzh73z21n2nc7hsd3y4rrhwjd74ad92pfyd30mhny0dwl3kiq";
    rev = "1156f8944e914c42faebe06b6a214e033fd496e4";
  };
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson autoexporter base servant-server text warp
  ];
  executableHaskellDepends = [ base ];
  testHaskellDepends = [ base ];
  homepage = "https://github.com/4e6/webapp-template-hs#readme";
  description = "Template for web application";
  license = stdenv.lib.licenses.bsd3;
}
