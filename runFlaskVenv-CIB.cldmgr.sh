#!/bin/bash
# ============================================================================
# FLASK PROJECT VENV LAUNCH
# Author: Matteo GEROSA
# Version: 2025-02-17
# ============================================================================

clear
echo
echo "Lancio Flask in Virtual Environment (VENV):"
echo
read -p "Premi INVIO per continuare..."

# ============================================================================
# Caricamento variabili ambiente
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/setEnv-CIB.cldmgr.sh"
# source "$SCRIPT_DIR/setenv-dev-DB.sh"  # <- attivabile in futuro se necessario

# ============================================================================
# Navigazione nella directory del progetto
if [ ! -d "$FLASK_PRJ_HOME" ]; then
    echo "❌ Errore: directory progetto non trovata: $FLASK_PRJ_HOME"
    exit 1
fi

cd "$FLASK_PRJ_HOME"
echo
echo "Working-directory corrente:"
pwd
echo

# ============================================================================
# Attivazione del virtual-env
echo
echo "Lancio ed entrata in VENV - Progetto \"$PRJ_NAME\" ($PRJ_NICKNAME):"
echo

source "$VENV_CMD_HOME/activate"

# ============================================================================
# Lancio Flask
echo
echo "Lancio FLASK - Progetto \"$PRJ_NAME\" ($PRJ_NICKNAME):"
echo

flask run --port=$FLASK_PORT

# Alternativa:
# python -m flask run --port=$FLASK_PORT

echo
read -p "Premi INVIO per terminare..."
echo

# ============================================================================
