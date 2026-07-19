{ pkgs, lib, config, inputs, ... }:

{
  languages.terraform.enable = true;

  # https://devenv.sh/packages/
  packages = [
    pkgs.git
    pkgs.tflint
    pkgs.terraform-docs
  ];

  enterShell = ''
    if [ ! -f terraform/terraform.tfvars ]; then
      cp terraform/terraform.tfvars.example terraform/terraform.tfvars
    fi
    lefthook install
  '';
}
