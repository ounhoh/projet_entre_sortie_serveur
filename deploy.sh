#!/bin/bash

################################################################################
# DEPLOY.SH – Script de déploiement complet Frontend + Backend pour l’application
# Projet Entrée / Sortie CESE
################################################################################

# Chemins de l'application
FRONT_DIR="/opt/projet-entree-sortie/frontEnd-projet-entree-sortie"
BACK_DIR="/opt/projet-entree-sortie/process_entree_sortie"
WWW_DIR="/var/www/entree-sortie"
SERVICE_NAME="entree-sortie"


echo "------------------------------------------------------------"
echo "DEPLOIEMENT DE L’APPLICATION – CESE"
echo "------------------------------------------------------------"

################################################################################
# 1) DEPLOIEMENT DU FRONTEND
################################################################################

echo "1/6 — Installation des dépendances frontend..."
cd "$FRONT_DIR" || exit
npm install --silent
echo "Dépendances frontend OK"

echo "2/6 — Build frontend avec Vite..."
npm run build --silent
echo "Build frontend terminé"

echo "3/6 — Déploiement du build dans $WWW_DIR..."
sudo rm -rf "$WWW_DIR"/*
sudo cp -r dist/* "$WWW_DIR"/
echo "Frontend déployé"

################################################################################
# 2) DEPLOIEMENT DU BACKEND
################################################################################

echo "4/6 — Build du backend Spring Boot..."
cd "$BACK_DIR" || exit
./mvnw clean package -DskipTests --quiet
echo "Build backend terminé"

# Récupérer le nom du jar généré (variable automatique)
JAR_FILE=$(ls target/*.jar | head -n 1)

echo "JAR généré : $JAR_FILE"

echo "5/6 — Copie du JAR vers le répertoire de service..."
sudo cp "$JAR_FILE" "$BACK_DIR"/target/
echo "JAR mis à jour"

echo "6/6 — Redémarrage du service backend..."
sudo systemctl restart "$SERVICE_NAME"

###############################################################################

echo "------------------------------------------------------------"
echo "DEPLOIEMENT TERMINE AVEC SUCCÈS !"
echo "------------------------------------------------------------"

echo "Vérification du service :"
sudo systemctl status "$SERVICE_NAME" --no-pager

echo "Frontend disponible sur : http://appsdir.ces.fr"
