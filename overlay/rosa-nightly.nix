{ buildGoModule, fetchFromGitHub, makeWrapper }:

buildGoModule rec {
  pname = "rosa-nightly";
  version = "a67c0d9e41cf44ad55289d5a6eceb5f16f788dc8";

  src = fetchFromGitHub {
    owner = "openshift";
    repo = "rosa";
    rev = "${version}";
    sha256 = "sha256-A9bx0ZqFehU2dVIVE7w3q/ruNxYZ2xr2SsFel1xI7kQ=";
  };

  nativeBuildInputs = [ makeWrapper ];

  env.CGO_ENABLED = 0;
  doCheck = false;

  ldflags = [
    "-s" "-w"
    "-X github.com/openshift/rosa/pkg/info.Version=${version}"
  ];
  vendorHash = null;

  subPackages = [ "cmd/rosa" ];

  postInstall = ''
    mv $out/bin/rosa $out/bin/rosa-nightly
  '';
}
