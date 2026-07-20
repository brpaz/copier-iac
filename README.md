# Copier IaC

<p align="center">

[![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-black.json&style=for-the-badge)](https://github.com/copier-org/copier)
[![Build Status](https://img.shields.io/github/actions/workflow/status/brpaz/copier-iac/ci.yml?branch=main&style=for-the-badge)](https://github.com/brpaz/copier-iac/actions)

</p>

> A [Copier](https://copier.readthedocs.io/en/stable/) Template to scaffold Infrastructure-as-Code projects, with optional [Terraform](https://www.terraform.io/) and/or [Ansible](https://www.ansible.com/).

## 📦 What is included?

- Optional [Terraform](https://www.terraform.io/) stack (Hetzner Cloud + Cloudflare example), optional standalone [Ansible](https://www.ansible.com/) playbook/role — pick either or both.
- When Terraform is selected, choose how the server is bootstrapped: plain [cloud-init](https://cloudinit.readthedocs.io/), or an Ansible playbook run as part of `terraform apply`.
- [Devenv](https://devenv.dev/) configuration for a reproducible development environment using Nix.
- [Direnv](https://direnv.net/) integration for automatic environment loading.
- [Taskfile](https://taskfile.dev/) as a task runner to simplify common development tasks.
- GitHub Actions CI workflows per selected stack (Terraform plan/apply, Ansible lint/syntax-check).
- Pre-configured linters and formatters (Terraform fmt/tflint, Ansible lint).
- Git commit hooks using [Lefthook](https://lefthook.io/) to enforce code quality before commits.

## 🚀 Getting Started

### Pre-Requisites

This template is built with [Copier](https://copier.readthedocs.io/en/stable/), a Python based project templating tool.

To install copier on your system, follow the instructions at [Copier Website](https://copier.readthedocs.io/en/stable/#installation)

### Usage

To create a new project using this template, run the following command:

```bash
copier copy gh:brpaz/copier-iac /path/to/your/new/project
```

And answer the prompts to customize your new project.

## 🗒️ License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
