# ansible-fedora-setup

Installs and configures most of the software I use on Fedora Workstation following a minimal install.

## Usage

### Pre-installation
1. Install git: `dnf install git`
2. Install Ansible: `dnf install ansible`
    - (Optional) I prefer to install Ansible with `pip` inside a `virtualenv`:
        ```bash
        dnf install python-virtualenv
        virtualenv ansible-env
        source ansible-env/bin/activate
        pip install ansible
        ```
3. Clone this repository: `git clone https://github.com/jorgeluiscarrillo/ansible-fedora-setup`

### Running the Playbook
Change into the playbook directory and run `ansible-playbook`:
```bash
cd ansible-fedora-setup/
ansible-playbook -K playbook.yml
```
