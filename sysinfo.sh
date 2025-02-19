#!/bin/bash
echo "=== Informações do Sistema ==="
echo "CPU Info:"
lscpu | grep "Model name"

echo -e "\nDiscos e Partições:"
lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT

echo -e "\nPlacas PCI:"
lspci | grep -E "VGA|Network"

echo -e "\nLogs recentes do sistema:"
journalctl -n 10

