{ buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "backplane-cli";
  version = "aeba8cca66c24e1f7662f8e36b6af8c5dfefbce8";

  src = fetchFromGitHub {
    owner = "openshift";
    repo = "backplane-cli";
    rev = "${version}";
    sha256 = "sha256-thfatxTqk1C/FxT5Ap7bGo1inCvprHB9xuMPyom5l28=";
  };

  env.CGO_ENABLED = 0;
  doCheck = false;

  ldflags = [
    "-s" "-w"
    "-X github.com/openshift/backplane-cli/pkg/info.Version=${version}"
  ];
  vendorHash = "sha256-cey6cfoSIlMV7BRMfOYalRYsQjuzqZigpXC4ucmQ3RA=";

  subPackages = [ "cmd/ocm-backplane" ];
}
