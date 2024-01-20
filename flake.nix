{
  description = "A very basic flake";

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.main = nixpkgs.legacyPackages.x86_64-linux.nodejs;

    packages.x86_64-linux.default = self.packages.x86_64-linux.main;

  };
}
