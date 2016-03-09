# Generate password for user module:
    openssl passwd -salt MySalt -1 MyPassword

# call playbook
    ansible-playbook -i hosts initial-setup.yml --extra-vars="setup_ansible_ssh_pass=root"