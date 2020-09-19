# ansible-role-packer

[![Build Status](https://travis-ci.com/diodonfrost/ansible-role-packer.svg?branch=master)](https://travis-ci.com/diodonfrost/ansible-role-packer)
[![molecule](https://github.com/diodonfrost/ansible-role-packer/workflows/molecule/badge.svg)](https://github.com/diodonfrost/ansible-role-packer/actions)
[![Ansible Galaxy](https://img.shields.io/badge/galaxy-diodonfrost.packer-660198.svg)](https://galaxy.ansible.com/diodonfrost/packer)

This role provide a compliance for install packer on your target host.

## Requirements

This role was developed using Ansible 2.5 Backwards compatibility is not guaranteed.
Use `ansible-galaxy install diodonfrost.packer` to install the role on your system.

Supported platforms:

```yaml
- name: EL
  versions:
    - 8
    - 7
    - 6
- name: Fedora
  versions:
    - 32
    - 31
    - 30
    - 29
    - 28
    - 27
    - 26
- name: Debian
  versions:
    - buster
    - stretch
    - jessie
    - wheezy
    - squeeze
- name: Ubuntu
  versions:
    - disco
    - bionic
    - xenial
    - trusty
    - precise
- name: OracleLinux
  versions:
    - 7
    - 6
- name: Amazon
  versions:
    - 2017.12
    - 2016.03
    - 2013.09
- name: opensuse
  versions:
    - any
- name: ArchLinux
  versions:
    - any
- name: Alpine
  versions:
    - any
- name: Gentoo
  versions:
    - stage3
- name: FreeBSD
  versions:
    - 11.2
    - 10.4
    - 10.3
- name: OpenBSD
  versions:
    - 6.0
    - 6.4
- name: MacOSX
  versions:
    - 10.10
    - 10.11
    - 10.12
    - 10.13
- name: Windows
  versions:
    - 2016
    - 2012R2
    - 8.1
```

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

The preferred way of locally testing the role is to use Docker. You will have to install Docker on your system.

You can also use Virtualbox with molecule to run tests locally. You will have to install Virtualbox and Vagrant on your system. For all our tests we use molecule.

### Testing with Docker

```shell
# Test ansible role with centos-8
distribution=centos-8 molecule test

# Test ansible role with ubuntu-20.04
distribution=ubuntu-20.04 molecule test

# Test ansible role with alpine-rolling
distribution=alpine-rolling molecule test

# Create centos-7 instance
distribution=centos-7 molecule create

# Apply role on centos-7 instance
distribution=centos-7 molecule converge

# Launch tests on centos-7 instance
distribution=centos-7 molecule verify
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
