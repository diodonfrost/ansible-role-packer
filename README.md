# ansible-role-packer

[![molecule](https://github.com/diodonfrost/ansible-role-packer/workflows/molecule/badge.svg)](https://github.com/diodonfrost/ansible-role-packer/actions)
[![Ansible Galaxy](https://img.shields.io/badge/galaxy-diodonfrost.packer-660198.svg)](https://galaxy.ansible.com/diodonfrost/packer)

This role provide a compliance for install packer on your target host.

## Requirements

This role was developed using Ansible 2.8 Backwards compatibility is not guaranteed.
Use `ansible-galaxy install diodonfrost.packer` to install the role on your system.


## Role Variables

This role has multiple variables. The defaults for all these variables are the following:

```yaml
---
# defaults file for ansible-role-packer

# Define Packer version to install
# Possible values: https://releases.hashicorp.com/packer/index.json
# Default: latest
packer_version: latest

# Define where to install Packer binary
# Default: use local system path defined in Ansible vars/*.yml
packer_path: "{{ packer_default_path }}"
```

## Dependencies

None

## Example Playbook

This is a sample playbook file for deploying the Ansible Galaxy packer role in a localhost and installing the latest version of packer.

```yaml
---
- hosts: localhost
  become: true
  roles:
    - role: diodonfrost.packer
```

This role can also install a specific version of packer.

```yaml
---
- hosts: localhost
  become: true
  roles:
    - role: ansible-role-packer
      vars:
        packer_version: 1.2.5
```

## Local Testing

This project uses [Molecule](http://molecule.readthedocs.io/) to aid in the
development and testing.

To develop or test you'll need to have installed the following:

* Linux (e.g. [Ubuntu](http://www.ubuntu.com/))
* [Docker](https://www.docker.com/)
* [Python](https://www.python.org/) (including python-pip)
* [Ansible](https://www.ansible.com/)
* [Molecule](http://molecule.readthedocs.io/)
* [Virtualbox](https://www.virtualbox.org/) (windows/bsd test only)
* [Vagrant](https://www.vagrantup.com/downloads.html) (windows/bsd test only)

### Testing with Docker

```shell
# Install requirements
pip install -r requirements-dev.txt

# Test ansible role with centos 8
molecule test

# Test ansible role with ubuntu 20.04
image=ansible-ubuntu:20.04 molecule test

# Test ansible role with alpine latest
image=ansible-alpine:latest molecule test

# Create centos 7 instance
image=ansible-centos:7 molecule create

# Apply role on centos 7 instance
image=ansible-centos:7 molecule converge

# Launch tests on centos 7 instance
image=ansible-centos:7 molecule verify
```

### Testing with Vagrant and Virtualbox

```shell
# Test ansible role with FreeBSD
molecule test -s freebsd

# Test ansible role with OpenBSD
molecule test -s openbsd

# Test ansible role with Solaris
molecule test -s solaris

# Test ansible role with Windows
molecule test -s windows
```

## License

Apache 2

## Author Information

This role was created in 2019 by diodonfrost.
