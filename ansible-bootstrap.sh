## This script is for the initial setup of ansible nodes
## Before this script is run on ansible nodes, ansible will not be able to connect to them
## It does the following 5 things:
## * Add a user called "ansible", with password authentication invalid for all cases (ie: ssh login with private key is the only option)
## * Add our public ssh key to the authorised ssh keys for "ansible"
## * Install the sudo package (not present on fresh debian install, required for ansible become)
## * Allow the "ansible" user to use passwordless sudo
## * Ensure python3 is installed (needed on minimal distros like debian)
## WARNING - ONLY RUN ONCE! ##
# TODO: make script idempotent

adduser ansible --disabled-password --gecos ""

mkdir /home/ansible/.ssh

echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOSRJ0Cz7+PC0dhPS8SDLz9uCPY5Ou3I0tvFfWFhy+GT ansible@ansible" > /home/ansible/.ssh/authorized_keys

apt install sudo

echo "ansible ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

apt install python3

