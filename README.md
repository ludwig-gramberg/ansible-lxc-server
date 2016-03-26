# ansible provisioning for a debian 8 lxc-host

## Generate password for user module:
    openssl passwd -salt MySalt -1 MyPassword

## call playbook
    ansible-playbook -i hosts setup.yml

if you don't want to store passwords in the host_vars file

    ansible-playbook -i hosts setup.yml --extra-vars="setup_ansible_ssh_pass=root"

if you encrypt your host_vars file

	ansible-playbook -i hosts setup.yml --ask-vault-pass