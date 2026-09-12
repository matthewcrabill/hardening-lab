#!/bin/bash
echo "=== Audit: $(date) ==="
echo "--- Failed logins ---"
grep "Failed password" /var/log/auth.log 2>/dev/null | tail -5
echo "--- fail2ban status ---"
sudo fail2ban-client status sshd
echo "--- Firewall status ---"
sudo ufw status
