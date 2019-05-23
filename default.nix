{ pkgs ? import ./nix {} }:
pkgs.buildGoModule {
  name = "foo";
  version = "1.0";

  src = ./.;

  modSha256 = "02qzy0dxll965vzjvx849151bzb9z8mpq7qy0nbx2s9snjbnsf96";
}
