{ pkgs ? import ./nix {} }:
pkgs.buildGoModule {
  name = "foo";
  version = "1.0";

  src = ./.;

  modSha256 = "0sjjj9z1dhilhpc8pq4154czrb79z9cm044jvn75kxcjv6v5l2m5";
}
