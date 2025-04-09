#!/bin/bash

echo "== 🚀 Configuración del despliegue automático =="

read -p "👉 IP pública de la VM: " VM_IP
read -p "👉 Usuario SSH (por ejemplo guillermo_carames): " VM_USER

echo "📎 Buscando clave privada en ~/.ssh/id_ed25519"
PRIVATE_KEY=$(cat ~/.ssh/id_ed25519)

echo "⏳ Cargando secrets en GitHub usando gh CLI..."

gh secret set GCP_VM_IP -b"$VM_IP"
gh secret set GCP_VM_USER -b"$VM_USER"
gh secret set GCP_SSH_PRIVATE_KEY -b"$PRIVATE_KEY"

echo "✅ Secrets cargados exitosamente en el repositorio remoto"
