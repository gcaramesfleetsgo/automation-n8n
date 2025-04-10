# 🛠️ Scripts de automatización

Este directorio contiene scripts auxiliares para configurar y mantener el entorno de `automation-n8n`.

## ⚙️ `setup-deploy.sh`

Este script te permite cargar automáticamente los **secrets necesarios para el despliegue automático** en GitHub Actions.

### 🔐 Secrets que configura

- `GCP_VM_IP`: IP pública de tu instancia en Google Cloud
- `GCP_VM_USER`: nombre de usuario SSH
- `GCP_SSH_PRIVATE_KEY`: clave privada SSH que permite la conexión

> ⚠️ Asegurate de tener la clave privada en `~/.ssh/id_ed25519` antes de ejecutar el script.

### 📦 Requisitos

- Tener instalada la CLI de GitHub (`gh`)
- Estar autenticado (`gh auth login`)
- Tener acceso de escritura al repositorio de GitHub

### 🚀 Cómo usarlo

```bash
cd scripts/
chmod +x setup-deploy.sh
./setup-deploy.sh
```
