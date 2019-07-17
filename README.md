# ansible-fedora-setup
A basic Ansible playbook that configures my Fedora systems following a minimal install.

## Usage
### Requirements
*  Fedora 30
*  Ansible 2.7+

### Pre-installation
1. Install git and ansible: `dnf install ansible git`
2. Clone this repository: `git clone git://github.com/jorgeluiscarrillo/ansible-fedora-setup`

### Running the Playbook
```bash
cd ansible-fedora-setup/ && ansible-playbook bootstrap.yml -K
```

#### Running a specific set of tags
You may skip a part of the provisioning process by using the `--skip-tags` flag. For example, if you did not want to install flatpak.

```
ansible-playbook bootstrap.yml -K --skip-tags "flatpak"
```

## Default Configuration
The playbook will run the following tasks:
*  `repos.yml`: Enable RPM Fusion (free) and Fedora Copr repositories for
   [kitty](https://github.com/kovidgoyal/kitty) and [fedora-better-fonts](https://github.com/silenc3r/fedora-better-fonts).
* `packages.yml`: Installs my most used software. My desktop is focused around i3 window manager.
* `flatpak.yml`: Enables the Flathub repository and installs the Slack flatpak.
* `system-config.yml`: Applies system configurations (e.g., enable periodic TRIM, disable GRUB graphical boot).

