#!/bin/bash

# IP in input
echo "Scrivi il range di IP (es. 109.173.128.0/16):"
read ip_range

# Porte in input
echo "Scrivi il numero di porte (separate da virgola):"
read ports

# Nome del file in input
echo "Scrivi il nome del file (senza l'estensione .txt):"
read filename

# Run masscan with input IP and ports, and save output to file
sudo masscan $ip_range -p$ports -oG $filename.txt

echo "Masscan output salavto in $filename.txt"