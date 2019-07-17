# ansible-fedora-setup
A basic Ansible playbook that configures my Fedora systems following a minimal install.

## Default Configuration
The playbook will run the following tasks:
*  `repos.yml`: Enable RPM Fusion (free) and Fedora Copr repositories for
   [kitty](https://github.com/kovidgoyal/kitty) and [fedora-better-fonts](https://github.com/silenc3r/fedora-better-fonts).
* `packages.yml`: Installs my most used software. My desktop is focused around i3 window manager.
* `flatpak.yml`: Enables the Flathub repository and installs the Slack flatpak.
* `system-config.yml`: Applies system configurations (e.g., Periodic TRIM, Disable GRUB graphical boot)

