{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "trustedcoin";
  version = "0.5.2";
  src = fetchFromGitHub {
    owner = "nbd-wtf";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-s8zgY+TDABK96BehY+SVl86wCMd+e8BKdxw0kGV1jAI=";
  };

  vendorSha256 = "sha256-wpK5SW9nOMO/e4DoEk8LRxLykxYt06LoBBxjeEujOiU=";

  subPackages = [ "." ];

  meta = with lib; {
    description = "Light bitcoin node implementation";
    homepage = "https://github.com/nbd-wtf/trustedcoin";
    maintainers = with maintainers; [ seberm fort-nix ];
    platforms = platforms.linux;
  };
}
