# Ansible

Configuration management for the servers in this project.

## Inventory

Each environment has its own inventory and variables under `inventory/<env>/`:

- Fill in `inventory/<env>/hosts.ini` with your target host(s).
- `inventory/<env>/group_vars/all/vars.yml` holds non-secret per-environment overrides (e.g. `common_swap_size_mb`).
- `inventory/<env>/group_vars/all/vault.example.yml` shows the secrets convention - copy it to `vault.yml`, fill in real values, then encrypt it (see Vault below). Never put secrets in `vars.yml`.

## Roles and collections

Add any Galaxy dependencies to `requirements.yml`, then run `task ansible:galaxy-install`. Roles install into `roles_galaxy/` (gitignored); this project's own roles live in `roles/` and are committed.

## Running the playbook

```shell
task ansible:playbook ENV=staging
```

Applies the `common` role (creates a swapfile, sized per-environment via `group_vars`).

## Vault

Secrets live encrypted in each environment's `vault.yml`, committed to git - only the vault password itself (`.vault-pass`, gitignored) stays out of version control.

First, create a vault password (once - shared across environments):

```shell
openssl rand -base64 32 > .vault-pass
```

Then, per environment:

```shell
cp inventory/staging/group_vars/all/vault.example.yml inventory/staging/group_vars/all/vault.yml
task ansible:vault-encrypt ENV=staging
```

`task ansible:vault-edit ENV=staging` / `vault-view` / `vault-decrypt` are also available. In CI, set the `ANSIBLE_VAULT_PASSWORD` secret if you add real vault files (see [docs/github-actions.md](../docs/github-actions.md)).

Run `task ansible:` (with no further args) or check [Taskfile.yml](Taskfile.yml) for the full list of available tasks.
