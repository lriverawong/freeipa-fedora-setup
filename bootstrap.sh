# Update packages
dnf check-update -y

# Upgrade
dnf upgrade -y

# Essential tools
dnf install -y git htop sysstat curl wget