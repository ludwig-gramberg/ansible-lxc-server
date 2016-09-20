# ansible provisioning for debian 8 (wheezy) lxc-host

these playbooks aim at provisioning a debian 8 server to run services inside lxc-container.
besides the configuration or any necessary manual preparation on the host it aims to be working out-of-the-box.

---

## disclaimer

use at your own risk. you found this somewhere on the internet ;-)

---

## playbooks

run the setup0 to setup2 playbooks in order. reboot if the playbook tells you to at the end.  
afterwards you can run container.yml to provision the containers.
  
### common.yml

uses admin user established in `rootsetup.yml` using public key authentication. prepares basic lxc setup and networking for lxc.

---

## misc

### generate password for user module:
    openssl passwd -salt MySalt -1 MyPassword