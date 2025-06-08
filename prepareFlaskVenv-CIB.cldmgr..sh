#!/bin/bash
# ============================================================================
# FLASK PROJECT VENV PREPARATION
# Author: Matteo GEROSA
# Version: 2025-03-15
# ============================================================================

clear
echo
echo "Preparazione Python Virtual Environment (VENV) per il nuovo Progetto Flask:"
echo
read -p "Premi INVIO per continuare..."

# ============================================================================
# Carica variabili di ambiente dallo script setEnv-CIB.sh
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/setEnv-CIB.cldmgr.sh"

# ============================================================================
# Controllo esistenza della directory di progetto
if [ ! -d "$FLASK_PRJ_HOME" ]; then
    echo "❌ Errore: la directory del progetto non esiste: $FLASK_PRJ_HOME"
    exit 1
fi

cd "$FLASK_PRJ_HOME"
echo
echo "Working-directory corrente:"
pwd
echo

# ============================================================================
# Creazione del Virtual Environment
echo
echo "Costruzione Python Virtual Environment (VENV) per il nuovo Progetto:"
echo "(Attendere: lo step può richiedere alcuni secondi…)"
echo

python3 -m venv "$VENV_HOME/$PRJ_NAME"

# ============================================================================
# Attivazione del Virtual Environment
echo
echo "Lancio ed entrata in VENV appena preparato:"
echo

source "$VENV_CMD_HOME/activate"

# ============================================================================
# Installazione dei pacchetti Python richiesti
echo
echo "Installazione Flask e librerie necessarie nel venv:"
echo

python -m pip install --upgrade pip
python -m pip install \
    flask \
    firebase-admin \
    python-dotenv \
    flask-swagger-ui \
    flasgger \
    requests \
    flask_restful

# ============================================================================
# Avvio del server Flask per testare l’installazione
echo
echo "Lancio FLASK per testing installazione per il nuovo Progetto:"
echo

flask run --port=$FLASK_PORT
# ALSO: python -m flask run --port=$FLASK_PORT

# ============================================================================
