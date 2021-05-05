# ansible-fedora-setup

Installs and configures most of the software I use on Fedora Workstation following a minimal install.

## Usage

### Pre-installation
1. Install git and ansible: `dnf install ansible git`
2. Clone this repository: `git clone git://github.com/jorgeluiscarrillo/ansible-fedora-setup`

### Running the Playbook
Change into the playbook directory and run `ansible-playbook`:
```bash
cd ansible-fedora-setup/
ansible-playbook -K playbook.yml
```
