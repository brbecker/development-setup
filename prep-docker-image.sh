#!/bin/bash
#
# Perform initial configuration of the Ubuntu image

# Set default user and encrypted password (mkpasswd -m sha-512)
DEFAULT_USER=brbecker
ENC_PASSWORD='$6$fTfKjIlJdK//cPWm$dx5LWtJ.DTU5eA3ba9/iVduFrnDroow7kE9830aK40QVQfCLN5pT/JqLAlVxmmqlf24AkN3gmOQ7GmuLsF1lw.'
USER_SHELL=/bin/bash

# Timezone
TZ=America/Los_Angeles

# Create /etc/wsl.conf
WSL_CONF=/etc/wsl.conf
[[ -f ${WSL_CONF} ]] && mv ${WSL_CONF} ${WSL_CONF}.orig
cat <<_EOF > ${WSL_CONF}
[boot]
systemd=true

[user]
default=${DEFAULT_USER}
_EOF
chmod 644 ${WSL_CONF}

# Add the user
useradd -m -p "${ENC_PASSWORD}" -s "${USER_SHELL}" ${DEFAULT_USER}

# Install ansible-core and other necessary packages
DEBIAN_FRONTEND=noninteractive
export DEBIAN_FRONTEND TZ
apt-get update
apt-get install software-properties-common --assume-yes
add-apt-repository --yes --update ppa:ansible/ansible
apt-get install ansible-core --assume-yes
