#!/bin/bash

# Mise à jour système
echo "Mise à jour du système."
sudo apt update -y
sudo apt upgrade -y

# Installer OpenSSH
echo "Installation d'OpenSSH."
sudo apt install openssh-server -y

# Démarrer et activer service SSH
echo "Démarrage et activation de SSH."
sudo systemctl start ssh
sudo systemctl enable ssh

# Vérifier le statut du service SSH
echo "Vérification du statut du service SSH."
sudo systemctl status ssh

# Configurer le pare-feu pour autoriser SSH
echo "Configuration du pare-feu pour autoriser SSH..."
sudo ufw allow ssh
sudo ufw enable
sudo ufw status

echo "installation de SSH términée"
