# Update packages
dnf check-update -y

# Upgrade
dnf upgrade -y

# Essential tools
dnf install -y git htop sysstat curl wget neovim

# Firewall - Allow FreeIPA Service
#firewall-cmd --add-service=freeipa-ldap --add-service=freeipa-ldap --permanent
#firewall-cmd --reload