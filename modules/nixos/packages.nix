{ pkgs, lib, buildGoModule, fetchFromGitHub, ... }:

    pkgs.buildGoModule rec {
        pname = "ytarchive";
        version = "0.5.3";
        src = pkgs.fetchFromGitHub {
                owner = "dreammu";
                repo = "ytarchive";
                rev = "v${version}";
                sha256 = "sha256-y9N1v1dkzLHIjE62ta3/Y26Mbr+Q4T9zWPAAPfaj3Q0=";
            };
            nativeCheckInputs = with pkgs; [ less ];
            vendorHash = "sha256-hVAiWJKdDQB+6UlARFdjVATCMiGrEK2US62KAxCquvU=";
        }

