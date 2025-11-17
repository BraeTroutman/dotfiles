final: prev: {
  ocm-backplane = final.callPackage ./backplane.nix { };
  rosa-nightly = final.callPackage ./rosa-nightly.nix { };
}
