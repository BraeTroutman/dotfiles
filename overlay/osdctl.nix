{ buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "osdctl";
  version = "0.66.0";

  src = fetchFromGitHub {
    owner = "openshift";
    repo = "osdctl";
    rev = "v${version}";
    hash = "sha256-0Qsu+NIFRsU/lZjX9cvVDXOnHl1wSGd87ONLJBVy81o=";
  };

  vendorHash = "sha256-LcdTAAKBDDP3aRorDY1zoIVwIxDKhApp5W/TMIeZSzc=";

  doCheck = false;

  ldflags = [
    "-s"
    "-w"
    "-X github.com/openshift/osdctl/cmd.Version=${version}"
  ];
}
