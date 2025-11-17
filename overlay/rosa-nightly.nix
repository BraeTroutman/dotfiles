{ buildGoModule, fetchFromGitHub, makeWrapper }:

buildGoModule rec {
  pname = "rosa-nightly";
  version = "a3ad0ff94c9a6d9ad3b2e4d06b24b349f939c12f";

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
