{
  description = "A very basic flake";

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.delve = nixpkgs.legacyPackages.x86_64-linux.delve;

    packages.x86_64-linux.default = self.packages.x86_64-linux.delve;

  };
}
