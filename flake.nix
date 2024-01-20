{
  description = "A very basic flake";

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.go = nixpkgs.legacyPackages.x86_64-linux.go;

    packages.x86_64-linux.default = self.packages.x86_64-linux.delve;

  };
}
