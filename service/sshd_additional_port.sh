#!/bin/bash

##
# @author - iphilip
# @crated - 10th Sep, 2018
#
# This script will enable sshd to be served on additional port, eg, 222
# Executed as ROOT
##


# Take a backup before editing sshd_config
cp /etc/ssh/sshd_config /etc/ssh/sshd_config_bkup_`date +%Y_%m_%d.%H:%M:%S`

# Append a new line after searching text `#Port 22`
sed -i '\:#Port 22:aPort 222' /etc/ssh/sshd_config

# Restart the service
systemctl restart sshd.service