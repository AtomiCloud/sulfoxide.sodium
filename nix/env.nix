{ pkgs, packages }:
with packages;
{
  system = [
    atomiutils
  ];

  dev = [
    pls
    git
  ];

  infra = [
    infrautils
  ];

  main = [
  ];

  lint = [
    # core
    treefmt
    infralint

    gitlint
    shellcheck
  ];

  releaser = [
    sg
  ];
}
