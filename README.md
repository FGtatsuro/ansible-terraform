ansible-terraform
====================================

[![Build Status](https://travis-ci.org/FGtatsuro/ansible-terraform.svg?branch=master)](https://travis-ci.org/FGtatsuro/ansible-terraform)

Ansible role for Terraform.

Requirements
------------

The dependencies on other softwares/librarys for this role.

- Debian
- Alpine Linux
- OSX
  - Homebrew (>= 0.9.5)

Role Variables
--------------

The variables we can use in this role.

|name|description|type|default|
|---|---|---|---|
|terraform_download_url|Download URL of Terraform archive.|str|https://releases.hashicorp.com/terraform/0.12.15/terraform_0.12.15_linux_amd64.zip|
|terraform_sha256|SHA256 signature of Terraform archive.|str|2acb99936c32f04d0779c3aba3552d6d2a1fa32ed63cbca83a84e58714f22022|
|terraform_download_tmppath|Path downloaded Terraform archive is put temporary.|str|/tmp/terraform.zip|
|terraform_bin_dir|Path Terraform binary is put|str|/usr/local/bin|

- These variables are valid only on Debian/Alpine Linux, and they aren't used on OSX. On OSX, latest binary is installed by Homebrew.
- If you want to overwrite values, please check https://www.terraform.io/downloads.html.

Role Dependencies
-----------------

The dependencies on other roles for this role.

- FGtatsuro.python-requirements

Example Playbook
----------------

    - hosts: all
      roles:
         - { role: FGtatsuro.terraform }

Test on local Docker host
-------------------------

This project run tests on Travis CI, but we can also run them on local Docker host.
Please check `install`, `before_script`, and `script` sections of `.travis.yml`.
We can use same steps of them for local Docker host.

Local requirements are as follows.

- Ansible (>= 2.0.0)
- Docker (>= 1.10.1)

License
-------

MIT
