{ pkgs ? import <nixpkgs> {} }:
with pkgs; stdenv.mkDerivation {
  name = "cll";
  buildInputs = [
    xmlto
    ruby_3_0
    rubyPackages_3_0.nokogiri
  ];
  shellHook = ''
      gem install optimist htmlentities
  '';
}
