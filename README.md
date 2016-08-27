# ansible provisioning for debian 8 (wheezy) lxc-host

these playbooks aim at provisioning a debian 8 server to run services inside lxc-container.
besides the configuration or any necessary manual preparation on the host it aims to be working out-of-the-box.

---

## disclaimer

use at your own risk. yout found this somewhere on the internet ;-)

---

## playbooks

### rootsetup.yml
  
very basic setup which prepares the host. can only be run once because it uses root over ssh which it locks out at the end.
  
### common.yml

uses admin user established in `rootsetup.yml` using public key authentication. prepares basic lxc setup and networking for lxc.

---

## misc

### generate password for user module:
    openssl passwd -salt MySalt -1 MyPassword