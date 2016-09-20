# ansible provisioning for debian 8 (wheezy) lxc-host

these playbooks aim at provisioning a debian 8 server to run services inside lxc-container.
besides the configuration or any necessary manual preparation on the host it aims to be working out-of-the-box.

---

## disclaimer

use at your own risk. you found this somewhere on the internet ;-)

---

## playbooks

- ``setup0_basics.yml``
  - prepares the host for secure ssh plublickey connection
  - :exclamation: reboot after running this
  - :exclamation: can only be run once
- ``setup1_lxc-env.yml``
  - prepares the host for unprivileged lxc containers
  - :exclamation: reboot after running this for the first time
- ``setup2_container.yml``
  - creates the containers with a minimal setup
  - creates user inside container to be used by ansible
- ``container.yml``
  - provisions the containers directly via ssh

---

## cfg files

- [``ansible.cfg``](ansible.cfg.sample): mainly used to realize ssh bastion connection
- [``ssh.cfg``](ssh.cfg.sample): ssh bastion setup
- [``inventory``](inventory.sample): ansible inventory
- [``vars/admins.yml``](vars/admins.yml.sample): admin users which will have access to the system via ssh publickey

---

## misc

### generate password for user module:
    openssl passwd -salt MySalt -1 MyPassword