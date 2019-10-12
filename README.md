# ansible-fedora-setup

A basic Ansible playbook that configures my Fedora systems following a minimal install.

## Usage
### Requirements
*  Fedora 29/30
*  Ansible 2.7+

### Pre-installation
1. Install git and ansible: `dnf install ansible git`
2. Clone this repository: `git clone git://github.com/jorgeluiscarrillo/ansible-fedora-setup`

### Running the Playbook
Change into the playbook directory and run `ansible-playbook`. This will install the [default configuration](#default-configuration):
```bash
cd ansible-fedora-setup/
ansible-playbook playbook.yml -K
```

#### Running a specific set of tags
You may skip a part of the provisioning process by using the `--skip-tags` flag. Some examples of tags you can use are: `copr`, `rpmfusion`, `flatpak`, `dev-tools`, `cli-tools`, `i3`, `extras`. For example, if you did not want to install any flatpak packages:
```
ansible-playbook playbook.yml -K --skip-tags "flatpak"
```
