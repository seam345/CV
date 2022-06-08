with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "my-notes";
  
  nativeBuildInputs = [
    pkgs.texmaker
    pkgs.texlive.combined.scheme-full
  ];
  

}

