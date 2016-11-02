# ansible provisioning for debian 8 (wheezy) lxc-host

these playbooks aim at provisioning a debian 8 server to run services inside lxc-container.
besides the configuration or any necessary manual preparation on the host it aims to be working out-of-the-box.

---

## disclaimer

use at your own risk. you found this somewhere on the internet ;-)

---

## playbooks

- ``setup0.yml``
  - prepares the host for secure ssh plublickey connection
  - :exclamation: reboot after running this
  - :exclamation: can only be run once
- ``setup1.yml``
  - prepares the host for unprivileged lxc containers
  - :exclamation: reboot after running this for the first time
- ``create_container.yml``
  - creates the containers with a minimal setup
  - creates user inside container to be used by ansible
- ``master.yml``
  - provisions the master
- ``container.yml``
  - provisions the containers via ssh bastion
- ``destroy_container.yml``
  - destroys a container defined by prompt

---

## cfg files

- [``ansible.cfg``](ansible.cfg.sample): mainly used to realize ssh bastion connection
- [``ssh.cfg``](ssh.cfg.sample): ssh bastion setup
- [``inventory``](inventory.sample): ansible inventory
- [``vars/admins.yml``](vars/admins.yml.sample): admin users which will have access to the system via ssh publickey
- [``vars/sites.yml``](vars/sites.yml.sample): (web)sites definition
- [``vars/databases.yml``](vars/databases.yml.sample): databases and their users
- [``vars/packages.yml``](vars/packages.yml.sample): default packages to install on master and nodes

---

## misc

### generate password for user module:
    openssl passwd -1 MyPassword