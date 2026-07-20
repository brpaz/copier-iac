# Ansible

Configuration management for the servers in this project.

- Fill in `inventory/hosts.ini` with your target host(s).
- Add any Galaxy dependencies to `requirements.yml`, then run `task ansible:galaxy-install`. Roles install into `roles_galaxy/` (gitignored); this project's own roles live in `roles/` and are committed.
- Run `task ansible:playbook` to apply the `common` role (creates a swapfile).

Run `task ansible:` (with no further args) or check [Taskfile.yml](Taskfile.yml) for the full list of available tasks.
